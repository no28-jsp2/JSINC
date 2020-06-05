package com.jsinc.services.board;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.jsinc.jsincDAO.BoardDAO;
import com.jsinc.jsincDTO.BoardDTO;
@Service
public class boardServiceImpl implements boardService{

	
	
	@Inject
	BoardDAO dao;
	
	//게시글 작성
	@Override
	public void create(BoardDTO dto) throws Exception {
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
		dao.create(dto);
	}
	//게시글 상세보기
	@Override
	public BoardDTO view(int bno) throws Exception {
		return dao.view(bno);
	}
	//게시글 수정
	@Override
	public void update(BoardDTO dto) throws Exception {
		dao.update(dto);
	}
	//게시글 삭제
	@Override
	public void delete(int bno) throws Exception {
		dao.delete(bno);
	}
	//게시글 전체 목록
	@Override
	public List<BoardDTO> listAll() throws Exception {
		return dao.list();
	}

}
