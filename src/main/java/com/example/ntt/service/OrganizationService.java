package com.example.ntt.service;
import com.example.ntt.model.Organization;
import java.util.List;
import java.util.UUID;

public interface OrganizationService {
    List<Organization> getAllOrganizations();
    List<Organization> getFilterOrganizations(String column,String filter);
    Organization getOrganisationById(String uuid);
}
