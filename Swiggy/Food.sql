--
-- Database: `Food`
-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE customer (
  customer_id number NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  email_id varchar(255) NOT NULL,
  pass varchar(255) NOT NULL,
  phone_no varchar(10) NOT NULL,
  statename varchar(255) NOT NULL,
  city varchar(255) NOT NULL,
  landmark varchar(255) NOT NULL,
  pincode number NOT NULL
);

--
-- Dumping data for table `customer`
--

INSERT INTO customer (customer_id, first_name, last_name, email_id, pass, phone_no, statename, city, landmark, pincode) VALUES
(1, 'Mark', 'Twain', 'twain11@gmail.com', '12345', '9111111111', 'karnataka', 'Bangalore', 'state bank', 574154);
INSERT INTO customer (customer_id, first_name, last_name, email_id, pass, phone_no, statename, city, landmark, pincode) VALUES
(2, 'Jotaro', 'Joestar', 'jojo@gmail.com', '123456', '9764316497', 'New Delhi', 'New Delhi', '7-11 store', 574154);
INSERT INTO customer (customer_id, first_name, last_name, email_id, pass, phone_no, statename, city, landmark, pincode) VALUES
(3, 'Sheldon', 'Cooper', 'shelly@gmail.com', '2345', '9888888856', 'karnataka', 'Bangalore', '7-11 store', 574154);
INSERT INTO customer (customer_id, first_name, last_name, email_id, pass, phone_no, statename, city, landmark, pincode) VALUES
(4, 'kishore', 'kumar', 'kumar45@gmail.com', '12345', '9865326598', 'karnataka', 'Bangalore', ' ', 50004);
INSERT INTO customer (customer_id, first_name, last_name, email_id, pass, phone_no, statename, city, landmark, pincode) VALUES
(5, 'bob', 'sin', 'bob14@gmail.com', '45698', '9081649731', 'karnataka', 'Mangalore', 'bda complex hbr layout', 560102);
INSERT INTO customer (customer_id, first_name, last_name, email_id, pass, phone_no, statename, city, landmark, pincode) VALUES
(6, 'Mary', 'dsouza', 'mary@gmail.com', '123456', '9632895563', 'karnataka', 'bangalore', 'vijayanagar vijaya bank layout';
INSERT INTO customer (customer_id, first_name, last_name, email_id, pass, phone_no, statename, city, landmark, pincode) VALUES560040);
(7, 'max', 'dsouza', 'max12@gmail.com', '123456', '9741628856', 'karnataka', 'mangalore', 'urva store', 574154);
INSERT INTO customer (customer_id, first_name, last_name, email_id, pass, phone_no, statename, city, landmark, pincode) VALUES
(8, 'maxton', 'mosses', 'mos12@gmail.com', '123', '9741628856', 'karnataka', 'bangalore', 'city centre mall mg road', 574154
INSERT INTO customer (customer_id, first_name, last_name, email_id, pass, phone_no, statename, city, landmark, pincode) VALUES);
(9, 'Feona', 'Melisa', 'melisa@gmail.com', '123', '9101928856', 'karnataka', 'mangalore', 'near state bank circle', 574154);

select * from customer;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE menu (
  menu_id number NOT NULL,
  menu_name varchar(255) NOT NULL,
  price number NOT NULL
); 

Desc menu;
--
-- Dumping data for table `menu`
--

INSERT INTO menu (menu_id, menu_name, price) VALUES
(1, 'American Pizza', 350);
INSERT INTO menu (menu_id, menu_name, price) VALUES
(2, 'Veg Pizza', 250);
INSERT INTO menu (menu_id, menu_name, price) VALUES
(3, 'Chicken Pizza', 400);
INSERT INTO menu (menu_id, menu_name, price) VALUES
(4, 'Pepperroni Pizza', 450);
INSERT INTO menu (menu_id, menu_name, price) VALUES
(5, 'Veg Burger', 50);
INSERT INTO menu (menu_id, menu_name, price) VALUES
(6, 'Chicken Burger', 80);
INSERT INTO menu (menu_id, menu_name, price) VALUES
(7, 'Power Burger', 300);
INSERT INTO menu (menu_id, menu_name, price) VALUES
(8, 'Sandwich Burger', 180);
INSERT INTO menu (menu_id, menu_name, price) VALUES
(9, 'Gulab Jamun', 200);
INSERT INTO menu (menu_id, menu_name, price) VALUES
(10, 'Chocholate Moose', 250);
INSERT INTO menu (menu_id, menu_name, price) VALUES
(11, 'Naugat Moose', 300);
INSERT INTO menu (menu_id, menu_name, price) VALUES
(12, 'Belgium Waffle', 150);

ALTER TABLE MENU ADD RATING number(1);
desc menu;
UPDATE MENU
SET
  RATING = 5
WHERE
  MENU_ID = 12;
  
  select * from menu;

ALTER TABLE MENU ADD RESTAURANT_ID varchar(5);

UPDATE MENU
SET
  RESTAURANT_ID = '12345'
WHERE
  MENU_NAME = 'American Pizza';
UPDATE MENU
SET
  RESTAURANT_ID = '12345'
WHERE
  MENU_NAME = 'Veg Pizza';
UPDATE MENU
SET
  RESTAURANT_ID = '12345'
WHERE
  MENU_NAME = 'Chicken Pizza';
UPDATE MENU
SET
  RESTAURANT_ID = '12345'
WHERE
  MENU_NAME = 'Power Burger';
UPDATE MENU
SET
  RESTAURANT_ID = '12345'
WHERE
  MENU_NAME = 'American Pizza';
-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

--CREATE TABLE orders (
--  order_id number NOT NULL,
--  customer_id number NOT NULL,
--  menu_id number NOT NULL,
--  quantity number NOT NULL DEFAULT 1,
--  time_stamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
--); 
select * from menu order by rating;
create table orders(
 order_id number ,
 customer_id number ,
 menu_id number,
 quantity number default 1,
 order_status varchar(20) default null,  
 time_stamp TIMESTAMP
);
desc orders;

--
-- inserting data for table `orders`
--

INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(138, 2, 8, 2, 'DELIVERED', '06-Nov-2021 12:58:42');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(139, 2, 4, 2, 'DELIVERED', '06-Nov-2021 12:58:37');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(140, 2, 2, 2, 'DELIVERED', ' 06-Nov-2021 12:58:53');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(141, 2, 1, 2, 'DELIVERED', ' 06-Nov-2021 12:58:47');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(143, 2, 1, 1, 'DELIVERED', '06-Nov-2021 04:21:26');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(146, 2, 12, 1, 'DELIVERED', '06-Nov-2021 05:43:38');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(147, 2, 11, 1, 'DELIVERED', '07-Nov-2021 05:43:42');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(148, 2, 1, 1, 'DELIVERED', '07-Nov-2021 14:12:03');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(149, 2, 8, 2, 'DELIVERED', '12-Nov-2021 09:55:38');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(150, 2, 7, 2, 'DELIVERED', '12-Nov-2021 15:28:08');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(151, 2, 9, 2, 'PAYMENT_CONFIRMED', '12-Nov-2021 04:36:31');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(152, 2, 10, 1, 'PAYMENT_CONFIRMED', '12-Nov-2021 04:36:31');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(153, 2, 1, 2, 'DELIVERED', '13-Nov-2021 09:55:47');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(156, 2, 6, 2, 'DELIVERED', '13-Nov-2021 04:31:09');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(159, 9, 1, 1, 'ADDED_TO_CART', '22-Nov-2021 07:59:28');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(160, 2, 1, 2, 'DELIVERED', '14-Nov-2021 04:16:04');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(162, 2, 1, 2, 'PAYMENT_CONFIRMED', '22-Nov-2021 09:54:04');
INSERT INTO orders (order_id, customer_id, menu_id, quantity, order_status, time_stamp) VALUES
(165, 2, 1, 1, 'DELIVERED', '11-Nov-2021 10:58:53');

select * from orders;
-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE payment (
  id number NOT NULL,
  order_id int(255) NOT NULL,
  payment_type NOT NULL DEFAULT 'CASH_ON_DELIVERY',
  payment_status  NOT NULL DEFAULT 'NOT_CONFIRMED',
  time_stamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
); 
drop table payment;
create table payment(
id number not null,
order_id number not null,
payment_type varchar(30) not null,
payment_status varchar(20) not null,
time_stamp timestamp not null
);

--
-- Dumping data for table `payment`
--

INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(209, 138, 'CASH_ON_DELIVERY', 'CONFIRMED', '06-Nov-2021 12:53:56');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(210, 139, 'CASH_ON_DELIVERY', 'CONFIRMED', '06-Nov-2021 12:53:56');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(212, 140, 'ONLINE_PAYMENT', 'CONFIRMED', '06-Nov-2021 12:57:37');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(213, 141, 'ONLINE_PAYMENT', 'CONFIRMED', '06-Nov-2021 12:57:37');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(215, 143, 'CASH_ON_DELIVERY', 'CONFIRMED', '06-Nov-2021 07:43:49');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(216, 146, 'PayTM', 'CONFIRMED', '06-Nov-2021 04:20:01');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(217, 147, 'NEFT', 'CONFIRMED', '07-Nov-2021 04:20:01');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(219, 148, 'UPI', 'CONFIRMED', '07-Nov-2021 05:44:28');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(220, 149, 'Debit Card', 'CONFIRMED', '12-Nov-2021 07:54:10');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(221, 150, 'Credit Card', 'CONFIRMED', '12-Nov-2021 07:54:10');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(223, 151, 'PhonePe', 'CONFIRMED', '12-Nov-2021 04:36:31');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(224, 152, 'CASH_ON_DELIVERY', 'CONFIRMED', '12-Nov-2021 04:36:31');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(225, 153, 'GPay', 'CONFIRMED', '13-Nov-2021 04:36:31');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(237, 156, 'CASH_ON_DELIVERY', 'CONFIRMED', '13-Nov-2021 06:29:11');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(238, 160, 'CASH_ON_DELIVERY', 'CONFIRMED', '22-Nov-2021 04:15:10');
INSERT INTO payment (id, order_id, payment_type, payment_status, time_stamp) VALUES
(239, 162, 'Credit Card', 'CONFIRMED', '14-Nov-2021 09:54:04');
-- --------------------------------------------------------
select * from payment;
--
-- Table structure for table `payment_details`
--

CREATE TABLE payment_details (
  payment_id number NOT NULL,
  customer_id number NOT NULL,
  card_number varchar(16) NOT NULL,
  card_holder_name varchar(255) NOT NULL,
  cvv number NOT NULL,
  exp_month number NOT NULL,
  exp_year number NOT NULL,
  time_stamp timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `payment_details`
--

INSERT INTO payment_details (payment_id, customer_id, card_number, card_holder_name, cvv, exp_month, exp_year, time_stamp) VALUES
(8, 2, '1234123412341234', 'Sheldon', 123, 10, 25, '2018-11-04 04:21:29');
INSERT INTO payment_details (payment_id, customer_id, card_number, card_holder_name, cvv, exp_month, exp_year, time_stamp) VALUES
(9, 2, '1234123412341234', 'Jotaro', 123, 12, 34, '2018-11-06 09:21:19');
INSERT INTO payment_details (payment_id, customer_id, card_number, card_holder_name, cvv, exp_month, exp_year, time_stamp) VALUES
(10, 2, '1234123412341234', 'Joseph', 123, 3, 19, '2018-11-06 12:57:36');
INSERT INTO payment_details (payment_id, customer_id, card_number, card_holder_name, cvv, exp_month, exp_year, time_stamp) VALUES
(11, 2, '1234123412341234', 'Kishore', 122, 12, 22, '2018-11-07 04:20:01');
INSERT INTO payment_details (payment_id, customer_id, card_number, card_holder_name, cvv, exp_month, exp_year, time_stamp) VALUES
(12, 2, '1234123412341234', 'winston', 123, 12, 22, '2018-11-12 09:54:04');
INSERT INTO payment_details (payment_id, customer_id, card_number, card_holder_name, cvv, exp_month, exp_year, time_stamp) VALUES
(13, 2, '1234123412341234', 'winston', 123, 12, 22, '2018-11-12 10:57:53');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE restaurant (
  restaurant_id int(255) NOT NULL,
  password varchar(255) NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  designation enum('EMPLOYEE','ADMIN') NOT NULL DEFAULT 'EMPLOYEE'
); 
select * from restaurant;
desc restaurant;
--
-- Dumping data for table `restaurant`
--

INSERT INTO restaurant (restaurant_id, password, first_name, last_name, designation) VALUES
(101, '123456', 'Winston', 'Dsouza', 'ADMIN');
INSERT INTO restaurant (restaurant_id, password, first_name, last_name, designation) VALUES
(1001, '1234', 'Sham', 'ram', 'EMPLOYEE');
INSERT INTO restaurant (restaurant_id, password, first_name, last_name, designation) VALUES
(1005, '12345', 'Mahesh', 'Kanth', 'EMPLOYEE');
INSERT INTO restaurant (restaurant_id, password, first_name, last_name, designation) VALUES
(1009, '1234', 'kiran', 'nath', 'EMPLOYEE');

--
-- Triggers `restaurant`
--
DELIMITER $$
CREATE TRIGGER `res_id` BEFORE INSERT ON `restaurant` FOR EACH ROW BEGIN
 SET NEW.restaurant_id = (SELECT MAX(restaurant_id) + 4 FROM restaurant);
 END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `email_id` (`email_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE menu
  ADD PRIMARY KEY (menu_id);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE customer
  MODIFY customer_id int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE menu
  MODIFY menu_id int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE orders
  MODIFY order_id int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=241;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `payment_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `restaurant_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1010;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);

--
-- Constraints for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD CONSTRAINT `payment_details_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
