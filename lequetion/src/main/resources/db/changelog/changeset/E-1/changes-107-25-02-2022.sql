--liquibase formatted sql

--changeset E-1:2

INSERT INTO role (role, description)
VALUES ('ADMIN', 'has the widest access rights'),
       ('OPERATOR', 'has access rights to work with customers'),
       ('DEMO', 'has rights to familiarize'),
       ('NOT_AUTH', 'has minimum user rights'),
       ('AUTH_NOT_VERIFIED', 'has medium user rights'),
       ('AUTH_VERIFIED', 'has all user rights');

INSERT INTO users (first_name, last_name, birthday, email, phone, passport_identity)
VALUES ('Иван','Иванов','01-01-1991','invanov@gmail.com','+71234567890','123356ccvbd5'),
       ('Петр','Петров','02-02-1992','petrov@gmail,com','+72345678901','0067888553df'),
       ('Сегрей','Сергеев','03-03-1993','sergeev@gmail.com','+73456789012','0078654bbnmx'),
       ('Антон','Антонов','04-04-1994','antonov@gmail.com','+74567890123','00456784cvgb'),
       ('Кирилл','Кириллов','05-05-1995','kirillov@gmail.com','+75678901234','0985675fvto'),
       ('Максим','Максимов','06-06-1996','maksimov@gmail.com','+76789012345','04562356qsph');

INSERT INTO secure (login, password, user_id)
VALUES ('ivan', 'ivanqwerty', 1),
       ('peter','peterqwerty',2),
       ('sergei','sergeiqwerty',3),
       ('anton','antonqwerty',4),
       ('kirill','kirillqwerty',5),
       ('maksim','maksimqwerty',6);

INSERT INTO secret_question (question, answer, user_id)
VALUES ('secret_question1', 'secret_answer1', 1),
       ('secret_question2', 'secret_answer2', 2),
       ('secret_question3', 'secret_answer3', 3),
       ('secret_question4', 'secret_answer4', 4),
       ('secret_question5', 'secret_answer5', 5),
       ('secret_question6', 'secret_answer6', 6);

INSERT INTO user_role (user_id, role_id)
VALUES (1,6),
       (2,5),
       (3,4),
       (4,3),
       (5,2),
       (6,1);