USE PROYECTO_AlonsoMauricio;

CREATE TABLE IF NOT EXISTS bitacora_empresa (
    idLog INT AUTO_INCREMENT,
    idEmpresa INT,
    accion VARCHAR(50),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (idLog)
);

DELIMITER //
CREATE TRIGGER after_insert_empresa
AFTER INSERT ON empresa
FOR EACH ROW
BEGIN
    INSERT INTO bitacora_empresa (idEmpresa, accion)
    VALUES (NEW.idEmpresa, 'INSERT');
END;
//
DELIMITER //

DELIMITER //
CREATE TRIGGER after_delete_empresa
AFTER DELETE ON empresa
FOR EACH ROW
BEGIN
    INSERT INTO bitacora_empresa (idEmpresa, accion)
    VALUES (OLD.idEmpresa, 'DELETE');
END;
//
DELIMITER ;



CREATE TABLE IF NOT EXISTS bitacora_programa (
    idLog INT AUTO_INCREMENT,
    idPrograma INT,
    accion VARCHAR(50),
    fecha TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (idLog)
);

DELIMITER //
CREATE TRIGGER after_insert_programa
AFTER INSERT ON programa
FOR EACH ROW
BEGIN
    INSERT INTO bitacora_programa (idPrograma, accion)
    VALUES (NEW.idPrograma, 'INSERT');
END;
//
DELIMITER //

DELIMITER //
CREATE TRIGGER after_delete_programa
AFTER DELETE ON programa
FOR EACH ROW
BEGIN
    INSERT INTO bitacora_programa (idPrograma, accion)
    VALUES (OLD.idPrograma, 'DELETE');
END;
//
DELIMITER ;


/*
En este script se crean los triggers.

Se toman como tablas para los triggers las tablas empresa y programa
Los triggers regitran las incorporación o eliminación de registros de estas tablas, asentando un registro en las tablas de bitacora_empresa y bitacora_programa

*/