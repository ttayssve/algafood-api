package com.algaworks.algafood.domain.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.algaworks.algafood.domain.model.Restore;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.math.BigDecimal;
import java.util.Optional;
import java.util.List;

@Repository
public interface RestoreRepository extends JpaRepository<Restore, Long> {

    List<Restore> findByShippingFeeBetween(BigDecimal first, BigDecimal last);

    List<Restore> findByNameContainingAndKitchenId(String name, Long kitchen);

    @Query("FROM Restore WHERE name LIKE %:name% AND kitchen.id = :id")
    List<Restore> consultByName(String name, @Param("id") Long kitchenId);

    Optional<Restore> findFirstByNameContaining(String name);

    List<Restore> findTop10ByNameContaining(String name);

    int countByKitchenId(Long kitchenId);
}
