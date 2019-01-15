package pl.przechowajzwierzaka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import pl.przechowajzwierzaka.model.Offer;

public interface OfferRepository extends JpaRepository<Offer, Long> {
}
