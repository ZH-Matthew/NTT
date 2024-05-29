package com.example.ntt.dto;

import lombok.Data;

@Data
public class OrganizationDto {

    private String fullNameOrganization;

    private String shortNameOrganization;

    private String inn;

    private String ogrn;

    private String postalAddress;

    private String legalAddress;
}
