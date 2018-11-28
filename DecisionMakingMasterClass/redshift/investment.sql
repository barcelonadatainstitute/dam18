CREATE TABLE decision_making.investment (
  date_of_investment        DATE          NOT NULL  ENCODE ZSTD,
  network                   VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  campaign                  VARCHAR(100)  NOT NULL  ENCODE ZSTD,
  country                   VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  channel                   VARCHAR(50)   NOT NULL  ENCODE ZSTD,
  impressions               INTEGER ENCODE ZSTD,
  clicks                    INTEGER ENCODE ZSTD,
  installs                  INTEGER ENCODE ZSTD,
  investment                NUMERIC(16, 6) ENCODE ZSTD

  CONSTRAINT investment_id_pk PRIMARY KEY (date_of_investment,campaign)
)
  DISTKEY(date_of_investment,campaign)
  INTERLEAVED SORTKEY(date_of_investment,campaign);

copy decision_making.investment
from 's3://decision-making/data/investment.csv'
-- access_key_id
-- secret_access_key
delimiter ';'
IGNOREHEADER 1;