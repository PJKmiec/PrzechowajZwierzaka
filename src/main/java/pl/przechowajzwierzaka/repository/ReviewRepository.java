package pl.przechowajzwierzaka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.przechowajzwierzaka.model.Review;

public interface ReviewRepository extends JpaRepository<Review, Long> {
}
