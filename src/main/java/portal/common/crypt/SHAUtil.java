package portal.common.crypt;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;


public class SHAUtil {

	@Autowired
    PasswordEncoder encoder;
	
    public String encoding(String str){
     return encoder.encode(str);
    }

}