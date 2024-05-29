package com.example.ntt.model;
import jakarta.persistence.*;
import lombok.*;

import java.util.*;

/**
 * @code
 * Organization model <p>
 * Has a one-to-one relationship with the {@link Ceo} and a one-to-many relationship with {@link BranchOrganization}
 */
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Organization {

    @Id
    private UUID id;

    private String fullNameOrganization;

    private String shortNameOrganization;

    private String inn;

    private String ogrn;

    private String postalAddress;

    private String legalAddress;

    @OneToOne
    @JoinColumn(name = "ceo_id")
    private Ceo ceo;

    @OneToMany(cascade = CascadeType.ALL , fetch = FetchType.LAZY)
    @JoinColumn(name = "organization_id")
    private List<BranchOrganization> branchOrganizations = new ArrayList<>();


}
