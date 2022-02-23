package com.andersen.authenticationregistrationservice.repository;

import com.andersen.authenticationregistrationservice.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;

import javax.transaction.Transactional;

public interface JpaRole extends JpaRepository<Role, Long> {
    @Override
    @Transactional
    <S extends Role> S save(S entity);
}
