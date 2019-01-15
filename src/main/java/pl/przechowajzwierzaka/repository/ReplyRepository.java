package pl.przechowajzwierzaka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.przechowajzwierzaka.model.Reply;

public interface ReplyRepository extends JpaRepository<Reply, Long> {
}
