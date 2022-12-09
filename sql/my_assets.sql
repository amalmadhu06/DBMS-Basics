--this table stores my stocks

DROP TABLE IF EXISTS stocks\;

CREATE TABLE stocks (
    id serial PRIMARY KEY,  
    symbol text NOT NULL,
    num_shares integer NOT NULL,
    date_acquried date NOT NULL
);