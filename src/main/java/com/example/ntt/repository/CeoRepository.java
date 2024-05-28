package com.example.ntt.repository;

import com.example.ntt.model.Ceo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CeoRepository extends JpaRepository<Ceo, Long> {
}
