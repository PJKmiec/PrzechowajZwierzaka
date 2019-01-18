package pl.przechowajzwierzaka.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import pl.przechowajzwierzaka.model.Offer;

import java.util.List;

public interface OfferRepository extends JpaRepository<Offer, Long> {
    List<Offer> findFirst6ByTypeOrderByIdDesc(String type);
    List<Offer> findAllByTypeOrderByStartsDesc(String type);

    List<Offer> findAllByRequirementsContainingOrderByIdDesc(String requirement);
    List<Offer> findAllByCityContainingOrderByIdDesc(String city);

    List<Offer> findAllByCatsGreaterThan(int number);
    List<Offer> findAllByDogsGreaterThan(int number);
    List<Offer> findAllByBirdsGreaterThan(int number);
    List<Offer> findAllByFishGreaterThan(int number);
    List<Offer> findAllByReptilesGreaterThan(int number);
    List<Offer> findAllByBugsGreaterThan(int number);
    List<Offer> findAllByHorsesGreaterThan(int number);
    List<Offer> findAllByMiscGreaterThan(int number);

    @Query(value = "SELECT * FROM offers WHERE small_rodents > 0", nativeQuery = true)
    List<Offer> findAllBySmall_rodentsGreaterThan();

    @Query(value = "SELECT * FROM offers WHERE big_rodents > 0", nativeQuery = true)
    List<Offer> findAllByBig_rodentsGreaterThan();



}
