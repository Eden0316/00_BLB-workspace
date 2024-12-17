package com.mig.blb.helpdesk.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.mig.blb.helpdesk.model.vo.InquiryReply;

@Repository
public class InquiryReplyDao {

	public ArrayList<InquiryReply> selectInquiryReplyList(SqlSessionTemplate sqlSession, int ino) {
		// select 문 (여러행) : selectList 메소드
		return (ArrayList)sqlSession.selectList("helpdeskMapper.selectInquiryReplyList", ino);
	}

	public int insertInquiryReply(SqlSessionTemplate sqlSession, InquiryReply r) {
		// insert 문 : insert 메소드
		return sqlSession.insert("helpdeskMapper.insertInquiryReply", r);
	}
	
}
