CREATE TABLE decision_making.paylines (
  payment_id                VARCHAR(50) NOT NULL ENCODE ZSTD,
  user_id                   INT         NOT NULL ENCODE ZSTD,
  payment_date              DATE          NOT NULL  ENCODE ZSTD,
  acquisition_date              DATE          NOT NULL  ENCODE ZSTD,
  conversion_date              DATE          NOT NULL  ENCODE ZSTD,
  country                   VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  channel                   VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  network                   VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  payment_gateway           VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  sale_type           VARCHAR(50)      ENCODE ZSTD,
  detailed_sale_type           VARCHAR(50)      ENCODE ZSTD,
  payment_status           VARCHAR(50)      ENCODE ZSTD,
  subscription_lenght           INT      ENCODE ZSTD,
  currency_code           VARCHAR(10)      ENCODE ZSTD,
  original_amount          NUMERIC(12, 4) ENCODE ZSTD,
  revenue_gross          NUMERIC(12, 4) ENCODE ZSTD,
  revenue_net          NUMERIC(12, 4) ENCODE ZSTD,

  CONSTRAINT paylines_id_pk PRIMARY KEY (payment_id)
)
  DISTKEY(payment_date)
  INTERLEAVED SORTKEY(payment_date);

copy decision_making.paylines
from 's3://decision-making/data/paylines.csv'
-- access_key_id
-- secret_access_key
delimiter ';'
IGNOREHEADER 1;

