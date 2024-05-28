package com.example.ntt.model;

import jakarta.persistence.*;
import lombok.*;
/**
 * @code
 * Organization branch model <p>
 * Has a one-to-one relationship with the {@link BranchManager}
 */
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class BranchOrganization {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String branchName;

    private String mailingAddress;

    @OneToOne
    private BranchManager branchManager;

}
