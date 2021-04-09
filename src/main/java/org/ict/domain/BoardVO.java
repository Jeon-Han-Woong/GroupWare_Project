package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class BoardVO {
	private Integer bno;
	private Integer fno;
	private String fname;
	private String btitle;
	private String bcontent;
	private Integer mno;
	private String mname;
	private String deptname;
	private Date bwrite_date;
	private String bsigner;
	private Date bsign_date;
	private Integer signstate;
}
