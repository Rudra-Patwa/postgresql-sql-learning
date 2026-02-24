# orders Table 

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `cust_id` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `cust_id` (`cust_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci