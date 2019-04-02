package portal.home.service;

public interface HomeService {
	public boolean checkId(String id);
	public int 	   registUser(UserVo user);
	public UserVo  login(UserVo user);
}
