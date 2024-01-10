CREATE DATABASE IF NOT EXISTS dbpaymybuddy;
use dbpaymybuddy;
CREATE TABLE IF NOT EXISTS user (
	email varchar(30) not null primary key,
    first_name varchar(25) not null,
    last_name varchar(25) not null,
    password varchar(100) not null,
    balance decimal (8, 2),
    role varchar(30))
        ENGINE = innoDB;

    CREATE TABLE IF NOT EXISTS contact (
	user_email varchar(30) not null,
    contact_email varchar(30)not null,
    primary key (user_email, contact_email))
        ENGINE = innoDB;
    
	CREATE TABLE IF NOT EXISTS refill_balance(
	refill_id integer primary key NOT NULL AUTO_INCREMENT,
    refill_amount decimal(8,2),
    user_email varchar(30))
        ENGINE = innoDB;
    
    CREATE TABLE IF NOT EXISTS transaction (
	transaction_id integer primary key NOT NULL AUTO_INCREMENT,
    date TIMESTAMP,
    user_sender varchar(30),
    user_receiver varchar(30),
    amount decimal(8,2) not null,
    description varchar(500),
    fee decimal(8,2))
        ENGINE = innoDB;

 insert into user (email, first_name, last_name, password, balance, role) values
('igor@gmail.com','Igor','Nikolaienko','$2a$12$EG733c7dhQZMvKiWaZ8JKeNrTaiq3/5JySgQJz2BDiVXAw/vHVPOi',1400.37,'USER'),
('john@gmail.com','John','Loyd','$2a$12$EG733c7dhQZMvKiWaZ8JKeNrTaiq3/5JySgQJz2BDiVXAw/vHVPOi',1250.25,'USER'),
('max@gmail.com','Max','Madison','$2a$12$EG733c7dhQZMvKiWaZ8JKeNrTaiq3/5JySgQJz2BDiVXAw/vHVPOi',3257.25,'USER'),
('tom@gmail.com','Tom','Gibson','$2a$12$EG733c7dhQZMvKiWaZ8JKeNrTaiq3/5JySgQJz2BDiVXAw/vHVPOi',6987.94,'USER'),
('lily@gmail.com','Lily','Russell','$2a$12$EG733c7dhQZMvKiWaZ8JKeNrTaiq3/5JySgQJz2BDiVXAw/vHVPOi',91648.27,'USER'),
('stella@gmail.com','Stella','Miller','$2a$12$EG733c7dhQZMvKiWaZ8JKeNrTaiq3/5JySgQJz2BDiVXAw/vHVPOi',5218.54,'USER'),
('kate@gmail.com','Kate','Trump','$2a$12$EG733c7dhQZMvKiWaZ8JKeNrTaiq3/5JySgQJz2BDiVXAw/vHVPOi',4218.76,'USER'),
('allan@gmail.com','Allan','Beck','$2a$12$EG733c7dhQZMvKiWaZ8JKeNrTaiq3/5JySgQJz2BDiVXAw/vHVPOi',5000.76,'USER');

commit;