CREATE TABLE IF NOT EXISTS `user`
(
    id VARCHAR(36) PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS `document`
(
    id       VARCHAR(36) PRIMARY KEY,
    title    TEXT        NOT NULL,
    owner_id VARCHAR(36) NOT NULL REFERENCES `user` (id),
    subject  TEXT        NOT NULL,
    meta     JSON        NOT NULL
);

CREATE TABLE IF NOT EXISTS `permission`
(
    user_id     VARCHAR(36) REFERENCES `user` (id),
    document_id VARCHAR(36) REFERENCES `document` (id),
    scope       ENUM ('read','write') NOT NULL,

    CONSTRAINT permission_pk PRIMARY KEY (user_id, document_id)
);

CREATE TABLE IF NOT EXISTS `update`
(
    user_id     VARCHAR(36) REFERENCES `user` (id),
    document_id VARCHAR(36) REFERENCES `document` (id),
    timestamp   DATETIME
);
