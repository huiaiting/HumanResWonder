package com.tl.HumanResWonder.talentsLogin.service.impl;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tl.HumanResWonder.talentsLogin.dao.TalentsLoginDao;
import com.tl.HumanResWonder.talentsLogin.service.TalentsLoginService;
@Service 
@Transactional
public class TalentsLoginServiceImpl implements TalentsLoginService {
    @Resource
    TalentsLoginDao talentsLoginDao;
	@Override
	public int insertTanlentsInformation(
			Map<String, Object> map) {
		
		
	return talentsLoginDao.insertTanlentsInformation(map);
	}
	@Override
	public int talentsRegistrationInformation(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return talentsLoginDao.talentsRegistrationInformation(map);
	}
	

}
