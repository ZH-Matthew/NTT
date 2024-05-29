package com.example.ntt.mapper;

import com.example.ntt.dto.OrganizationDto;
import com.example.ntt.model.Organization;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface OrganizationMapper {

    OrganizationDto organizationToOrganizationDto(Organization entity);
}
