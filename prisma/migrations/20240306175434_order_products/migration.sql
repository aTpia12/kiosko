-- CreateTable
CREATE TABLE `Order` (
                         `id` INT NOT NULL AUTO_INCREMENT,
                         `name` TEXT NOT NULL,
                         `total` DOUBLE NOT NULL,
                         `date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
                         `status` BOOLEAN NOT NULL DEFAULT FALSE,
                         `orderReadyAt` TIMESTAMP(3),

                         PRIMARY KEY (`id`)
);

-- Create Table
CREATE TABLE `OrderProducts` (
                                 `id` INT NOT NULL AUTO_INCREMENT,
                                 `orderId` INT NOT NULL,
                                 `productId` INT NOT NULL,

                                 PRIMARY KEY (`id`)
);

-- Add Foreign Key
ALTER TABLE `OrderProducts`
    ADD CONSTRAINT `OrderProducts_orderId_fkey`
        FOREIGN KEY (`orderId`) REFERENCES `Order`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- Add Foreign Key
ALTER TABLE `OrderProducts`
    ADD CONSTRAINT `OrderProducts_productId_fkey`
        FOREIGN KEY (`productId`) REFERENCES `Product`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
