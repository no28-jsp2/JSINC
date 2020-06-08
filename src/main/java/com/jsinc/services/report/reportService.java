package com.jsinc.services.report;

import com.jsinc.jsincDTO.ReportDTO;

public interface reportService {

	public void reportWrite(ReportDTO dto);
	
	public ReportDTO read(int bno);
	
	public void update(ReportDTO dto);
	
	public void delete(int bno);
	
	
}
