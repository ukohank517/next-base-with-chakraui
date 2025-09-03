-- CreateTable
CREATE TABLE `company` (
    `company_id` INTEGER NOT NULL AUTO_INCREMENT,
    `company_name` VARCHAR(191) NOT NULL,
    `deleted` BOOLEAN NOT NULL DEFAULT false,
    `createdAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `updatedAt` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `company_company_name_key`(`company_name`),
    PRIMARY KEY (`company_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
