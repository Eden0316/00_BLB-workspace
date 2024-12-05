package com.mig.blb.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor // 기본생성자
@AllArgsConstructor // 모든 매개변수 생성자 
@Setter // setter 메소드들 
@Getter // getter 메소드들
@ToString // toString 메소드
public class Member {
	
	// 필드부
	private String memberId;		//	MEMBER_ID	VARCHAR2(20 BYTE)
	private String memberName;		//	MEMBER_NAME	VARCHAR2(20 BYTE)
	private String memberPwd;		//	MEMBER_PWD	VARCHAR2(150 BYTE)
	private String phone;			//	PHONE	CHAR(11 BYTE)
	private String email;			//	EMAIL	VARCHAR2(30 BYTE)
	private String birthdate;		//	BIRTHDATE	DATE
	private Date createDate;		//	CREATE_DATE	DATE
	private Date deleteDate;		//	DELETE_DATE	DATE
	private String status;			//	STATUS	CHAR(1 BYTE)
	private String totalPoints;		//	TOTAL_POINTS	NUMBER
	private String currentPoints;	//	CURRENT_POINTS	NUMBER
	private String gradeName;		//	GRADE_NAME	VARCHAR2(20 BYTE)
			
	
	
}