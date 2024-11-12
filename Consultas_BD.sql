-- consulta 1
SELECT 
    l.genero,
    t.mes,
    SUM(hv.precio_total) AS total_ventas
FROM 
    hechos_ventas_libros hv
JOIN 
    dim_libro l ON hv.id_libro = l.id_libro
JOIN 
    dim_tiempo t ON hv.id_tiempo = t.id_tiempo
GROUP BY 
    l.genero, t.mes
ORDER BY 
    l.genero, t.mes;

-- consulta 2
SELECT 
    ti.nombre_tienda,
    l.autor,
    SUM(hv.cantidad) AS total_libros_vendidos
FROM 
    hechos_ventas_libros hv
JOIN 
    dim_libro l ON hv.id_libro = l.id_libro
JOIN 
    dim_tienda ti ON hv.id_tienda = ti.id_tienda
GROUP BY 
    ti.nombre_tienda, l.autor
ORDER BY 
    ti.nombre_tienda, l.autor;

-- consulta 3
SELECT 
    C.ciudad,
    T.trimestre,
    SUM(H.precio_total) AS ingresos_totales
FROM 
    hechos_ventas_libros H
JOIN 
    dim_cliente C ON H.id_cliente = C.id_cliente
JOIN 
    dim_tiempo T ON H.id_tiempo = T.id_tiempo
GROUP BY 
    C.ciudad, T.trimestre
ORDER BY 
    C.ciudad, T.trimestre;

-- consulta 4
SELECT 
    C.nombre_cliente,
    SUM(H.precio_total) AS total_gasto,
    SUM(H.cantidad) AS total_libros_comprados
FROM 
    hechos_ventas_libros H
JOIN 
    dim_cliente C ON H.id_cliente = C.id_cliente
GROUP BY 
    C.nombre_cliente
ORDER BY 
    total_gasto DESC;
