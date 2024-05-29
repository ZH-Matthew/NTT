package com.example.ntt.service;

import com.example.ntt.exceptions.InvalidUuidException;
import com.example.ntt.exceptions.NotFoundException;
import com.example.ntt.model.Organization;
import com.example.ntt.repository.OrganizationRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.Query;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Root;
import jakarta.persistence.metamodel.EntityType;
import jakarta.persistence.metamodel.Metamodel;
import jakarta.persistence.metamodel.SingularAttribute;
import lombok.RequiredArgsConstructor;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

/**
 * @code <b> Main service </b> <p>
 * Basic methods: <p>
 * 1) Getting a list of all organizations {@link #getAllOrganizations()} <p>
 * 2) Getting organizations by filter {@link #getFilterOrganizations(String, String)} <p>
 * 3) Getting an organization by unique identifier  {@link #getOrganisationById(String)}
 */
@Service
@RequiredArgsConstructor
public class OrganizationServiceImpl implements OrganizationService {


    /**
     * Organizations repository (main project repository)
     */
    private final OrganizationRepository repository;

    private final SessionFactory sessionFactory;

    @PersistenceContext
    EntityManager entityManager;

    public List<Organization> getAllOrganizations() {
        return repository.findAll();
    }


    /**
     * The method searches for an organization by column (passed in the request parameter)
     * and based on the text (passed in the request parameter) <p>
     * <p>
     * The method initially checks whether the specified column is in the table,
     * if so, then this column is used to search for an element containing the passed value.
     * The Organization list is formed from matching values.
     * @param column the column in which the search will be carried out
     * @param filter the word or part of a word that will be searched for
     * @return list of found organizations
     * @throws NotFoundException exception thrown if the specified column is not found
     */
    public List<Organization> getFilterOrganizations(String column, String filter) {
        Set<String> columnName = new HashSet<>();

        Metamodel metamodel = entityManager.getEntityManagerFactory().getMetamodel();
        EntityType<Organization> entityType = metamodel.entity(Organization.class);
        for (SingularAttribute<? super Organization, ?> attr : entityType.getDeclaredSingularAttributes()) {
            columnName.add(attr.getName());
        }

        if (!columnName.contains(column)) {
            throw new NotFoundException("Column" + column + "not found");
        }


        List<Organization> org;

        Session session = sessionFactory.openSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Organization> critQuery = builder.createQuery(Organization.class);


        Root<Organization> root = critQuery.from(Organization.class);
        critQuery.select(critQuery.from(Organization.class)).where(builder.like(root.get(column), "%" + filter + "%"));

        Query query = session.createQuery(critQuery);
        org = query.getResultList();

        return org;
    }

    ;

    /**
     * <b> The method gets the organization by unique identifier <b> <p>
     *
     * @param uuid Primary Key
     * @return {@link Organization}
     * @throws NotFoundException organization with this identifier does not exist
     */
    public Organization getOrganisationById(String uuid) {
        UUID id;
        try {
            id = UUID.fromString(uuid);
        } catch (IllegalArgumentException e) {
            throw new InvalidUuidException("Invalid UUID value entered");
        }
        return repository.findById(id)
                .orElseThrow(() -> new NotFoundException(String.format(
                        "Organization with \"%s\" id doesn't exist.", id)));
    }

}
