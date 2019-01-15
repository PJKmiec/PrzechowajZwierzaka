package pl.przechowajzwierzaka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.przechowajzwierzaka.model.Comment;

public interface CommentRepository extends JpaRepository<Comment, Long> {
}
