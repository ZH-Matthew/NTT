package com.example.ntt.repository;

import com.example.ntt.model.Organization;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrganizationRepository extends JpaRepository<Organization, Long> {

    List<Organization> findByShortNameOrganizationContainingIgnoreCase(String name);
}
