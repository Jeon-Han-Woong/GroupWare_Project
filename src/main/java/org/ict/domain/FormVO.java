package org.ict.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class FormVO {

	private Integer fno;
	private String fname;
	private String finfo;
	private Date regdate;
	private boolean state;
}
