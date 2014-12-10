package org.han.web;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Array;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("han/file/*")
public class AttachController {

	private static final Logger logger = LoggerFactory
			.getLogger(AttachController.class);

	private final static String UPLOAD_DIR = "C:\\han\\";
/*	private final static String UPLOAD_DIR = 
			"E:\\workspace-sts-3.6.1.RELEASE\\Threejs_V01\\src\\main\\webapp\\resources\\book\\images\\";*/
	
	
	private void createThumbnail(File origin) throws Exception {
		// Thumbnail 이미지를 만들어 줌.
		BufferedImage originalImage = ImageIO.read(origin);
		BufferedImage thumbnailImage = new BufferedImage(
				(originalImage.getWidth() * 0)+100, (originalImage.getHeight() * 0)+100,
				BufferedImage.TYPE_INT_RGB);

		Graphics2D g = thumbnailImage.createGraphics();
		g.drawImage(originalImage, 0, 0, thumbnailImage.getWidth(),
				thumbnailImage.getHeight(), null);

		File outputFile = new File(UPLOAD_DIR + "s_" + origin.getName());

		ImageIO.write(thumbnailImage, "jpg", outputFile);
	}

	
	// 한글깨짐 처리 produces="text/html;charset=UTF-8"
	@RequestMapping(value = "/upload", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String uploadFile(MultipartFile file) throws Exception {
		//upload URL로 오면 file이름을 받아서 위에 설정한 경로로 upload를 시킴.
		
		if (file.isEmpty()) {
			return "NONE";
			// file의 객체내용이 비어있으면 NONE이라는 문자열로 Return한다.
		}

		byte[] buffer = new byte[1024 * 8];
		// 8MB의 buffer를 만들음.
		String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();
		// uuid_filename의 형태로 filename을 문자열 값으로 저장해줌.
		
		// 한글 깨짐 처리
//		fileName = new String(fileName.getBytes("8859_1"), "UTF-8");
		String suffix = fileName.substring(fileName.lastIndexOf("."));
		// 확장명을 판단하기 위해서 filename의 .뒷부분을 잘라서 확장명을 가져온다.
		
//		logger.info(fileName);
//		logger.info("SUFFIX :" + suffix);
		// 확장명을 logger로 찍어 확인해본다.
		
		InputStream in = file.getInputStream();
		// file input stream을 in이라는 변수로 선언.
		
		File uploadedFile = new File(UPLOAD_DIR + fileName);
		// File 타입의 uploadedFile 변수를 경로 + uuid + filename을 합친다. 
		
		OutputStream fos = new FileOutputStream(uploadedFile);
		// output stream 빨대를 만들어줌.
		
		buffer(in, fos);
		// buffer 함수는 inputStream과 outputStream을 받아서 파일을 전송해줌.
		fos.flush();
		fos.close();
		// 해당경로로  빨대를 꽂아 밀어넣어주고 close처리해줌.
		
//		logger.info("-------------------");
//		logger.info(fileName);
//		logger.info("-------------------");

		boolean isImage = isImage(fileName, suffix);
		// boolean타입의 변수 isImage에 파일이름과 확장명을 통해서 받은 파일이 jpg 파일인지 확인해줌.
		if (isImage) {
			// isImage가 true면 jpg이므로 Thumbnail을 만들어줌.
			createThumbnail(uploadedFile);
		}

		// 
		String jsObjStr = "{fileName:'" + fileName + "',isImage:" + isImage
				+ ", suffix:'" + suffix + "'}";

		String str = "<script>parent.updateResult(" + jsObjStr + ");</script>";
//		logger.info("str위에 : " + fileName);
		return str;
	}

	
	
	// "application/octet-stream" 마임타입 상관없이 무조건 다운로드 받기
	@RequestMapping(value = "/down", produces = {"application/octet-stream"})
	public @ResponseBody byte[] downFile(
			@RequestParam(value = "src", defaultValue = "") String path,
			HttpServletResponse response) throws Exception {

		if (path.equals("")) {
			return null;
		}

		// 다운받을 파일 이름에서 UUID 제거하기
		int last = path.length();
		int first = path.indexOf("_") + 1;
		String fileName = path.substring(first, last);

		// 다운받을 파일 이름 지정해 주기
		response.addHeader("Content-Disposition", "attachment; filename ="
				+ fileName);
		
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		InputStream fin = new FileInputStream(UPLOAD_DIR + path);
		buffer(fin, bos);

		return bos.toByteArray();
	}
	
	
	
	@RequestMapping(value = "/regphoto/{path}", produces = "image/jpeg")
	public @ResponseBody byte[] viewFile(@PathVariable("path") String path) throws Exception {
		
//		logger.info("regphoto/path : " + path);
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		InputStream fin = new FileInputStream(UPLOAD_DIR + path + ".jpg");
		buffer(fin, bos);
		return bos.toByteArray();
	}

	public void buffer(InputStream fin, OutputStream fos) throws Exception {
		// InputStream, OutputStream을 받아서 밀어넣어줌.
		byte[] buffer = new byte[1024 * 8];

		while (true) {
			int count = fin.read(buffer);
			if (count == -1) {
				break;
			}
			fos.write(buffer, 0, count);
		}
		fin.close();

	}

	private boolean isImage(String fileName, String suffix) {
		// fileName과 suffix(확장명)을 받아서 jpg파일인지 아닌지 비교해줌.
		if (suffix.contains(".jpg")) {
			return true;
		}
		return false;
	}

}