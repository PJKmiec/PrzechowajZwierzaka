package pl.przechowajzwierzaka.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.przechowajzwierzaka.model.User;
import pl.przechowajzwierzaka.repository.UserRepository;

@Service
public class LoginService {

    @Autowired
    private UserRepository userRepository;

    public String loginUser(User u, String login, String password) {
        String result = "ok";

        if (u.getLogin().equals(login) && BCrypt.checkpw(password, u.getPassword())) {



            u.setLast_login(new java.util.Date());
            userRepository.save(u);
        } else {
            result = "credentials";
        }

        return result;
    }
}
