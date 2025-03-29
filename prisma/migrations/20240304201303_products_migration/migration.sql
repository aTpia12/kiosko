-- CreateTable
CREATE TABLE `Product` (
    `id` INT NOT NULL AUTO_INCREMENT,
    `name` TEXT NOT NULL,
    `price` DOUBLE NOT NULL,
    `image` TEXT NOT NULL,
    `categoryId` INT NOT NULL,

    PRIMARY KEY (`id`)
);

-- Add Foreign Key
ALTER TABLE `Product`
    ADD CONSTRAINT `Product_categoryId_fkey`
        FOREIGN KEY (`categoryId`) REFERENCES `Category`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
