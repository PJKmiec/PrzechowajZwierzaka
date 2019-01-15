package pl.przechowajzwierzaka.service;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import pl.przechowajzwierzaka.model.User;
import pl.przechowajzwierzaka.repository.UserRepository;

@Service
public class RegisterService {

    @Autowired
    private UserRepository userRepository;

    public String registerUser(User u) {
        String result = "ok";

        int logins = userRepository.countAllByLogin(u.getLogin());
        int emails = userRepository.countAllByEmail(u.getEmail());

        if (logins > 0) { //check for duplicate login
            result = "login";
        } else if (emails > 0) { //check for duplicate email
            result = "email";
        } else {
            u.setCreated(new java.util.Date());
            userRepository.save(u);
        }

        return result;
    }
}
