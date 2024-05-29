package com.example.ntt.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.*;

import java.sql.Date;
import java.util.UUID;

/**
 * @code
 * Branch manager model <p>
 * Has a one-to-one relationship with the {@link BranchManager}
 */
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class BranchManager {

    @Id
    private UUID id;

    private String firstName;

    private String lastName;

    private String surName;

    private Date birthDay;

}
