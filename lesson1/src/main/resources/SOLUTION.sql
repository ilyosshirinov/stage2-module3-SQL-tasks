CREATE TABLE Student
(
    id       BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name     VARCHAR(45),
    birthday DATE   NOT NULL,
    group    INT    NOT NULL
);
-------------------------------------------------------------------------------------------------------------
CREATE TABLE Subject
(
    id          BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name        VARCHAR(45),
    description VARCHAR(45),
    grade       INT    NOT NULL
);
-------------------------------------------------------------------------------------------------------------
CREATE TABLE PaymentType
(
    id   BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45),
);
-------------------------------------------------------------------------------------------------------------
CREATE TABLE Payment
(
    id           BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    foreign key (type_id) references PaymentType (id),
    amount       decimal(5, 2),
    foreign key (student_id) references Student (id),
    payment_date GETDATE
);
-------------------------------------------------------------------------------------------------------------
CREATE TABLE Mark
(
    id   BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    foreign key (student_id) references Student (id),
    foreign key (subject_id) references Subject (id),
    mark INT    NOT NULL
);