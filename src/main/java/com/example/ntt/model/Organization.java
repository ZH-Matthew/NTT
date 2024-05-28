package com.example.ntt.model;
import jakarta.persistence.*;
import lombok.*;
import java.util.ArrayList;
import java.util.List;

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

    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true , fetch = FetchType.LAZY)
    @JoinColumn(name = "organization_id")
    private List<BranchOrganization> branchOrganizations = new ArrayList<>();


}
