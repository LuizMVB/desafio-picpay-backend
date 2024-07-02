CREATE TABLE transfer (
    id BIGINT(20) NOT NULL AUTO_INCREMENT,
    sender_id BIGINT(20) NOT NULL,
    receiver_id BIGINT(20) NOT NULL,
    inclusion_date DATETIME NOT NULL,
    update_date DATETIME DEFAULT NOW(),
    PRIMARY KEY(id),
    FOREIGN KEY (sender_id) REFERENCES user(id),
    FOREIGN KEY (receiver_id) REFERENCES user(id)
);