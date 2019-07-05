package com.tl.HumanResWonder.talentsLogin.controller;
import com.tl.HumanResWonder.talentsLogin.service.TalentsLoginService;
import com.xc.opal.base.web.WebBaseUtils;
import com.xc.opal.interfaces.accounthandler.IAccountHandlerService;
import com.xc.opal.model.base.WebBaseContext;
import com.xc.opal.model.json.JSONResponse;
import com.xc.opal.model.security.SecurityUserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URL;
import java.util.Locale;
import java.util.Map;

@Controller
@RequestMapping("/talentsLoginController")
public class talentsLoginController {
	
	@Resource
	private  TalentsLoginService talentsService;
	@Resource
	private IAccountHandlerService iAccountHandlerService;
	
	/**
	 * Talents登录首页
	 * 
	 * @param request
	 * @param locale
	 * @return
	 */
	public ModelAndView init(HttpServletRequest request, Locale locale) {
		ModelAndView mv = new ModelAndView();
		WebBaseContext webBaseContext = WebBaseUtils.getBaseContext();
		SecurityUserDetails securityUserDetails = webBaseContext.getSecurityUserDetails();
		mv.addObject("userDetails", securityUserDetails);
		System.out.println("aaaa");
        mv.setViewName("/base/main/registration");
        System.out.println(securityUserDetails);
		return mv;
	}
	/*Talents登录首页*/
	@ResponseBody
	@RequestMapping("/insertTanlentsInformation")
	public int insertTanlentsInformation (@RequestBody Map<String,Object>map){
		return talentsService.insertTanlentsInformation(map);		
	}
	
	/*Talents登录首页*/
	@ResponseBody
	@RequestMapping("/talentsRegistrationInformation")
	public int talentsRegistrationInformation (@RequestBody Map<String,Object>map){
		return talentsService.talentsRegistrationInformation(map);		
	}
	/**
	 * 忘记密码,重新更改密码
	 * @param map
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/talentsChangeNewInformation",method = RequestMethod.POST)
	public JSONResponse talentsChangeNewInformation(@RequestBody Map map) {
		JSONResponse json = new JSONResponse();
		String phone = String.valueOf(map.get("phoneNumber"));
		String smsCode = String.valueOf(map.get("smsCode"));
		String smsRandomCode = String.valueOf(map.get("smsRandomCode"));
		String newPassword = String.valueOf(map.get("newPassword"));
		Map<String,Object> verifyCodeMap = iAccountHandlerService.modifyPassword(phone, smsCode, smsRandomCode, newPassword);
		if((Boolean) verifyCodeMap.get("success")){
			json.setReturnObject(verifyCodeMap.get("object"));
			json.setSuccess(Boolean.TRUE);
			return json;
		}else{
			json.setSuccess(Boolean.FALSE);
			json.setError((String) verifyCodeMap.get("message"));
			return json;		
	}
}
	
/**
 * 发送短信
 * @param map
 * @return
 */
@ResponseBody
@RequestMapping(value = "/sendPasswordVerifyCode",method = RequestMethod.POST)
public JSONResponse sendPasswordVerifyCode(@RequestBody Map map) {
	JSONResponse json = new JSONResponse();
	Map<String,Object> verifyCodeMap = iAccountHandlerService.getSmsCodeOfLogin((String) map.get("phoneNumber"));
	if((Boolean) verifyCodeMap.get("success")){
		json.setReturnObject(verifyCodeMap.get("object"));
		json.setSuccess(Boolean.TRUE);
		return json;
	}else{
		json.setSuccess(Boolean.FALSE);
		json.setError((String) verifyCodeMap.get("message"));
		return json;
	}
}
@ResponseBody
@RequestMapping(value = "/clickDownloadWordFunction", method = RequestMethod.GET)
public void excelStandardTemplateOut(HttpServletRequest request,
                                     HttpServletResponse response) throws IOException {
    URL save = Thread.currentThread().getContextClassLoader().getResource("");
    String str = save.toString();
    str = str.substring(5, str.length());
    str = str.replaceAll("%20", " ");
    int num = str.indexOf("HumanResWonder");//wgbs 为项目名，应用到不同的项目中，这个需要修改！
    str = str.substring(0, num + "HumanResWonder".length());
    str = str + "/WebRoot/file/test.doc";//Excel模板所在的路径。
    File f = new File(str);
    // 设置response参数，可以打开下载页面
    response.reset();
    response.setContentType("application/vnd.ms-excel;charset=utf-8");
    try {
        response.setHeader("Content-Disposition", "attachment;filename=" + new String(("test" + ".doc").getBytes("UTF-8"), "iso-8859-1"));//下载文件的名称
    } catch (UnsupportedEncodingException e) {
        e.printStackTrace();
    }
    ServletOutputStream out = response.getOutputStream();
    BufferedInputStream bis = null;
    BufferedOutputStream bos = null;
    try {
        bis = new BufferedInputStream(new FileInputStream(f));
        bos = new BufferedOutputStream(out);
        byte[] buff = new byte[2048];
        int bytesRead;
        while (-1 != (bytesRead = bis.read(buff, 0, buff.length))) {
            bos.write(buff, 0, bytesRead);
        }
    } catch (final IOException e) {
        throw e;
    } finally {
        if (bis != null)
            bis.close();
        if (bos != null)
            bos.close();
    }
}
}