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
		// Thumbnail �̹����� ����� ��.
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

	
	// �ѱ۱��� ó�� produces="text/html;charset=UTF-8"
	@RequestMapping(value = "/upload", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String uploadFile(MultipartFile file) throws Exception {
		//upload URL�� ���� file�̸��� �޾Ƽ� ���� ������ ��η� upload�� ��Ŵ.
		
		if (file.isEmpty()) {
			return "NONE";
			// file�� ��ü������ ��������� NONE�̶�� ���ڿ��� Return�Ѵ�.
		}

		byte[] buffer = new byte[1024 * 8];
		// 8MB�� buffer�� ������.
		String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();
		// uuid_filename�� ���·� filename�� ���ڿ� ������ ��������.
		
		// �ѱ� ���� ó��
//		fileName = new String(fileName.getBytes("8859_1"), "UTF-8");
		String suffix = fileName.substring(fileName.lastIndexOf("."));
		// Ȯ����� �Ǵ��ϱ� ���ؼ� filename�� .�޺κ��� �߶� Ȯ����� �����´�.
		
//		logger.info(fileName);
//		logger.info("SUFFIX :" + suffix);
		// Ȯ����� logger�� ��� Ȯ���غ���.
		
		InputStream in = file.getInputStream();
		// file input stream�� in�̶�� ������ ����.
		
		File uploadedFile = new File(UPLOAD_DIR + fileName);
		// File Ÿ���� uploadedFile ������ ��� + uuid + filename�� ��ģ��. 
		
		OutputStream fos = new FileOutputStream(uploadedFile);
		// output stream ���븦 �������.
		
		buffer(in, fos);
		// buffer �Լ��� inputStream�� outputStream�� �޾Ƽ� ������ ��������.
		fos.flush();
		fos.close();
		// �ش��η�  ���븦 �Ⱦ� �о�־��ְ� closeó������.
		
//		logger.info("-------------------");
//		logger.info(fileName);
//		logger.info("-------------------");

		boolean isImage = isImage(fileName, suffix);
		// booleanŸ���� ���� isImage�� �����̸��� Ȯ����� ���ؼ� ���� ������ jpg �������� Ȯ������.
		if (isImage) {
			// isImage�� true�� jpg�̹Ƿ� Thumbnail�� �������.
			createThumbnail(uploadedFile);
		}

		// 
		String jsObjStr = "{fileName:'" + fileName + "',isImage:" + isImage
				+ ", suffix:'" + suffix + "'}";

		String str = "<script>parent.updateResult(" + jsObjStr + ");</script>";
//		logger.info("str���� : " + fileName);
		return str;
	}

	
	
	// "application/octet-stream" ����Ÿ�� ������� ������ �ٿ�ε� �ޱ�
	@RequestMapping(value = "/down", produces = {"application/octet-stream"})
	public @ResponseBody byte[] downFile(
			@RequestParam(value = "src", defaultValue = "") String path,
			HttpServletResponse response) throws Exception {

		if (path.equals("")) {
			return null;
		}

		// �ٿ���� ���� �̸����� UUID �����ϱ�
		int last = path.length();
		int first = path.indexOf("_") + 1;
		String fileName = path.substring(first, last);

		// �ٿ���� ���� �̸� ������ �ֱ�
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
		// InputStream, OutputStream�� �޾Ƽ� �о�־���.
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
		// fileName�� suffix(Ȯ���)�� �޾Ƽ� jpg�������� �ƴ��� ������.
		if (suffix.contains(".jpg")) {
			return true;
		}
		return false;
	}

}