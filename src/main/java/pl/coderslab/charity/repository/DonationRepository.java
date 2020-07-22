package pl.coderslab.charity.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import pl.coderslab.charity.entity.Category;
import pl.coderslab.charity.entity.Donation;

import java.util.List;

public interface DonationRepository extends JpaRepository<Donation, Long> {
    @Query(value = "SELECT SUM(quantity) FROM donation", nativeQuery = true)
    Integer sumAllQuantity();

    @Query(value = "SELECT COUNT(id) FROM donation", nativeQuery = true)
    Integer amountOfDonation();

}