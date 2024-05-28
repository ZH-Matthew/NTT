package com.example.ntt.service;

import com.example.ntt.exceptions.NotFoundException;
import com.example.ntt.model.Organization;
import com.example.ntt.repository.OrganizationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
/**
 * @code
 * <b> Main service </b> <p>
 * Basic methods: <p>
 * 1) Getting a list of all organizations {@link #getAllOrganizations()} <p>
 * 2) Getting organizations by filter {@link #getFilterOrganizations(String)} <p>
 * 3) Getting an organization by unique identifier  {@link #getOrganisationById(long)}
 */
@Service
@RequiredArgsConstructor
public class GeneralServiceImpl implements GeneralService {

    /**
     * Organizations repository (main project repository)
     */
    private final OrganizationRepository repository;

    public List<Organization> getAllOrganizations(){
        return repository.findAll();
    }

    public List<Organization> getFilterOrganizations(String filter){
        return repository.findByShortNameOrganizationContainingIgnoreCase(filter);
    }

    /**
     * <b> The method gets the organization by unique identifier <b> <p>
     * @throws NotFoundException organization with this identifier does not exist
     * @param id Primary Key
     * @return {@link Organization}
     */
    public Organization getOrganisationById(long id){
        return repository.findById(id)
                .orElseThrow(()-> new NotFoundException(String.format(
                        "Organization with \"%s\" id doesn't exist.", id)));
    }

}
