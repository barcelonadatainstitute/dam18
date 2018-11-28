CREATE TABLE decision_making.users (
  user_id                   INT          NOT NULL  ENCODE ZSTD,
  acquisition_date          DATE         NOT NULL  ENCODE ZSTD,
  country                   VARCHAR(50)  NOT NULL  ENCODE ZSTD,
  channel                   VARCHAR(50)            ENCODE ZSTD,
  network                   VARCHAR(50)            ENCODE ZSTD,
  is_premium                BOOLEAN                ENCODE ZSTD,
  is_expremium              BOOLEAN      NOT NULL  ENCODE ZSTD,
  CONSTRAINT user_id_pk PRIMARY KEY (user_id)
)
  DISTKEY(user_id)
  INTERLEAVED SORTKEY(user_id);


copy decision_making.users
from 's3://decision-making/data/users.csv'
-- access_key_id
-- secret_access_key
delimiter ';'
IGNOREHEADER 1;