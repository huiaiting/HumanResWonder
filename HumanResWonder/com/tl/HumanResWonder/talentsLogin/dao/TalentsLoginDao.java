package com.tl.HumanResWonder.talentsLogin.dao;

import java.util.Map;

import com.xc.opal.model.json.JSONResponse;

public interface TalentsLoginDao {
	
	int insertTanlentsInformation(Map<String, Object> map);

	int talentsRegistrationInformation(Map<String, Object> map);



}
