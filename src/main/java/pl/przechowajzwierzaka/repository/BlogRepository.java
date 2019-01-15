package pl.przechowajzwierzaka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.przechowajzwierzaka.model.Blog;

public interface BlogRepository extends JpaRepository<Blog, Long> {
}
