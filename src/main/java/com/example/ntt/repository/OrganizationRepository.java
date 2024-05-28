package com.example.ntt.repository;

import com.example.ntt.model.Organization;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @code
 * <b> Organization repository </b> <p>
 * Contains one custom method for searching organizations by name (containing part of a string): <p>
 * {@link #findByShortNameOrganizationContainingIgnoreCase(String)}
 *
 */
@Repository
public interface OrganizationRepository extends JpaRepository<Organization, Long> {
    /**
     * The method searches for an organization's short name containing a string or part of a string
     * @param filter string or part of a string
     * @return List of organizations
     */
    List<Organization> findByShortNameOrganizationContainingIgnoreCase(String filter);
}
