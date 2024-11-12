--Insertar datos
INSERT INTO dim_tiempo (año, mes, dia, trimestre) VALUES
(2023, 1, 15, 1),
(2023, 5, 23, 2),
(2023, 10, 7, 4);

INSERT INTO dim_libro (titulo, autor, genero, precio_unitario) VALUES
('El Principito', 'Antoine de Saint-Exupéry', 'Ficción', 15.99),
('Cien Años de Soledad', 'Gabriel García Márquez', 'Realismo Mágico', 19.99),
('1984', 'George Orwell', 'Distopía', 14.99),
('El Hobbit', 'J.R.R. Tolkien', 'Fantasía', 13.50),
('Orgullo y Prejuicio', 'Jane Austen', 'Romance', 12.75);

INSERT INTO dim_cliente (nombre_cliente, edad, genero, ciudad) VALUES
('Carlos López', 32, 'Masculino', 'Ciudad de México'),
('María Pérez', 27, 'Femenino', 'Guadalajara'),
('Luis Ramírez', 41, 'Masculino', 'Monterrey'),
('Ana Gómez', 35, 'Femenino', 'Puebla'),
('Jorge Hernández', 29, 'Masculino', 'Querétaro');

INSERT INTO dim_tienda (nombre_tienda, ciudad, pais) VALUES
('Librería Central', 'Ciudad de México', 'México'),
('Libros y Más', 'Guadalajara', 'México'),
('Lecturas para Todos', 'Monterrey', 'México');

INSERT INTO hechos_ventas_libros (id_tiempo, id_libro, id_cliente, id_tienda, cantidad, precio_total) VALUES
(1, 1, 1, 1, 2, 31.98),
(1, 2, 2, 1, 1, 19.99),
(2, 3, 3, 2, 1, 14.99),
(2, 4, 4, 2, 3, 40.50),
(3, 5, 5, 3, 2, 25.50),
(3, 1, 1, 3, 1, 15.99),
(1, 3, 2, 1, 2, 29.98),
(2, 4, 3, 2, 1, 13.50),
(3, 2, 4, 3, 1, 19.99),
(1, 5, 5, 1, 3, 38.25);