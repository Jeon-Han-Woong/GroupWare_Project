package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class GeneralVO {

	private Long bno;
	private Long fno;
	private String btitle;
	private String bcontent;
	private Long mno;
	private String bwriter;
	private Date bwrite_date;
	private String bsigner;
}
