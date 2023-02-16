CREATE TABLE Student
(
    id       BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name     VARCHAR(45),
    birthday DATE   NOT NULL,
    group    INT    NOT NULL
);

CREATE TABLE Subject
(
    id          BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(45),
    description VARCHAR(45),
    grade       INT    NOT NULL
);

CREATE TABLE PaymentType
(
    id   BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
);

CREATE TABLE Payment
(
    id           BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    type_id      BIGINT NOT NULL AUTO_INCREMENT FOREIGN KEY,
    amount       decimal(5, 2),
    student_id   BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    payment_date GETDATE(
)
    );

CREATE TABLE Mark
(
    id         BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_id BIGINT NOT NULL AUTO_INCREMENT FOREIGN KEY,
    subject_id BIGINT NOT NULL AUTO_INCREMENT FOREIGN KEY,
    mark       INT    NOT NULL
);