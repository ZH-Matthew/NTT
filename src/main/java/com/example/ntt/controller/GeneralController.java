package com.example.ntt.controller;

import com.example.ntt.exceptions.NotFoundException;
import com.example.ntt.model.Organization;
import com.example.ntt.service.GeneralServiceImpl;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.Collection;
import java.util.List;

/**
 * @code
 * <b> Main controller </b> <p>
 * Basic methods: <p>
 * 1) Getting a list of all organizations {@link #getAllOrganization()} <p>
 * 2) Getting organizations by filter {@link #getAllFilterOrganization(String)} <p>
 * 3) Getting an organization by unique identifier  {@link #getOrganization(long)}
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/organization")
public class GeneralController {

    /**
     * Main service
     */
    private final GeneralServiceImpl service;

    /**
     * <b> Endpoint for getting all organizations </b> <p>
     * implements a check for an empty list
     * @return List {@link Organization}
     */
    @GetMapping("/all")
    public ResponseEntity<Collection<Organization>> getAllOrganization() {
        List<Organization> allOrganizations = service.getAllOrganizations();
        if (allOrganizations.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(allOrganizations);
    }

    /**
     * <b> Endpoint for obtaining organizations by filter </b> <p>
     * implements a check for an empty list
     * @throws NotFoundException there are no organizations according to the passed filter
     * @param filter a string or part of a string that may be contained in the short name of the organization
     * @return List {@link Organization}
     */
    @GetMapping("/byFilter/{filter}")
    public ResponseEntity<Collection<Organization>> getAllFilterOrganization(@PathVariable String filter) {
        List<Organization> allFilterOrganization = service.getFilterOrganizations(filter);
        if (allFilterOrganization.isEmpty()) {
            throw new NotFoundException(String.format(
                    "Organization with \"%s\" filter doesn't exist.", filter));
        }
        return ResponseEntity.ok(allFilterOrganization);
    }

    /**
     * <b> Endpoint for obtaining an organization by unique id </b> <p>
     * @param id Primary Key
     * @return {@link Organization}
     */
    @GetMapping("/byId/{id}")
    public ResponseEntity<Organization> getOrganization(@PathVariable long id) {
        return ResponseEntity.ok(service.getOrganisationById(id));
    }

}
