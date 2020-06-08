package com.jsinc.jsincDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsinc.jsincDTO.ToDoListDTO;

@Repository
public class ToDoListDAO {
	private static final String namespace = "com.jsinc.mybatis.todoList";
	@Autowired
	private SqlSession sqlSession;
	
	public List<ToDoListDTO> list(ToDoListDTO dto){
		return sqlSession.selectList(namespace + ".listAll", dto);
	}

}
