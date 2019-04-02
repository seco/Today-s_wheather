package portal.common.crypt;

import javax.inject.Inject;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service("shaEncoder")
public class SHAUtil {

	@Inject
    PasswordEncoder encoder;
	
    

    public String encoding(String str){
     return encoder.encode(str);
    }

}