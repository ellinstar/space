package com.space.admin.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.space.admin.dao.AdminQnaDaoImpl;
import com.space.admin.page.Criteria;
import com.space.qna.vo.QnaRepVO;
import com.space.qna.vo.QnaVO;

import lombok.extern.java.Log;

@Log
@Service("AdminQnaService")
public class AdminQnaServiceImpl implements AdminQnaService {
	
	@Autowired
	public AdminQnaDaoImpl adQnaDao;
	
	//관리자 메인 신규문의 qna
		@Override
		public List<QnaVO> qnaNewList() {
			// TODO Auto-generated method stub
			List<QnaVO> qnew = adQnaDao.qnaNewList();
			return qnew;
		}
	//게시판관리 메인 qna 리스트
	@Override
	public List<QnaRepVO> qnaMainList() {
		// TODO Auto-generated method stub
		List<QnaRepVO> qlist = adQnaDao.qnaMain();
		return qlist;
	}
	
	//qna리스트 가져오기
	@Override
	public List<QnaRepVO> qnaList(Criteria cri) {
		// TODO Auto-generated method stub
		List<QnaRepVO> qna = adQnaDao.qnaList(cri);
		return qna;
	}
	//페이징 위한 갯수 
	@Override
	public int qnaCnt(Criteria cri) {
		// TODO Auto-generated method stub
		return adQnaDao.qnaCnt(cri);
	}
	//상세페이지
	@Override
	public QnaVO getQna(int qna_num) {
		// TODO Auto-generated method stub
		QnaVO qna = adQnaDao.getQna(qna_num);
		return qna;
	}
	//상세페이지 댓글 가져오기
	@Override
	public QnaRepVO getRep(int qna_num) {
		// TODO Auto-generated method stub
		QnaRepVO rep = adQnaDao.getRep(qna_num);
		return rep;
	}
	//댓글 등록
	@Override
	public int repInsert(QnaRepVO qrvo) {
		// TODO Auto-generated method stub
		return adQnaDao.repInsert(qrvo);
	}
	//댓글 수정
	@Override
	public int repUpdate(QnaRepVO qrvo) {
		// TODO Auto-generated method stub
		return adQnaDao.repUpdate(qrvo);
	}
	
	

}
