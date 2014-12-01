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

/*	private final static String UPLOAD_DIR = "E:\\zzz\\";*/
	private final static String UPLOAD_DIR = "E:\\workspace-sts-3.6.1.RELEASE\\Threejs_V01\\src\\main\\webapp\\resources\\book\\images\\";
	
	
	private void createThumbnail(File origin) throws Exception {

		BufferedImage originalImage = ImageIO.read(origin);
		BufferedImage thumbnailImage = new BufferedImage(
				originalImage.getWidth() / 2, originalImage.getHeight() / 2,
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

		if (file.isEmpty()) {
			return "NONE";
		}

		byte[] buffer = new byte[1024 * 8];
		String fileName = UUID.randomUUID() + "_" + file.getOriginalFilename();

		// �ѱ� ���� ó��
		fileName = new String(fileName.getBytes("8859_1"), "UTF-8");
		String suffix = fileName.substring(fileName.lastIndexOf("."));

		logger.info("SUFFIX :" + suffix);

		InputStream in = file.getInputStream();

		File uploadedFile = new File(UPLOAD_DIR + fileName);

		OutputStream fos = new FileOutputStream(uploadedFile);
		buffer(in, fos);
		fos.flush();
		fos.close();

		logger.info("-------------------");
		logger.info(fileName);
		logger.info("-------------------");

		boolean isImage = isImage(fileName, suffix);
		if (isImage) {
			createThumbnail(uploadedFile);
		}

		String jsObjStr = "{fileName:'" + fileName + "',isImage:" + isImage
				+ ", suffix:'" + suffix + "'}";

		String str = "<script>parent.updateResult(" + jsObjStr + ");</script>";
		logger.info("str���� : " + fileName);
		return str;

	}

	// "application/octet-stream" ����Ÿ�� ������� ������ �ٿ�ε� �ޱ�
	@RequestMapping(value = "/down", produces = { "application/octet-stream" })
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
	public @ResponseBody byte[] viewFile(@PathVariable("path") String path)
			throws Exception {

		logger.info("view: " + path);
		ByteArrayOutputStream bos = new ByteArrayOutputStream();
		InputStream fin = new FileInputStream(UPLOAD_DIR + path + ".jpg");
		buffer(fin, bos);
		return bos.toByteArray();
	}

	public void buffer(InputStream fin, OutputStream fos) throws Exception {

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

		if (suffix.contains(".jpg")) {
			return true;
		}
		return false;
	}

}