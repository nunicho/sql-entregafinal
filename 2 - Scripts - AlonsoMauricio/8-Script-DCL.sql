DROP USER 'coderhouse-subzero'@'localhost';
DROP USER 'coderhouse-scorpion'@'localhost';
-- CREACIÓN DE USUARIOS
-- Crear el usuario coderhouse-subzero con password 'coderhouse'
CREATE USER IF NOT EXISTS 'coderhouse-subzero'@'localhost' IDENTIFIED BY 'coderhouse';
-- Crear el usuario coderhouse-scorpion con password 'coderhouse'
CREATE USER IF NOT EXISTS 'coderhouse-scorpion'@'localhost' IDENTIFIED BY 'coderhouse';

-- ASIGNACIÓN DE PERMISOS
-- Asignar permisos de solo lectura sobre todas las tablas a coderhouse-subzero
GRANT SELECT ON proyecto_alonsomauricio.* TO 'coderhouse-subzero'@'localhost';
-- Asignar permisos de lectura, inserción y modificación de datos sobre todas las tablas a coderhouse-scorpion
GRANT SELECT, INSERT, UPDATE ON proyecto_alonsomauricio.* TO 'coderhouse-scorpion'@'localhost';
-- Aplicar los cambios de permisos
FLUSH PRIVILEGES;

-- CONTROL DE LO REALIZADO
-- Ahora controlamos los permisos del usuario coderhouse-subzero
SHOW GRANTS FOR 'coderhouse-subzero'@'localhost';

-- Ahora controlamos los permisos del usuario coderhouse-scorpion
SHOW GRANTS FOR 'coderhouse-scorpion'@'localhost';