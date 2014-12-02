package org.han.web;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.UUID;

import javax.imageio.ImageIO;
import javax.inject.Inject;

import org.han.service.BookService;
import org.han.service.PageService;
import org.han.vo.BookVO;
import org.han.vo.PageVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/book/*")
public class BookController {

	private static Logger logger = LoggerFactory.getLogger("UploadTest");
	
	static String UPLOAD_DIR = "c:\\han\\";
	
	private boolean isImage(String fileName, String suffix) {

		if (suffix.contains(".jpg")) {
			return true;
		}
		return false;
	}

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
	
	@Inject
	PageService bookService;
	
	@Inject
	BookService service;
	
	@RequestMapping("/main")
	public void search(@RequestParam(value="listArr", defaultValue="")String[] list){
		
		/*@RequestMapping("/read")
		public void read(@RequestParam(value="typeArr", defaultValue="")String[] types,
				@ModelAttribute PageMaker pm, Model model){
			pm.setTypeArr(types);
			model.addAttribute("read", service.read(pm));
		}*/
		
	}
	@RequestMapping("/regist")
	public void regist(){
		
	}
	
	@RequestMapping("/registdata")
	public String createdate(@ModelAttribute BookVO vo){
		vo.setUserid("han03");
		System.out.println(vo.toString());
		service.create(vo);
		return "redirect:main";
	}
	

	@RequestMapping(value ="/book/upload", produces="text/html; charset=UTF-8")@ResponseBody
	public String uploadFile(MultipartFile contfile) throws Exception {
		
		if (contfile.isEmpty()) {
			return "NONE";
		}

		byte[] buffer = new byte[1024 * 8];
		String fileName = UUID.randomUUID() + "_" + contfile.getOriginalFilename();

		String suffix = fileName.substring(fileName.lastIndexOf("."));

		logger.info("SUFFIX :" + suffix);
		logger.info("FileName : "+fileName);

		InputStream in = contfile.getInputStream();

		File uploadedFile = new File(UPLOAD_DIR + fileName);

		OutputStream fos = new FileOutputStream(uploadedFile);

		while (true) {
			int count = in.read(buffer);
			if (count == -1) {
				break;
			}
			fos.write(buffer);
			
		}

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
		
		logger.info(str);

		return str;
	}
			
	/*@RequestMapping(value = "/view/{path}", produces = "image/jpeg")
	public @ResponseBody byte[] viewFile(@PathVariable("path") String path)*/
	@RequestMapping(value = "/view/{path}", produces = "image/jpeg")
	public @ResponseBody byte[] viewFile(@RequestParam("path") String path)
			throws Exception {

		ByteArrayOutputStream bos = new ByteArrayOutputStream();

		byte[] buffer = new byte[1024 * 8];

		InputStream fin = new FileInputStream(UPLOAD_DIR + path + ".jpg");

		while (true) {
			int count = fin.read(buffer);
			if (count == -1) {
				break;
			}
			bos.write(buffer, 0, count);
		}
		fin.close();

		return bos.toByteArray();
	}
	
	@RequestMapping("/regphoto")
	public void regPhoto(){
		
	}

	
	
	
	@RequestMapping("/sample")	
	public void sample(){}
	
	@RequestMapping("/sample/list")
	public @ResponseBody List<PageVO> serviceList(
			@RequestParam(value = "page", defaultValue = "1")int page){
		return bookService.readPage(page);
	}
	
	@RequestMapping("/regphoto/select")
	public @ResponseBody List<BookVO> selectBook(){
		return bookService.selectBook();
	}
	
	@RequestMapping("/createPicture")
	public String createPicture(@ModelAttribute PageVO vo){
		/*vo.setContfile("null");*/
//		vo.setBno(2);
		vo.setUserid("han07");
		System.out.println(vo.toString());
		bookService.createPicture(vo);;
		return "redirect:main";
	}
	

}
