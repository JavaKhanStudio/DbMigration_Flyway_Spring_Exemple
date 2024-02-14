-- Create `orders` table
CREATE TABLE IF NOT EXISTS `orders` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `customer_id` INT NOT NULL,
    `book_id` INT NOT NULL,
    `quantity` INT NOT NULL,
    `order_date` DATETIME NOT NULL,
    `total_price` DECIMAL(10, 2) NOT NULL,
    CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers`(`id`),
    CONSTRAINT `fk_book` FOREIGN KEY (`book_id`) REFERENCES `books`(`id`)
);
