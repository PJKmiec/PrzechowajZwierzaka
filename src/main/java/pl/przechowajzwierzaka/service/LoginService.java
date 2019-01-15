package pl.przechowajzwierzaka.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.przechowajzwierzaka.model.User;
import pl.przechowajzwierzaka.repository.UserRepository;

import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class LoginService {

    @Autowired
    private UserRepository userRepository;

    public String loginUser(User u, String login, String password) {
        String result = "ok";

        if (u.getLogin().equals(login) && BCrypt.checkpw(password, u.getPassword())) {

            String timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
            u.setLast_login(timeStamp);
            userRepository.save(u);
        } else {
            result = "credentials";
        }

        return result;
    }
}
