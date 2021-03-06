package com.space.admin.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.space.admin.dao.AdminCompDAO;
import com.space.comp.vo.CompVO;

@Service("AdminCompService")
@Transactional
public class AdminCompServiceImpl implements AdminCompService {
	
	@Resource(name="adminCompDAO")
	private AdminCompDAO adminCompDao;

	@Override
	public List<CompVO> compList(CompVO cvo) {
		// TODO Auto-generated method stub
		List<CompVO> compList = null;
		compList = adminCompDao.compList(cvo);
		return compList;
	}

	@Override
	public List<CompVO> cpNewList() {
		// TODO Auto-generated method stub
		List<CompVO> cpNewList = adminCompDao.cpNewList();
		return cpNewList;
	}
	@Override
	public List<CompVO> cpMainList() {
		// TODO Auto-generated method stub
		List<CompVO> cpMainList = adminCompDao.cpMainList();
		return cpMainList;
	}

	@Override
	public CompVO compDetail(int cp_num) {
		// TODO Auto-generated method stub
		CompVO detail = adminCompDao.compDetail(cp_num);
		return detail;
	}

	@Override
	public int compOk(int cp_Num) {
		// TODO Auto-generated method stub
		int result = adminCompDao.compOk(cp_Num);
		return result;
	}
	//메일 보내기 
	@Override
	public Map<String, Object> cpMail() {
		// TODO Auto-generated method stub
		Map<String, Object> cpMail = adminCompDao.cpMail();
		return cpMail;
	}

}
