package com.space.comp.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.space.comp.vo.CompSecurity;
import com.space.comp.vo.CompVO;
import com.space.reserv.vo.ReservVO;

@Repository
public class CompDAOImpl implements CompDAO {

	@Autowired
	private SqlSession session;

	public int compsecurityInsert(CompSecurity set) {
		return session.insert("compsecurityInsert", set);
	}

	public CompSecurity compsecuritySelect(String cp_Id) {
		return (CompSecurity) session.selectOne("compsecuritySelect", cp_Id);
	}

	public int compsecurityDelete(String cp_Id) {
		return session.delete("compsecurityDelete", cp_Id);
	}

	public CompVO compSelect(String cp_Id) {
		return (CompVO) session.selectOne("compSelect", cp_Id);
	}

	public CompVO compSelect2(String cp_Bnum) {
		return (CompVO) session.selectOne("compSelect2", cp_Bnum);
	}

	public int compInsert(CompVO cvo) {
		return session.update("compInsert", cvo);
	}

	public int compUpdate(CompVO cvo) {
		return session.update("compUpdate", cvo);
	}

	public int compDelete(String cp_Id) {
		return session.delete("compDelete", cp_Id);
	}

	// 아이디 찾기
	public CompVO findComp(CompVO cvo) {
		return session.selectOne("findComp", cvo);
	}

	// 비밀번호 변경할 회원정보 확인
	public CompVO compPwChange(CompVO cvo) {
		return session.selectOne("compPwChange", cvo);
	}

	public int compPwChange2(CompVO cvo) {
		return session.update("compPwChange2", cvo);
	}

	public int compSecurityUpdate(CompSecurity sec) {
		System.out.println("CompDAOImpl - securityUpdate 메소드 호출");
        return session.update("compSecurityUpdate", sec);
	}

	public List<ReservVO> compReservList(CompVO cvo) {
		return session.selectList("compReservList",cvo);
	}

	public void reservStateUpdate(ReservVO rvo) {
		session.update("reservStateUpdate",rvo);
	}
	
	public void reservStateUpdate2(ReservVO rvo) {
		session.update("reservStateUpdate2",rvo);
	}

	
	
}
