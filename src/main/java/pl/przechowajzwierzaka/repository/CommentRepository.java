package pl.przechowajzwierzaka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import pl.przechowajzwierzaka.model.*;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface CommentRepository extends JpaRepository<Comment, Long> {
    List<Comment> findAllByTypeAndBlogOrderByIdDesc(String type, Blog blog);
    List<Comment> findAllByTypeAndOfferOrderByIdDesc(String type, Offer offer);
    List<Comment> findAllByTypeAndReviewOrderByIdDesc(String type, Review review);
    Comment findFirstByOrderByIdDesc();
    void deleteAllByBlog(Blog blog);

    @Modifying
    @Query(value = "UPDATE comments SET STATUS = 1 WHERE ID = ?1", nativeQuery = true)
    void flagById(Long id);

}
