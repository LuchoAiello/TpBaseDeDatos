CREATE TABLE `Usuarios` (
   `id (PK)` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(20) NOT NULL,
   `email` VARCHAR(50) NOT NULL,
   PRIMARY KEY (`id (PK)`)
);

CREATE TABLE `notas` (
   `id (PK)` INT NOT NULL AUTO_INCREMENT,
   `titulo` VARCHAR(100) NOT NULL,
   `fecha_creacion` DATETIME NOT NULL,
   `ultima_modificacion` DATETIME NOT NULL,
   `descripcion` TEXT NOT NULL,
   `puede_ser_eliminada` TINYINT NOT NULL,
   `usuario_id (FK)` INT NOT NULL,
   PRIMARY KEY (`id (PK)`)
);

CREATE TABLE `Categorias` (
   `id (PK)` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id (PK)`)
);


CREATE TABLE `notas_categorias` (
   `id (PK)` INT NOT NULL AUTO_INCREMENT,
   `nota_id (FK)` INT NOT NULL,
   `categoria_id (FK)` INT NOT NULL,
   PRIMARY KEY (`id (PK)`)
);

ALTER TABLE `notas` ADD CONSTRAINT `FK_76c07d3c-003f-4faf-b817-575f5cb707ac` FOREIGN KEY (`usuario_id (FK)`) REFERENCES `Usuarios`(`id (PK)`)  ;

ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_13315451-3f24-41d2-a808-9560a4817759` FOREIGN KEY (`categoria_id (FK)`) REFERENCES `Categorias`(`id (PK)`)  ;

ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_b6ef0ece-280a-4285-ab83-981ef83b7f93` FOREIGN KEY (`nota_id (FK)`) REFERENCES `notas`(`id (PK)`)  ;


INSERT INTO `usuarios` VALUES (1, 'Luciano', 'luchoaiello1@gmail.com'), (2, 'Martin', 'martinperez@hotmail.com'), (3, 'Juana', 'juani23@gmail.com'), (4, 'Santiago', 'santij@hotmail.com'), (5, 'Juan', 'Juanl@gmail.com'), (6, 'Laura', 'mlaura@hotmail.com'), (7, 'Matias', 'matiasSW@gmail.com'), (8, 'Jualian', 'jualAlvarez@gmail.com'), (9, 'Marcos', 'marcosP@gmail.com'), (10, 'Nico', 'NicoB@gmail.com')

INSERT INTO `notas` VALUES (1, 'Tenis', '2021-11-02 11:49:00', '2021-11-02 11:49:00', 'Ir a jugar al tenis con Marcos el 13/11', 0, 1),(2, 'BMW', '2020-5-06 16:45:00', '2020-5-06 16:45:00', 'Ir a la concesionaria a comprar el auto', 1, 5), (3, 'El señor de los anillos', '2015-04-10 14:30:00', '2015-04-10 14:30:00', 'Ir a ver la pelicula al cine con Juan', 0, 7),(4, 'Compras al Super', '2021-04-23 16:49:20', '2021-04-23 16:49:20', 'Ir al super a hacer la compra de la semana', 0, 10), (5, 'Sims4', '2021-01-29 9:45:23', '2021-01-29 9:45:23', 'Descargar el sims4', 1, 2), (6, 'Cumple de Martina', '2019-06-12 16:23:58', '2019-06-12 16:23:58', 'Cumpleaños de Martina el 06/12', 0, 4), (7, 'Vacaciones', '2021-09-23 13:39:19', '2021-09-23 13:39:19', 'Reservar hotel para fin de año', 0, 9), (8, 'Programacion', '2021-03-02 11:59:42', '2021-03-02 11:59:42', 'Practicar para el examen del 23/03', 1, 3), (9, 'Torta', '2018-05-11 16:02:32', '2018-05-11 16:02:32', 'Comprar huevos y harina para hacer la torta', 0, 6), (10, 'TomorrowLand', '2021-07-23 08:30:29', '2021-07-23 08:30:29', 'Escuchar el ultimo oficial aftermovie de Tomorrowland', 1, 8)

INSERT INTO `categorias` VALUES (1, 'Deporte'), (2, 'Cocina'), (3, 'Vacaciones'),(4, 'Compras'),(5, 'Cumpleaños'),(6, 'Juegos'),(7, 'Musica'),(8, 'Autos'),(9, 'Estudio'),(10, 'Peliculas')

INSERT INTO `notas_categorias` values (1, 1, 1), (2, 2 , 8), (3, 3, 10), (4, 4, 4), (5, 5, 6), (6, 6, 5), (7, 7, 3), (8, 8, 9), (9, 9, 2), (10, 10, 7)
