package org.ict.domain;

import java.sql.Date;
import lombok.Data;

@Data
public class MemberVO {

	private Integer mno;
	private String mname;
	private String mpwd;
	private String memail;
	private Date hiredate;
	private Integer deptno;
	private String deptname;
	private String position;
	private String mpnum;
	private String maddress;
	private Date mbirth;
	private Integer gender;
	private Integer marry;
	private Integer military;
	private Integer vacachk;
	private Integer vacarem;
	private boolean state;
	private boolean manager;
	private String sessionId;
	private String sessionLimit;
}
