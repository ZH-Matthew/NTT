package com.example.ntt.repository;

import com.example.ntt.model.BranchOrganization;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BranchOrganizationRepository extends JpaRepository<BranchOrganization, Long> {
}
