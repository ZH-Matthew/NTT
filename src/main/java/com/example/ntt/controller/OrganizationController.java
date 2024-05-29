package com.example.ntt.controller;

import com.example.ntt.dto.OrganizationDto;
import com.example.ntt.exceptions.NotFoundException;
import com.example.ntt.mapper.OrganizationMapper;
import com.example.ntt.model.Organization;
import com.example.ntt.service.OrganizationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Collection;
import java.util.List;
import java.util.UUID;

/**
 * @code
 * <b> Main controller </b> <p>
 * Basic methods: <p>
 * 1) Getting a list of all organizations {@link #getAllOrganization()} <p>
 * 2) Getting organizations by filter {@link #getAllFilterOrganization(String, String)}  <p>
 * 3) Getting an organization by unique identifier  {@link #getOrganizationByUuid(String)}
 */
@RestController
@RequiredArgsConstructor
@RequestMapping("/organization")
public class OrganizationController {

    /**
     * Main service
     */
    private final OrganizationService service;
    private final OrganizationMapper mapper;


    /**
     * <b> Endpoint for getting all organizations </b> <p>
     * implements a check for an empty list
     * @return List {@link Organization}
     */
    @GetMapping("/all")
    public ResponseEntity<Collection<Organization>> getAllOrganization() {
        return ResponseEntity.ok(service.getAllOrganizations());
    }

    /**
     * <b> Endpoint for obtaining organizations by filter </b> <p>
     * implements a check for an empty list
     * @throws NotFoundException there are no organizations according to the passed filter
     * @param filter a string or part of a string that may be contained in the short name of the organization
     * @return List {@link Organization}
     */
    @GetMapping("/filter")
    public ResponseEntity<Collection<Organization>> getAllFilterOrganization(@RequestParam("column") String column, @RequestParam("filter") String filter) {
        return ResponseEntity.ok(service.getFilterOrganizations(column,filter));
    }

    /**
     * <b> Endpoint for obtaining an organization by unique id </b> <p>
     * @param uuid Primary Key
     * @return {@link Organization}
     */
    @GetMapping("/byId/{uuid}")
    public ResponseEntity<OrganizationDto>  getOrganizationByUuid(@PathVariable("uuid") String uuid) {
        Organization org = service.getOrganisationById(uuid);
        return ResponseEntity.ok(mapper.organizationToOrganizationDto(org));
    }

}
