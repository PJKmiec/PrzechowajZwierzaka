package pl.przechowajzwierzaka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.przechowajzwierzaka.model.User;


public interface UserRepository extends JpaRepository<User, Long> {

}
