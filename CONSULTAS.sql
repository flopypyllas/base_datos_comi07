-- CONSULTA 7 
SELECT c.titulo AS curso, COUNT(uc.usuario_id) AS cantidad_usuarios
FROM Cursos c
JOIN Usuarios_Cursos uc ON c.curso_id = uc.curso_id
GROUP BY c.curso_id
ORDER BY COUNT(uc.usuario_id) DESC
LIMIT 3;

-- CONSULTA 8 
SELECT c.titulo AS curso, AVG(num_clases) AS promedio_clases_por_unidad
FROM Cursos c
JOIN Unidades u ON c.curso_id = u.curso_id
LEFT JOIN (SELECT unidad_id, COUNT(*) AS num_clases
    FROM Clases GROUP BY unidad_id) AS clases_por_unidad ON u.unidad_id = clases_por_unidad.unidad_id
GROUP BY c.titulo;

-- CONSULTA 9 
SELECT u.nombre, u.apellido, c.fecha_inicio, COUNT(uc.curso_id) AS cantidad_cursos
FROM Usuarios u
JOIN Usuarios_Cursos uc ON u.usuario_id = uc.usuario_id
JOIN Cursos c ON uc.curso_id = c.curso_id
WHERE c.fecha_inicio > '2023-05-01'
GROUP BY u.usuario_id
HAVING COUNT(uc.curso_id) > 2
ORDER BY u.nombre ASC;


-- CONSULTA 10 
SELECT *
FROM Unidades
WHERE fecha_inicio > '2023-12-05'
ORDER BY fecha_inicio DESC
LIMIT 5;

-- CONSULTA 11 
SELECT u.categoria, COUNT(*) AS numero_de_usuarios
FROM Usuarios u
JOIN Usuarios_Cursos uc ON u.usuario_id = uc.usuario_id
WHERE uc.curso_id = 1
GROUP BY u.categoria;