CREATE TABLE document(
                         id TEXT
                             CONSTRAINT documents_id_pk PRIMARY KEY,
                         title TEXT
                             NOT NULL,

                         owner_id TEXT
                             NOT NULL,

                         subject TEXT
                             NOT NULL,

                         CONSTRAINT documents_title_owner_id_subject_unique UNIQUE(title, owner_id, subject)
);
