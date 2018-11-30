CREATE TABLE decision_making.subscriptions_activated (
  user_id                   INT         NOT NULL ENCODE ZSTD,
  payment_date              DATE          NOT NULL  ENCODE ZSTD,
  acquisition_date              DATE          NOT NULL  ENCODE ZSTD,
  conversion_date              DATE          NOT NULL  ENCODE ZSTD,
  free_trial                BOOLEAN       NOT NULL  ENCODE ZSTD,
  country                   VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  channel                   VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  network                   VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  payment_gateway           VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  subscription_lenght           INT      ENCODE ZSTD,


  CONSTRAINT subscriptions_activated_id_pk PRIMARY KEY (payment_id)
)
  DISTKEY(payment_date)
  INTERLEAVED SORTKEY(payment_date);

copy decision_making.subscriptions_activated
from 's3://decision-making/data/subscriptions_activated.csv'
-- access_key_id
-- secret_access_key
delimiter ';'
IGNOREHEADER 1;

