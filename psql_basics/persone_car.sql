CREATE TABLE car(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    make VARCHAR(100) NOT NULL,
    model VARCHAR(100) NOT NULL,
    price NUMERIC(19, 2) NOT NULL
);

CREATE TABLE person1(
    id BIGSERIAL NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(7) NOT NULL,
    email VARCHAR(100),
    date_of_birth VARCHAR(50) NOT NULL,
    country_of_birth VARCHAR(50) NOT NULL,
    car_id BIGINT REFERENCES car(id),
    UNIQUE(car_id)
);

insert into
    person1 (
        first_name,
        last_name,
        gender,
        email,
        date_of_birth,
        country_of_birth
    )
values
    (
        'Fernanda',
        'Beardon',
        'Female',
        'fernandab@is.gd',
        '1953-10-28',
        'Finland'
    );

insert into
    person1 (
        first_name,
        last_name,
        gender,
        email,
        date_of_birth,
        country_of_birth
    )
values
    (
        'Amal',
        'Madhu',
        'Male',
        'amalmadhu@gmail.com',
        '1999-10-28',
        'India'
    );

insert into
    person1 (
        first_name,
        last_name,
        gender,
        email,
        date_of_birth,
        country_of_birth
    )
values
    (
        'Yadhu',
        'Krishna',
        'Male',
        'yadhu@gmail.com',
        '2021-10-28',
        'Australia'
    );

insert into
    car(make, model, price)
values
    ('Land Rover', 'Sterling', '87655.38');

insert into
    car(make, model, price)
values
    ('GMC', 'Acadia', '17622.69');