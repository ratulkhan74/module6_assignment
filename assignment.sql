/* Creating Customers table*/

CREATE TABLE
    `customers` (
        `customer_id` INT(11) NOT NULL AUTO_INCREMENT,
        `name` VARCHAR(255) NOT NULL,
        `email` VARCHAR(255) NOT NULL,
        `location` VARCHAR(255) NOT NULL,
        PRIMARY KEY (`customer_id`)
    ) ENGINE = MyISAM;

/* Inserting data into customer table */

INSERT INTO
    `customers` (
        `customer_id`,
        `name`,
        `email`,
        `location`
    )
VALUES (
        NULL,
        'Kevin Lewin',
        'KevinSLewin@jourrapide.com',
        '672 Maryland Avenue\r\nTampa, FL 33614'
    );

/* Creating Ordres table*/

CREATE TABLE
    `orders` (
        `order_id` INT(11) NOT NULL AUTO_INCREMENT,
        `customer_id` INT(11) DEFAULT NULL,
        `order_date` DATETIME NOT NULL,
        `amount` FLOAT NOT NULL,
        PRIMARY KEY (`order_id`)
    ) ENGINE = MyISAM;

/* Inserting data into orders table */

INSERT INTO
    `orders` (
        `order_id`,
        `customer_id`,
        `order_date`,
        `amount`
    )
VALUES (
        NULL,
        '1',
        '2023-11-05 12:11:30.000000',
        '500'
    );

/* Creating Products table*/

CREATE TABLE
    `products` (
        `product_id` INT(11) NOT NULL AUTO_INCREMENT,
        `name` VARCHAR(255) NOT NULL,
        `description` VARCHAR(255) NOT NULL,
        `price` FLOAT NOT NULL,
        PRIMARY KEY (`product_id`)
    ) ENGINE = MyISAM;

/* Inserting data into products table */

INSERT INTO
    `products` (
        `product_id`,
        `name`,
        `description`,
        `price`
    )
VALUES (
        NULL,
        'Headphone',
        '7 8 Plus X XR XS Max 12 12 pro max 13 13 pro max Wired Earphone With Microphone Gaming Headset Stereo',
        '500'
    );

/* Creating Categories table*/

CREATE TABLE
    `categories` (
        `category_id` INT(11) NOT NULL AUTO_INCREMENT,
        `name` VARCHAR(255) NOT NULL,
        PRIMARY KEY (`category_id`)
    ) ENGINE = MyISAM;

/* Inserting data into categories  table */

INSERT INTO
    `categories` (`category_id`, `name`)
VALUES (NULL, 'Electronics');

/* Creating Ordres table*/

CREATE TABLE
    `order_items` (
        `order_item_id` INT(11) NOT NULL AUTO_INCREMENT,
        `order_id` INT(11) NOT NULL,
        `product_id` INT(11) NOT NULL,
        `quantity` INT(50) NOT NULL,
        `unit_price` INT(100) NOT NULL,
        PRIMARY KEY (`order_item_id`)
    ) ENGINE = MyISAM;

/* Inserting data into order_items table */

INSERT INTO
    `order_items` (
        `order_item_id`,
        `order_id`,
        `product_id`,
        `quantity`,
        `unit_price`
    )
VALUES (NULL, '1', '1', '5', '500');