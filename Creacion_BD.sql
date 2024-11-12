CREATE DATABASE libreria_ventas;
-- Crear tablas
CREATE TABLE dim_tiempo (
    id_tiempo SERIAL PRIMARY KEY,
    año INT NOT NULL,
    mes INT NOT NULL,
    dia INT NOT NULL,
    trimestre INT NOT NULL
);

CREATE TABLE dim_libro (
    id_libro SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor VARCHAR(255) NOT NULL,
    genero VARCHAR(100) NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL
);

CREATE TABLE dim_cliente (
    id_cliente SERIAL PRIMARY KEY,
    nombre_cliente VARCHAR(255) NOT NULL,
    edad INT NOT NULL,
    genero VARCHAR(10) NOT NULL,
    ciudad VARCHAR(100) NOT NULL
);

CREATE TABLE dim_tienda (
    id_tienda SERIAL PRIMARY KEY,
    nombre_tienda VARCHAR(255) NOT NULL,
    ciudad VARCHAR(100) NOT NULL,
    pais VARCHAR(100) NOT NULL
);

CREATE TABLE hechos_ventas_libros (
    id_venta SERIAL PRIMARY KEY,
    id_tiempo INT NOT NULL,
    id_libro INT NOT NULL,
    id_cliente INT NOT NULL,
    id_tienda INT NOT NULL,
    cantidad INT NOT NULL,
    precio_total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_tiempo) REFERENCES dim_tiempo(id_tiempo),
    FOREIGN KEY (id_libro) REFERENCES dim_libro(id_libro),
    FOREIGN KEY (id_cliente) REFERENCES dim_cliente(id_cliente),
    FOREIGN KEY (id_tienda) REFERENCES dim_tienda(id_tienda)
);
