package pl.przechowajzwierzaka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.przechowajzwierzaka.model.Offer;

import java.util.List;

public interface OfferRepository extends JpaRepository<Offer, Long> {
    List<Offer> findFirst6ByOrderByIdDesc();
    List<Offer> findAllByTypeOrderByStartsDesc(String type);

}
