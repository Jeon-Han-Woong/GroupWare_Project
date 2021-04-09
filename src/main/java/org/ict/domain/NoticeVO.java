package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class NoticeVO {
	private Integer nno;
	private Integer fno;
	private String fname;
	private String ntitle;
	private String ncontent;
	private Integer mno;
	private String mname;
	private Date nwrite_date;
	private String deptname;

}
