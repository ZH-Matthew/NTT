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
 * CEO model <p>
 */
@Getter
@Setter
@Entity
@NoArgsConstructor
@AllArgsConstructor
public class Ceo {
    @Id
    private UUID id;

    private String firstName;

    private String lastName;

    private String surName;

    private Date birthDay;
}
