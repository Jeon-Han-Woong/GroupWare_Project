package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class MessageVO {

	private Integer msgno;
	private Integer sendmno;
	private Integer takemno;
	private String mname;
	private String msgtitle;
	private String msgcontent;
	private Integer readchk;
	private Date senddate;
	private boolean existtake;
	private boolean existsend;
	
}
