package com.example.ntt.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.*;

import java.sql.Date;
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class BranchManager {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String firstName;

    private String lastName;

    private String surName;

    private Date birthDay;

}
