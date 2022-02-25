--liquibase formatted sql

--changeset E-1:1

CREATE TABLE users
(
    user_id BIGSERIAL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birthday DATE NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    PRIMARY KEY (user_id),
    passport_identity VARCHAR(20) NOT NULL
);

CREATE TABLE secure
(
    secure_id BIGSERIAL,
    login VARCHAR(20) NOT NULL,
    password VARCHAR(255) NOT NULL,
    user_id BIGINT NOT NULL,
    PRIMARY KEY (secure_id),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE secret_question
(
    question_id BIGSERIAL,
    question VARCHAR(50) NOT NULL,
    answer VARCHAR(50) NOT NULL,
    user_id BIGINT NOT NULL,
    PRIMARY KEY (question),
    FOREIGN KEY (user_id) REFERENCES users (user_id)
);

CREATE TABLE role
(
    role_id SERIAL,
    role VARCHAR(50) NOT NULL,
    description VARCHAR(100) NOT NULL,
    PRIMARY KEY (role_id)
);

CREATE TABLE user_role
(
    user_role_id BIGSERIAL,
    user_id BIGINT,
    role_id BIGINT,
    FOREIGN KEY (user_id) REFERENCES users (user_id),
    FOREIGN KEY (role_id) REFERENCES role (role_id),
    PRIMARY KEY (user_role_id)
);