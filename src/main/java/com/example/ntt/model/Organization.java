package com.example.ntt.model;
import jakarta.persistence.*;
import lombok.*;

import java.util.Set;

@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Organization {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String fullNameOrganization;

    private String shortNameOrganization;

    private Long inn;

    private Long ogrn;

    private String postalAddress;

    private String legalAddress;

    @OneToOne
    @JoinColumn(name = "ceo_id")
    private Ceo ceo;

    @OneToMany(mappedBy = "organization", fetch = FetchType.LAZY)
    private Set<BranchOrganization> branchOrganizations;


}
