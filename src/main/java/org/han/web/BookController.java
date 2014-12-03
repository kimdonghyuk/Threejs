package org.han.web;

import java.util.List;

import javax.inject.Inject;

import org.han.service.BookService;
import org.han.service.PageService;
import org.han.vo.BookVO;
import org.han.vo.PageVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/book/*")
public class BookController {

   private static Logger logger = LoggerFactory.getLogger("UploadTest");
   
   static String UPLOAD_DIR = "c:\\han\\";
   
   @Inject
   PageService bookService;
   
   @Inject
   BookService service;

   @RequestMapping("/main")
   public void search(){}
   
   @RequestMapping("/main/list")
   public @ResponseBody List<BookVO> mainlist(
         @RequestParam(value ="page", defaultValue = "1")String page){
      
      return service.read(page);
   }
   
   @RequestMapping("/main/delete")
   public @ResponseBody void deleteDogam(int bno){
	   service.delete(bno);
   }
   
   @RequestMapping("/regist")
   public void regist(){}
   
   @RequestMapping("/registdata")
   public String createdate(@ModelAttribute BookVO vo){
      vo.setUserid("han07");
      service.create(vo);
      return "redirect:main";
   }      
   
   @RequestMapping("/regphoto")
   public void regPhoto(){}
   
	@RequestMapping("/regphoto/select")
	public @ResponseBody List<BookVO> selectBook(){
		return bookService.selectBook();
	}   
   
   
   @RequestMapping("/sample")
   public void sample(@RequestParam(value="bno", defaultValue="2") int bno, Model model){
	   model.addAttribute("number",bno);
   }
   
//   @RequestMapping("/sample/list")
//   public @ResponseBody List<PageVO> serviceList(
//         @RequestParam(value = "page", defaultValue = "1")int page,
//         @RequestParam(value = "bno", defaultValue = "2")int bno){
//      return bookService.readPage(page,bno);
//   }
   
   @RequestMapping("/sample/list")
   public @ResponseBody List<PageVO> serviceList(@ModelAttribute PageVO vo){
      return bookService.readPage(vo);
   }
   
   @RequestMapping("/sample/delete")
   public @ResponseBody void deletePicture(int pno){
	   bookService.deletePage(pno);
   }
   
   @RequestMapping("/sample/update")
   public @ResponseBody void updatePicture(@ModelAttribute PageVO vo){
	   bookService.updatePage(vo);
   }
   
   @RequestMapping("/createPicture")
   public String createPicture(@ModelAttribute PageVO vo){
      /*vo.setContfile("null");*/
//      vo.setBno(2);
      vo.setUserid("han07");
      bookService.createPicture(vo);;
      return "redirect:main";
   }

}