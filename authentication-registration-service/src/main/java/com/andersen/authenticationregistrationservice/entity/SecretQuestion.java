package com.andersen.authenticationregistrationservice.entity;

import lombok.*;

import javax.persistence.*;
import java.util.Objects;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
public class SecretQuestion {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long questionId;
    private String question;
    private String answer;
    @OneToOne
    private User user;

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SecretQuestion that = (SecretQuestion) o;
        return Objects.equals(questionId, that.questionId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(questionId);
    }
}
