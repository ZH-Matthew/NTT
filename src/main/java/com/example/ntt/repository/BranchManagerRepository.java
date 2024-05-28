package com.example.ntt.repository;

import com.example.ntt.model.BranchManager;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BranchManagerRepository extends JpaRepository<BranchManager, Long> {
}
