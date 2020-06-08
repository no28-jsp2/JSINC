package com.jsinc.controllers;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.UploadContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.jsinc.jsincDTO.BoardDTO;
import com.jsinc.services.board.boardService;
import com.jsinc.services.board.referenceService;

@Controller
public class BoardController {
	@Resource(name="uploadPath")
	private String uploadPath;
	
	ApplicationContext ac = App.ac;
	
	@Inject
	referenceService rs;
	
	@Autowired
	boardService bs;

	@RequestMapping("allCompanyBoard")
	public ModelAndView allCompany() throws Exception{
		List<BoardDTO> list = bs.listAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/allCompany");
		mav.addObject("board",list);
		return mav;
	}
	
	@RequestMapping("writeBoard")
	public String moveWrite() {
		return "board/writeBoard";
	}
	
	@RequestMapping(value="write", method=RequestMethod.POST)
	public String acWrite(@ModelAttribute BoardDTO dto ) throws Exception{
		
		bs.create(dto);
		return "redirect:allCompanyBoard";
	}
	
	
	@RequestMapping("department")
	public String department() {
		
		return "department";
	}
	@RequestMapping("referenceBoard")
	public ModelAndView reference() throws Exception {
		List<BoardDTO> list = rs.fileListAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/reference");
		mav.addObject("reference",list);
		
		
		return mav;
	}
	@RequestMapping("upload")
	public String upload() {
		return "board/upload";
	}
	
	@RequestMapping(value="uploadWrite",method = RequestMethod.POST)
	public String uploadWrite(@ModelAttribute BoardDTO dto, MultipartFile file_0) throws Exception {
		
				//업로드
				UUID uuid = UUID.randomUUID(); //파일 이름 중복 방지
				String saveName = uuid + "_" + file_0.getOriginalFilename(); //UUID가 붙은 파일이름을 객체에 저장
				String realName = file_0.getOriginalFilename();
				File saveFile = new File(uploadPath+File.separator+"files",saveName);//저장할 폴더 이름 , 저장할 파일 이름
				try {
				file_0.transferTo(saveFile); // 업로드 파일에 saveFile이라는 껍데기 입히기
				}catch (Exception e) {
					e.printStackTrace();
					return null;
				}
				dto.setSavefile(File.separator+"files"+File.separator+saveName);
				dto.setRealfile(realName);
				rs.create(dto);
				
				return "redirect:referenceBoard";
	}
	@RequestMapping("refContent")
	public ModelAndView reqContent(@RequestParam int bno)throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("board/refContent");
		mav.addObject("board",rs.fileView(bno));
		return mav;
	}
	
	@RequestMapping("fileDownload")
	public ModelAndView download(@RequestParam int bno) throws Exception {
		
		BoardDTO dto = rs.fileView(bno);
		String realName = dto.getRealfile();
		String save = dto.getSavefile();
		String fullPath = uploadPath+save;
		
		save = new String(save.getBytes("iso-8859-1"),"UTF-8");
		realName = new String(realName.getBytes("iso-8859-1"),"UTF-8");
		
		File file = new File(fullPath);
		File file2 = new File(realName);
		
		//File downloadFile = new File(uploadPath + save);
		
		ModelAndView mav = new ModelAndView();
			mav.setViewName("fileDownload");
			mav.addObject("downloadFile",file);
			mav.addObject("realFileName",file2);
			
			if(!file.exists()) {
				return null;
			}
		
		return mav;
				//new ModelAndView("fileDownload", "downloadFile", downloadFile);
		
	}


	
}
