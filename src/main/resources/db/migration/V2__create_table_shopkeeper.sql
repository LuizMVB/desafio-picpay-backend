CREATE TABLE shopkeeper (
      id BIGINT(20) NOT NULL AUTO_INCREMENT,
      user_id BIGINT(20) NOT NULL,
      cnpj VARCHAR(11) UNIQUE NOT NULL,
      inclusion_date DATETIME NOT NULL,
      update_date DATETIME DEFAULT NOW(),
      PRIMARY KEY(id),
      FOREIGN KEY (user_id) REFERENCES user(id)
);