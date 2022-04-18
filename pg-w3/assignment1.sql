CREATE TABLE make (
    id SERIAL,
    name VARCHAR(128) UNIQUE,
    PRIMARY KEY(id)
);

CREATE TABLE model (
  id SERIAL,
  name VARCHAR(128),
  make_id INTEGER REFERENCES make(id) ON DELETE CASCADE,
  PRIMARY KEY(id)
);

INSERT INTO make (name) VALUES ('Chrysler');
INSERT INTO make (name) VALUES ('Volkswagen');
INSERT INTO model (name, make_id) VALUES ('Sebring 4 Door', 1);
INSERT INTO model (name, make_id) VALUES ('Sebring AWD', 1);
INSERT INTO model (name, make_id) VALUES ('Sebring Convertible', 1);
INSERT INTO model (name, make_id) VALUES ('Tiguan Limited 4motion', 2);
INSERT INTO model (name, make_id) VALUES ('Touareg', 2);












