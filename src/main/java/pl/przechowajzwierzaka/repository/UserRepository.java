package pl.przechowajzwierzaka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.przechowajzwierzaka.model.User;

import java.util.List;


public interface UserRepository extends JpaRepository<User, Long> {

    User findOneByLogin(String login);
    int countAllByLogin(String login);
    int countAllByEmail(String email);

}
