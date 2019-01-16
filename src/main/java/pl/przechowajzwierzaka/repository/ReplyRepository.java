package pl.przechowajzwierzaka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import pl.przechowajzwierzaka.model.Reply;

import javax.transaction.Transactional;

@Transactional
public interface ReplyRepository extends JpaRepository<Reply, Long> {

    @Modifying
    @Query(value = "UPDATE replies SET STATUS = 1 WHERE ID = ?1", nativeQuery = true)
    void flagById(Long id);

}
