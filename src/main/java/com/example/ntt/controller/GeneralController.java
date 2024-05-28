package com.example.ntt.controller;

import com.example.ntt.model.Organization;
import com.example.ntt.repository.OrganizationRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.Collection;
import java.util.List;


@RestController
@RequiredArgsConstructor
@RequestMapping("/organization")
public class GeneralController {

    private final OrganizationRepository repository;

    @GetMapping("/all")
    public ResponseEntity<Collection<Organization>> getAllOrganization() {
        List<Organization> allOrganization = repository.findAll();
        if (allOrganization.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(allOrganization);
    }

    @GetMapping("/byFilter/{filter}")
    public ResponseEntity<Collection<Organization>> getAllFilterOrganization(@PathVariable String filter) {
        List<Organization> allFilterOrganization = repository.findByShortNameOrganizationContainingIgnoreCase(filter);
        if (allFilterOrganization.isEmpty()) {
            return ResponseEntity.notFound().build();
        }
        return ResponseEntity.ok(allFilterOrganization);
    }

    @GetMapping("/byId/{id}")
    public ResponseEntity<Organization> getOrganization(@PathVariable long id) {
        Organization org = repository.findById(id).get();
        return ResponseEntity.ok(org);
    }

}
