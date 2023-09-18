SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema notas_de_texto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `notas_de_texto` DEFAULT CHARACTER SET utf8 ;
USE `notas_de_texto` ;

-- -----------------------------------------------------
-- Table `notas_de_texto`.`categorias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `notas_de_texto`.`categorias` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `notas_de_texto`.`usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `notas_de_texto`.`usuarios` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `notas_de_texto`.`notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `notas_de_texto`.`notas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `fecha_de_creacion` DATE NOT NULL,
  `fecha_de_modificacion` DATE NOT NULL,
  `descripcion` TEXT NOT NULL,
  `eliminar_nota` TINYINT(4) NOT NULL,
  `usuario_id` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `notas_usuarios_idx` (`usuario_id` ASC),
  CONSTRAINT `notas_usuarios`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `notas_de_texto`.`usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 12
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `notas_de_texto`.`categorias/notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `notas_de_texto`.`categorias/notas` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `id_notas` INT(11) NOT NULL,
  `id_categorias` INT(11) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `CATEGORIAS/NOTAS_NOTAS_idx` (`id_notas` ASC),
  INDEX `CATEGORIAS/NOTAS_CATEGORIAS_idx` (`id_categorias` ASC),
  CONSTRAINT `CATEGORIAS/NOTAS_CATEGORIAS`
    FOREIGN KEY (`id_categorias`)
    REFERENCES `notas_de_texto`.`categorias` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CATEGORIAS/NOTAS_NOTAS`
    FOREIGN KEY (`id_notas`)
    REFERENCES `notas_de_texto`.`notas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
AUTO_INCREMENT = 16
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `notas_de_texto`.`categorias`
-- -----------------------------------------------------
START TRANSACTION;
USE `notas_de_texto`;
INSERT INTO `notas_de_texto`.`categorias` (`id`, `categoria`) VALUES (id, 'categoria');
INSERT INTO `notas_de_texto`.`categorias` (`id`, `categoria`) VALUES (1, 'música');
INSERT INTO `notas_de_texto`.`categorias` (`id`, `categoria`) VALUES (2, 'literatura');
INSERT INTO `notas_de_texto`.`categorias` (`id`, `categoria`) VALUES (3, 'hobbies');
INSERT INTO `notas_de_texto`.`categorias` (`id`, `categoria`) VALUES (4, 'fechas importantes');
INSERT INTO `notas_de_texto`.`categorias` (`id`, `categoria`) VALUES (5, 'deporte');
INSERT INTO `notas_de_texto`.`categorias` (`id`, `categoria`) VALUES (6, 'mi diario');
INSERT INTO `notas_de_texto`.`categorias` (`id`, `categoria`) VALUES (7, 'películas');
INSERT INTO `notas_de_texto`.`categorias` (`id`, `categoria`) VALUES (, '');

COMMIT;


-- -----------------------------------------------------
-- Data for table `notas_de_texto`.`usuarios`
-- -----------------------------------------------------
START TRANSACTION;
USE `notas_de_texto`;
INSERT INTO `notas_de_texto`.`usuarios` (`id`, `nombre`, `email`) VALUES (id, 'nombre', 'email');
INSERT INTO `notas_de_texto`.`usuarios` (`id`, `nombre`, `email`) VALUES (1, 'John Doe', ' john.doe@example.com');
INSERT INTO `notas_de_texto`.`usuarios` (`id`, `nombre`, `email`) VALUES (2, 'Jane Smith', ' jane.smith@example.com');
INSERT INTO `notas_de_texto`.`usuarios` (`id`, `nombre`, `email`) VALUES (3, ' Laura García', 'laura.garcia@example.com');
INSERT INTO `notas_de_texto`.`usuarios` (`id`, `nombre`, `email`) VALUES (4, 'Diego Martínez', 'diego.martinez@example.com');
INSERT INTO `notas_de_texto`.`usuarios` (`id`, `nombre`, `email`) VALUES (5, 'Andrea Torres', 'andrea.torres@example.com');
INSERT INTO `notas_de_texto`.`usuarios` (`id`, `nombre`, `email`) VALUES (6, 'Pedro RamírezPedro Ramírez', 'pedro.ramirez@example.com');
INSERT INTO `notas_de_texto`.`usuarios` (`id`, `nombre`, `email`) VALUES (7, ' Isabel Fernández', 'isabel.fernandez@example.com');
INSERT INTO `notas_de_texto`.`usuarios` (`id`, `nombre`, `email`) VALUES (8, 'Juan Pérez', ' juan.perez@example.com');
INSERT INTO `notas_de_texto`.`usuarios` (`id`, `nombre`, `email`) VALUES (9, 'María Rodríguez', 'maria.rodriguez@example.com');
INSERT INTO `notas_de_texto`.`usuarios` (`id`, `nombre`, `email`) VALUES (10, 'Carlos González', 'carlos.gonzalez@example.com');

COMMIT;


-- -----------------------------------------------------
-- Data for table `notas_de_texto`.`notas`
-- -----------------------------------------------------
START TRANSACTION;
USE `notas_de_texto`;
INSERT INTO `notas_de_texto`.`notas` (`id`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `eliminar_nota`, `usuario_id`) VALUES (id, 'titulo', 'fecha_de_creacion', 'fecha_de_modificacion', 'descripcion', eliminar_nota, usuario_id);
INSERT INTO `notas_de_texto`.`notas` (`id`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `eliminar_nota`, `usuario_id`) VALUES (2, 'Tareas pendientes', '2023-09-18', '2023-09-18', 'Hacer las tareas del hogar', 0, 2);
INSERT INTO `notas_de_texto`.`notas` (`id`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `eliminar_nota`, `usuario_id`) VALUES (3, 'Lista de compras', '2023-09-18', '2023-09-18', 'Comprar leche, pan y huevos', 0, 3);
INSERT INTO `notas_de_texto`.`notas` (`id`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `eliminar_nota`, `usuario_id`) VALUES (4, 'Proyecto de trabajo', '2023-09-18', '2023-09-18', 'Continuar trabajando en el proyecto X', 0, 4);
INSERT INTO `notas_de_texto`.`notas` (`id`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `eliminar_nota`, `usuario_id`) VALUES (5, 'Ideas para vacaciones', '2023-09-18', '2023-09-18', 'Investigar destinos para las vacaciones', 0, 1);
INSERT INTO `notas_de_texto`.`notas` (`id`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `eliminar_nota`, `usuario_id`) VALUES (6, 'Reunión de equipo', '2023-09-18', '2023-09-18', 'Preparar la agenda para la reunión', 0, 2);
INSERT INTO `notas_de_texto`.`notas` (`id`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `eliminar_nota`, `usuario_id`) VALUES (7, 'Recetas de cocina', '2023-09-18', '2023-09-18', 'Buscar nuevas recetas para probar', 0, 3);
INSERT INTO `notas_de_texto`.`notas` (`id`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `eliminar_nota`, `usuario_id`) VALUES (8, 'Plan de entrenamiento', '2023-09-18', '2023-09-18', 'Diseñar un plan de entrenamiento semanal', 0, 4);
INSERT INTO `notas_de_texto`.`notas` (`id`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `eliminar_nota`, `usuario_id`) VALUES (9, 'Proyecto de arte', '2023-09-18', '2023-09-18', 'Terminar la pintura para el proyecto', 0, 1);
INSERT INTO `notas_de_texto`.`notas` (`id`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `eliminar_nota`, `usuario_id`) VALUES (10, 'Lecturas recomendadas', '2023-09-18', '2023-09-18', 'Hacer una lista de libros para leer', 0, 2);
INSERT INTO `notas_de_texto`.`notas` (`id`, `titulo`, `fecha_de_creacion`, `fecha_de_modificacion`, `descripcion`, `eliminar_nota`, `usuario_id`) VALUES (11, 'Planificación financiera', '2023-09-18', '2023-09-18', 'Revisar y ajustar el presupuesto mensual', 0, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `notas_de_texto`.`categorias/notas`
-- -----------------------------------------------------
START TRANSACTION;
USE `notas_de_texto`;
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (id, id_notas, id_categorias);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (1, 2, 1);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (2, 2, 2);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (3, 4, 3);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (4, 4, 5);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (5, 3, 4);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (6, 5, 6);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (7, 6, 5);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (8, 7, 5);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (9, 8, 5);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (10, 9, 2);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (11, 10, 5);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (12, 10, 6);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (13, 11, 2);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (14, 11, 3);
INSERT INTO `notas_de_texto`.`categorias/notas` (`id`, `id_notas`, `id_categorias`) VALUES (15, 11, 5);

COMMIT;

