package com.jsinc.services.report;

import java.util.List;

import com.jsinc.jsincDTO.ReportDTO;

public interface reportService {

	public void reportWrite(ReportDTO dto) throws Exception;
	
	public ReportDTO read(int bno) throws Exception;
	
	public void update(ReportDTO dto) throws Exception;
	
	public void delete(int bno) throws Exception;
	
	public List<ReportDTO> listAll() throws Exception;
}
