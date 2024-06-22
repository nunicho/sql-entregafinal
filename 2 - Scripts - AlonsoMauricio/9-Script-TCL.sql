USE proyecto_alonsomauricio;

-- Iniciar una transacción para eliminar registros de la tabla empresa
START TRANSACTION;
    -- Eliminar registros en la tabla empresa con idEmpresa <= 3
    DELETE FROM empresa WHERE idEmpresa <= 3;
  -- Acciones de rollback (comentado) y commit.
  -- ROLLBACK;
  COMMIT;
-- Verificar registros en la tabla empresa
SELECT * FROM empresa;

/*
-- Iniciar una transacción para reinsertar los registros eliminados en la transacción anterior -Comentado como lo pide la consignaextract_schema_from_file_nameextract_schema_from_file_name
START TRANSACTION;
    -- Reinsertar los registros eliminados en la tabla empresa    
    INSERT INTO empresa (nombre_soc, tipo, cuit, fecha_contrato, idEnvergadura, fecha_i_m_e, idRubro, idBanco, idRrhh, idAsesor, idContacto, idRepresentante, idPrograma, idRatio, idLocalizacion)
    VALUES 
        ('Plásticos S.A.', 'Sociedad Anónima', '30-12345678-1', '2024-05-10', 4, '2024-05-10', 1, 2, 1, 1, 1, 1, 1, 1, 1),
        ('AgroExportadora del Norte', 'Sociedad Anónima', '30-23456789-2', '2024-05-15', 3, '2024-05-15', 2, 3, 2, 6, 2, 2, 2, 2, 2),
        ('Consultores Estratégicos SRL', 'Sociedad de Responsabilidad Limitada', '30-34567890-3', '2024-05-20', 2, '2024-05-20', 3, 1, 3, 8, 3, 3, 3, 3, 3);
    -- Acciones de rollback (comentado) y commit.
    -- ROLLBACK;
    COMMIT;
-- Verificar registros en la tabla empresa
SELECT * FROM empresa;

*/

-- Iniciar una transacción para insertar nuevos registros en la tabla línea
START TRANSACTION;
    -- Insertar registros en la tabla línea
    INSERT INTO linea (nombre_linea) VALUES 
        ('Línea de ampliación edilicia'),
        ('Línea de potenciación comercial'),
        ('Programa de sanamiento de deuda'),
        ('Programa de diseño de plan de negocio');
    -- Agregar un savepoint después de la inserción del registro #4
    SAVEPOINT sp_after_record_4;
    INSERT INTO linea (nombre_linea) VALUES 
        ('Financiamiento máquinas cosechadoras'),
        ('Financiamiento mejora energética'),
        ('Línea de apoyo a microemprendedores'),
        ('Línea de apoyo tecnificación de planta');
    -- Agregar un savepoint después de la inserción del registro #8
    SAVEPOINT sp_after_record_8;
    -- Eliminar el savepoint después de la inserción del registro #4
    -- RELEASE SAVEPOINT sp_after_record_4;
    -- Acciones de rollback (comentado) y commit.
    -- ROLLBACK;
    COMMIT;
-- Verificar registros en la tabla línea
SELECT * FROM linea;

