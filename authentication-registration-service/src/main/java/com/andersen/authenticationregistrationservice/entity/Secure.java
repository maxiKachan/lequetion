package com.andersen.authenticationregistrationservice.entity;

import lombok.*;

import javax.persistence.*;
import java.util.Objects;
import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
public class Secure {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long secureId;
    @OneToOne(fetch = FetchType.LAZY)
    private User user;
    private String login;
    private String password;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Secure secure = (Secure) o;
        return Objects.equals(secureId, secure.secureId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(secureId);
    }
}
