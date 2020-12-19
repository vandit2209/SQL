-- Insert Into Clause Tutorial

insert into customers
values
(
	DEFAULT,
    'John',
    'Smith',
    '1990-01-01',
    NULL,
    'address',
    'city',
    'CA',
    DEFAULT
);

-- We can define which columns we are supplying values to


insert into customers
(
	first_name,
    last_name,
    birth_date,
    address,
    city,
    state
)
values
(
    'John',
    'Smith',
    '1990-01-01',
    'address',
    'city',
    'CA'
);

-- We can also change the order of values being supplied

insert into customers
(
	last_name,
	first_name,
    birth_date,
    address,
    state,
    city
)
values
(
	'Smith',
    'John',
    '1990-01-01',
    'address',
    'CA',
    'city'
);