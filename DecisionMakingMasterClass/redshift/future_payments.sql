CREATE TABLE decision_making.future_payments (
  date_of_payment        DATE          NOT NULL  ENCODE ZSTD,
  country                   VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  channel                   VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  payment_gateway           VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  potential_revenue          NUMERIC(16, 6) ENCODE ZSTD,

  CONSTRAINT future_payments_id_pk PRIMARY KEY (date_of_payment,country,channel,payment_gateway)
)
  DISTKEY(date_of_payment)
  INTERLEAVED SORTKEY(date_of_payment);

copy decision_making.future_payments
from 's3://decision-making/data/future_payments.csv'
-- access_key_id
-- secret_access_key
delimiter ';'
IGNOREHEADER 1;
