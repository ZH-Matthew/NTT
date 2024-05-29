package com.example.ntt.service;

import com.example.ntt.model.Organization;

import java.util.List;

public interface OrganizationService {
    List<Organization> getAllOrganizations();
    List<Organization> getFilterOrganizations(String filter);
    Organization getOrganisationById(long id);
}
