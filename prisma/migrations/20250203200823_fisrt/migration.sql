-- AlterTable
ALTER TABLE `Category` MODIFY `name` VARCHAR(191) NOT NULL,
    MODIFY `slug` VARCHAR(191) NOT NULL;

-- AlterTable
ALTER TABLE `Order` MODIFY `name` VARCHAR(191) NOT NULL,
    MODIFY `date` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    MODIFY `orderReadyAt` DATETIME(3) NULL;

-- AlterTable
ALTER TABLE `Product` MODIFY `name` VARCHAR(191) NOT NULL,
    MODIFY `image` VARCHAR(191) NOT NULL;
