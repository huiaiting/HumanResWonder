package com.tl.HumanResWonder.talentsLogin.dao.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.tl.HumanResWonder.talentsLogin.dao.TalentsLoginDao;
@Repository
public class TalentsLoginDaoImpl implements TalentsLoginDao {
	@Resource
	private SqlSessionTemplate sqlSessionTemplate;
	@Override
	public int insertTanlentsInformation(
			Map<String, Object> map) {

		return sqlSessionTemplate.insert("insertTanlentsInformation",map);
	}
	@Override
	public int talentsRegistrationInformation(Map<String, Object> map) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.insert("talentsRegistrationInformation",map);
	}
	

}
