package portal.home.web;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import portal.common.crypt.SHAUtil;
import portal.common.logger.LoggerInterceptor;
import portal.home.service.HomeService;
import portal.home.service.UserVo;

@Controller
public class HomeController {

	@Resource(name="shaEncoder")
	private SHAUtil encoder;
	
	@Resource(name = "HomeService")
	private HomeService homeService;
	
	private Log log = LogFactory.getLog(HomeController.class);
	
	@RequestMapping(value = "/home.do", method = RequestMethod.GET)
	public String home() {
		return "portal/main/home";
	}
	
	@ResponseBody
	@RequestMapping(value="/portal/goRegist.do" , method = RequestMethod.POST)
	public Map<String,Object> goRegist(){
		Map<String, Object> map = new HashMap<String,Object>();
		map.put("resultPage", "/portal/main/regist");
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/portal/regist.do" , method=RequestMethod.POST)
	public Map<String,Object> Regist(UserVo userVo){
		
		String encPass = encoder.encoding(userVo.getUserPass());
		log.debug("pass = " + userVo.getUserPass());
		userVo.setUserPass(encPass);
		log.debug("encpass = " + encPass);
		int count = homeService.registUser(userVo);
		
		if(count > 0){
			return null;
		}else{
			return null;
		}
			
		
		
	}
}
