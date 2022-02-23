package com.andersen.authenticationregistrationservice.repository;

import com.andersen.authenticationregistrationservice.entity.Role;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class JpaRoleTest {

    @Autowired
    private JpaRole jpaRole;

    @Test
    void save() {
        Role role = new Role("USER", "userDescription");
        jpaRole.save(role);
    }
}