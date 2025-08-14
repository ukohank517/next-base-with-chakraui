-- 店員情報
CREATE TABLE IF NOT EXISTS `staff`(
    staff_id     INT           NOT NULL AUTO_INCREMENT,
    staff_name   VARCHAR(100)  NOT NULL UNIQUE,
    created_at   DATETIME(6)   NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    updated_at   DATETIME(6)   NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
    PRIMARY KEY (staff_id)
);

INSERT INTO `staff` (staff_name) VALUES
('Alice'),
('Bob'),
('Charlie');