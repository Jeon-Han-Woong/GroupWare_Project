package org.ict.domain;

import lombok.Data;

@Data
public class LoginDTO {

	private Integer mno;
	private String mpwd;
	private boolean useCookie;
}
