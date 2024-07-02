CREATE TABLE user (
       id BIGINT(20) NOT NULL AUTO_INCREMENT,
       complete_name VARCHAR(100) NOT NULL,
       email VARCHAR(100) UNIQUE NOT NULL,
       password VARCHAR(300) NOT NULL,
       inclusion_date DATETIME NOT NULL,
       update_date DATETIME DEFAULT NOW(),
       PRIMARY KEY(id)
);