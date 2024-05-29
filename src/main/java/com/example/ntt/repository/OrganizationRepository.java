package com.example.ntt.repository;

import com.example.ntt.model.Organization;
import jakarta.persistence.TypedQuery;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

/**
 * @code
 * <b> Organization repository </b> <p>
 * Contains one custom method for searching organizations by name (containing part of a string): <p>
 * {@link #(String, String)}
 *
 */
@Repository
public interface OrganizationRepository extends JpaRepository<Organization, UUID> {

}
