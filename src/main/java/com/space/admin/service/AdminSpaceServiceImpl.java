package com.space.admin.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.space.admin.dao.AdminSpaceDAO;
import com.space.space.vo.SpaceVO;

@Service("AdminSpaceService")
@Transactional
public class AdminSpaceServiceImpl implements AdminSpaceService {
	
	@Resource(name="adminSpaceDAO")
	private AdminSpaceDAO adminSpaceDao;

	@Override
	public List<SpaceVO> adspaceList(SpaceVO svo) {
		// TODO Auto-generated method stub
		List<SpaceVO> adspaceList = null;
		adspaceList = adminSpaceDao.adspaceList(svo);
		return adspaceList;
	}

	@Override
	public List<SpaceVO> spNewList() {
		// TODO Auto-generated method stub
		List<SpaceVO> spNewList = adminSpaceDao.spNewList();
		return spNewList;
	}
	@Override
	public List<SpaceVO> spMainList() {
		// TODO Auto-generated method stub
		List<SpaceVO> spMainList = adminSpaceDao.spMainList();
		return spMainList;
	}

	@Override
	public SpaceVO spaceDetail(int sp_Num) {
		// TODO Auto-generated method stub
		SpaceVO detail = adminSpaceDao.spaceDetail(sp_Num);
		return detail;
	}

	@Override
	public int spOk(int sp_Num) {
		// TODO Auto-generated method stub
		int result = adminSpaceDao.spOk(sp_Num);
		return result;
	}

}
