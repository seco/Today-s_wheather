package portal.home.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import portal.common.dao.AbstractDAO;
import portal.home.service.HomeService;
import portal.home.service.UserVo;


@Service("HomeService")
public class HomeServiceImpl implements HomeService {

	@Autowired
	private AbstractDAO dao;
	
	@Override
	public boolean checkId(String id) {
		int count = (int) dao.selectOne("portal.home.checkId", id); 
		if(count > 0)
			return false;
		else
			return true;
	}

	@Override
	public int registUser(UserVo user) {
		return 0;
	}

	@Override
	public UserVo login(UserVo user) {
		return null;
	}

}
