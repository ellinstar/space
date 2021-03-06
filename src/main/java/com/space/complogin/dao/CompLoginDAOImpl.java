package com.space.complogin.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.space.comp.vo.CompVO;
import com.space.complogin.vo.CompLoginVO;

@Repository
public class CompLoginDAOImpl {

	@Autowired
	private SqlSession session;
	
	public CompLoginVO cp_IdSelect(String cp_Id) {
		return session.selectOne("cp_IdSelect", cp_Id);
	}
	public CompLoginVO compLoginSelect(CompLoginVO lvo) {
		return (CompLoginVO) session.selectOne("compLoginSelect", lvo);
	}
	public CompLoginVO compLoginSelect2(CompLoginVO lvo) {
		return (CompLoginVO) session.selectOne("compLoginSelect2", lvo);
	}
	public int compLoginHistoryInsert(CompLoginVO lvo) {
		return session.insert("compLoginHistoryInsert", lvo);
	}
	public int compLoginHistoryUpdate(CompLoginVO lvo) {
		return session.update("compLoginHistoryUpdate", lvo);
	}
	public CompLoginVO compLoginHistorySelect(String cp_Id) {
		return (CompLoginVO) session.selectOne("compLoginHistorySelect", cp_Id);
	}
	public CompVO comp(String cp_Id) {
		return (CompVO) session.selectOne("comp2", cp_Id);
	}
	

}
