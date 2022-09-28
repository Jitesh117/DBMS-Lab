CREATE TABLE CATEGORIES(
    CAT_ID NUMBER(3) NOT NULL,
    CAT_TITLE VARCHAR(255) NOT NULL
);

INSERT INTO CATEGORIES(
    CAT_ID,
    CAT_TITLE
) VALUES(
    1,
    'Daily Bus'
);

INSERT INTO CATEGORIES(
    CAT_ID,
    CAT_TITLE
) VALUES(
    2,
    'Weekly Bus'
);

INSERT INTO CATEGORIES(
    CAT_ID,
    CAT_TITLE
) VALUES(
    3,
    'Night Bus'
);
--DROP TABLE CATEGORIES;

CREATE TABLE COST(
    starting VARCHAR(255) NOT NULL,
    stopping VARCHAR(255) NOT NULL,
    CATEGORY NUMBER(3) NOT NULL,
    COST NUMBER(3) NOT NULL
);

INSERT INTO COST(
    STARTING,
    STOPPING,
    CATEGORY,
    COST
) VALUES(
    'Kanpur',
    'Lucknow',
    3,
    100
);

INSERT INTO COST(
    STARTING,
    STOPPING,
    CATEGORY,
    COST
) VALUES(
    'Unnao',
    'Lucknow',
    3,
    152
);

create table orders(
    order_id number(3) not null,
    bus_id number(3) not null,
    user_id number(3) not null,
    user_name varchar(255) not null,
    user_age number(3) not null,
    starting varchar(255) not null,
    stopping varchar(255) not null,
    dateoftravel date not null,
    cost number(3) not null
);

INSERT INTO ORDERS(
    ORDER_ID,
    BUS_ID,
    USER_ID,
    USER_NAME,
    USER_AGE,
    STARTING,
    STOPPING,
    DATEOFTRAVEL,
    COST
) VALUES (
    5,
    2,
    2,
    'Pratyush',
    20,
    'kanpur',
    'lucknow',
    '29-Mar-2022',
    100
);

INSERT INTO ORDERS(
    ORDER_ID,
    BUS_ID,
    USER_ID,
    USER_NAME,
    USER_AGE,
    STARTING,
    STOPPING,
    DATEOFTRAVEL,
    COST
) VALUES (
    6,
    2,
    2,
    'manish',
    20,
    'kanpur',
    'lucknow',
    '29-Mar-2022',
    100
);

INSERT INTO ORDERS(
    ORDER_ID,
    BUS_ID,
    USER_ID,
    USER_NAME,
    USER_AGE,
    STARTING,
    STOPPING,
    DATEOFTRAVEL,
    COST
) VALUES (
    7,
    2,
    2,
    'Pratyush',
    20,
    'kanpur',
    'lucknow',
    '29-Mar-2022',
    150
);
INSERT INTO ORDERS(
    ORDER_ID,
    BUS_ID,
    USER_ID,
    USER_NAME,
    USER_AGE,
    STARTING,
    STOPPING,
    DATEOFTRAVEL,
    COST
) VALUES (
    10,
    2,
    2,
    'manish',
    20,
    'kanpur',
    'lucknow',
    '29-Mar-2022',
    100
);
INSERT INTO ORDERS(
    ORDER_ID,
    BUS_ID,
    USER_ID,
    USER_NAME,
    USER_AGE,
    STARTING,
    STOPPING,
    DATEOFTRAVEL,
    COST
) VALUES (
    11,
    2,
    3,
    'Hemant',
    52,
    'Chennai',
    'Chittor',
    '17-Mar-2022',
    100
);
INSERT INTO ORDERS(
    ORDER_ID,
    BUS_ID,
    USER_ID,
    USER_NAME,
    USER_AGE,
    STARTING,
    STOPPING,
    DATEOFTRAVEL,
    COST
) VALUES (
    11,
    2,
    3,
    'Ankit',
    45,
    'Agra',
    'Mathura',
    '17-Mar-2022',
    100
);
INSERT INTO ORDERS(
    ORDER_ID,
    BUS_ID,
    USER_ID,
    USER_NAME,
    USER_AGE,
    STARTING,
    STOPPING,
    DATEOFTRAVEL,
    COST
) VALUES (
    14,
    2,
    3,
    'Pratyush',
    45,
    'Agra',
    'Mathura',
    '17-Mar-2022',
    100
);
INSERT INTO ORDERS(
    ORDER_ID,
    BUS_ID,
    USER_ID,
    USER_NAME,
    USER_AGE,
    STARTING,
    STOPPING,
    DATEOFTRAVEL,
    COST
) VALUES (
    15,
    2,
    3,
    'Prateek',
    20,
    'Delhi',
    'Surat',
    '17-Mar-2022',
    100
);
INSERT INTO ORDERS(
    ORDER_ID,
    BUS_ID,
    USER_ID,
    USER_NAME,
    USER_AGE,
    STARTING,
    STOPPING,
    DATEOFTRAVEL,
    COST
) VALUES (
    17,
    2,
    3,
    'Jitesh',
    20,
    'Delhi',
    'Almora',
    '17-Dec-2022',
    100
);
select * from orders;
delete from orders
where order_id = 6;

CREATE TABLE SEATS(
    BUS_ID NUMBER(3) NOT NULL,
    MAX_SEATS NUMBER(3) NOT NULL,
    AVAILABLE_SEATS NUMBER(3) NOT NULL
);

