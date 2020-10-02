
-- -----------------------------------------------------
-- Table `app`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app`.`product` (
  `pd_id` INT NOT NULL AUTO_INCREMENT,
  `pd_name` VARCHAR(45) NULL,
  PRIMARY KEY (`pd_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app`.`product_unit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app`.`product_unit` (
  `pdu_id` INT NOT NULL AUTO_INCREMENT,
  `pdu_name` VARCHAR(45) NULL,
  PRIMARY KEY (`pdu_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app`.`location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app`.`location` (
  `lc_id` INT NOT NULL AUTO_INCREMENT,
  `lc_name` VARCHAR(45) NULL,
  PRIMARY KEY (`lc_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `app`.`products_locations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `app`.`products_locations` (
  `pl_id` INT NOT NULL AUTO_INCREMENT,
  `pl_pd_id` INT NULL,
  `pl_lc_id` INT NULL,
  `pl_amount` DOUBLE NULL,
  `pl_pdu_id` INT NULL,
  PRIMARY KEY (`pl_id`),
  INDEX `fk_products_locations_location_idx` (`pl_lc_id` ASC),
  INDEX `fk_products_locations_product1_idx` (`pl_pd_id` ASC),
  INDEX `fk_products_locations_product_unit1_idx` (`pl_pdu_id` ASC),
  CONSTRAINT `fk_products_locations_location`
    FOREIGN KEY (`pl_lc_id`)
    REFERENCES `app`.`location` (`lc_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_products_locations_product1`
    FOREIGN KEY (`pl_pd_id`)
    REFERENCES `app`.`product` (`pd_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_products_locations_product_unit1`
    FOREIGN KEY (`pl_pdu_id`)
    REFERENCES `app`.`product_unit` (`pdu_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
