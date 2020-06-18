package com.jsinc.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsinc.jsincDTO.ReportDTO;
import com.jsinc.services.report.reportService;

@Controller
public class ReportController {
	
	@Autowired
	reportService rs;
	
	ApplicationContext ac = App.ac;
	
	
	@RequestMapping("report")
	public ModelAndView listAll() throws Exception{
		List<ReportDTO> list = rs.listAll();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("report/report");
		mav.addObject("report",list);
		return mav;
	}
	@RequestMapping("writeReport")
	public String writeReport() {
		return "report/writeReport";
	}
	@RequestMapping(value = "rpWrite" , method = RequestMethod.POST)
	public String write(@ModelAttribute ReportDTO dto) throws Exception{
		rs.reportWrite(dto);
		return "redirect:report";
	}
	@RequestMapping("contentReport")
	public ModelAndView contentReport(@RequestParam int bno) throws Exception{
		ReportDTO dto = rs.read(bno);
		String title = dto.getTitle();
		String content = dto.getContent();
		String writer = dto.getWriter();
		// *태그문자 처리 (< ==> &lt; > ==> &gt;)
		// replace(A, B) A를 B로 변경
		title = title.replace("<", "&lt;");
		title = title.replace("<", "&gt;");
		writer = writer.replace("<", "&lt;");
		writer = writer.replace("<", "&gt;");
		// * 공백문자 처리
		title = title.replace("  ", "&nbsp;&nbsp;");
		writer = writer.replace("  ", "&nbsp;&nbsp;");
		// * 줄바꿈 문자처리
		content = content.replace("\n", "<br>");
		dto.setTitle(title);
		dto.setContent(content);
		dto.setWriter(writer);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("report/contentReport");
		mav.addObject("rp", dto);
		return mav;
	}
	@RequestMapping(value="updateRp",method = RequestMethod.POST)
	public String update(@ModelAttribute ReportDTO dto) throws Exception {
		rs.update(dto);
		return "redirect:contentReport?bno="+dto.getBno();
	}
	@RequestMapping("deleteRp")
	public String delete(@RequestParam int bno) throws Exception {
		rs.delete(bno);
		return "redirect:report";
	}
	@RequestMapping("updateReport")
	public ModelAndView updateReport(@RequestParam int bno) throws Exception{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("report/updateReport");
		mav.addObject("rp",rs.read(bno));
		return mav;
	}
	
	
	
}
