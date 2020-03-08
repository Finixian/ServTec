--
-- Estructura para la tabla `area`
--
CREATE TABLE `area` (
  `idArea` int(11) NOT NULL,
  `nombre` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `area`
--
INSERT INTO `area` (`idArea`, `nombre`) VALUES
(1, 'Ãrea 1'),
(2, 'Ãrea 2'),
(3, 'Ãrea 3'),
(4, 'Ãrea 4'),
(5, 'Ãrea 5'),
(6, 'Ãrea 6'),
(7, 'Ãrea 7'),
(8, 'Ãrea 8'),
(9, 'Ãrea 9'),
(10, 'Ãrea 10');

--
-- Estructura para la tabla `aspirante`
--
CREATE TABLE `aspirante` (
  `idAspirante` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paterno` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `materno` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fnacimiento` date DEFAULT NULL,
  `folio` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `correo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` int(11) DEFAULT '1',
  `presento` int(11) DEFAULT '0',
  `idInstitucion` int(11) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado para la tabla `aspirante`
--
INSERT INTO `aspirante` (`idAspirante`, `nombre`, `paterno`, `materno`, `fnacimiento`, `folio`, `password`, `correo`, `status`, `presento`, `idInstitucion`) VALUES
(1, 'Administrador', NULL, NULL, '1993-04-02', 'admin', 'fakepass', 'contacto@gmail.com', 0, 0, 1);

--
-- Estructura para la tabla `examen`
--
CREATE TABLE `examen` (
  `idExamen` int(11) NOT NULL,
  `nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idUsuario` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Estructura para la tabla `institucion`
--
CREATE TABLE `institucion` (
  `idInstitucion` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `CCT` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefono` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado para la tabla `institucion`
--
INSERT INTO `institucion` (`idInstitucion`, `nombre`, `direccion`, `CCT`, `telefono`) VALUES
(1, 'TECNOLOGICO DE ESTUDIOS SUPERIORES DE CHALCO', 'Carretera Federal México Cuautla s/n, La candelaria Tlapala, Chalco, Estdo de México', '15EIT00I0J', '01(55 ) 59 82 10 89');


--
-- Estructura para la tabla `pregunta`
--
CREATE TABLE `pregunta` (
  `idPregunta` int(11) NOT NULL,
  `texto` varchar(1000) COLLATE utf8_spanish_ci DEFAULT NULL,
  `imagen` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `respuesta1` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor1` int(11) DEFAULT NULL,
  `respuesta2` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor2` int(11) DEFAULT NULL,
  `respuesta3` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor3` int(11) DEFAULT NULL,
  `respuesta4` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor4` int(11) DEFAULT NULL,
  `idExamen` int(11) NOT NULL DEFAULT '1',
  `idArea` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pregunta`
--

INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(4, 'Â¿QuiÃ©n iniciÃ³ el desarrollo de PHP?', NULL, 'Brendan Eich', 0, ' Marc Andreessen', 0, 'Rasmus Lerdorf', 1, 'Las anteriores respuestas no son correctas', 0, 1, 1);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(3, 'En PHP, Â¿cÃ³mo se calcula el mÃ¡ximo de los nÃºmeros 2 y 4?', NULL, 'max(2, 4)', 0, ' max(array(2, 4))', 1, 'max(array(0 ig> 2, 1 ig> 4))', 0, 'Todas las respuestas son correctas', 0, 1, 1);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(5, 'En PHP, Â¿quÃ© librerÃ­a se necesita para tratar imÃ¡genes?', NULL, 'GD', 1, 'ZIP', 0, 'Win32', 0, 'PNG', 0, 1, 1);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(6, 'En PHP, para leer un nÃºmero de bytes de un fichero abierto se emplea', NULL, ' fgets()', 0, ' fread()', 1, 'fscanf()', 0, ' ftell()', 0, 1, 1);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(7, 'En PHP, Â¿cÃ³mo se puede sustituir \"Amo\" por \"Odio\" en la frase \"Amo las expresiones regulares\"?', NULL, 'preg_replace(\"/Amo/\", \"/Odio/\", \"Amo las expresiones regulares\")', 0, ' preg_replace(\"/Odio/\", \"/Amo/\", \"Amo las expresiones regulares\")', 0, 'preg_replace(\"/Amo/\", \"Odio\", \"Amo las expresiones regulares\")', 1, 'preg_replace(\"/Odio/\", \"Amo\", \"Amo las expresiones regulares\")', 0, 1, 1);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(8, 'Cuando se emplea el mÃ©todo \"post\" de envÃ­o de un formulario, Â¿los datos del formulario se muestran en la URL?', NULL, 'Siempre', 0, ' SÃ­, si asÃ­ se ha indicado en el formulario', 0, 'Nunca', 1, 'Ninguna de las anteriores es correcta', 0, 1, 2);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(9, 'Respecto a la orientaciÃ³n a objetos en PHP5, seÃ±ala la afirmaciÃ³n falsa', NULL, 'Una clase sÃ³lo puede tener un constructor', 0, 'Existe el concepto de interfaz', 0, ' Se pueden declarar propiedades y mÃ©todos de una clase como static', 0, 'Se puede realizar la herencia mÃºltiple', 1, 1, 2);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(10, 'En PHP, para eliminar los espacios en blanco al final de una cadena se emplea', NULL, ' ltrim()', 0, ' rtrim()', 0, 'strip()', 0, ' trim()', 1, 1, 2);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(11, 'En PHP, para aplicar una funciÃ³n a cada elemento de un array se emplea la funciÃ³n', NULL, ' array_walk()', 1, ' array_each()', 0, 'foreach()', 0, ' list()', 0, 1, 2);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(12, 'En PHP, Â¿cÃ³mo se genera un nÃºmero aleatorio?', NULL, 'rnd()', 0, ' round()', 0, ' rand()', 1, ' Las anteriores respuestas no son correctas', 0, 1, 2);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(13, 'En PHP, Â¿quÃ© funciÃ³n se emplea para convertir una cadena a minÃºsculas?', NULL, ' lower()', 0, ' tolower()', 0, 'strtolower()', 1, 'str2lower()', 0, 1, 3);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(14, 'En una aplicaciÃ³n web es importante validar en el lado del servidor porque:', NULL, 'Mejora el tiempo de respuesta de la aplicaciÃ³n', 0, 'Reduce la carga de trabajo en el servidor', 0, 'Simplifica el cÃ³digo que se debe programar en el servidor', 0, 'Las anteriores respuestas no son correctas', 1, 1, 3);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(15, 'Â¿QuÃ© valor imprime el siguiente cÃ³digo?\r\n<?php\r\nfunction increment(bval) {\r\nreturn ++bvalc\r\n}\r\n\r\necho increment(1) + 1c\r\n?>', NULL, '1', 0, '2', 0, '3', 1, ' Las anteriores respuestas no son correctas', 0, 1, 3);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(19, 'En PHP, Â¿quÃ© muestra el siguiente cÃ³digo?\r\n\r\nbstr ig aanac\r\n\r\necho bstrc', NULL, ' ab(nueva lÃ­nea)\r\n', 0, 'a(nueva lÃ­nea)', 0, ' an', 1, ' abn', 0, 1, 3);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(20, 'En PHP, Â¿quÃ© funciÃ³n se emplea para filtrar un dato?', NULL, 'filter_has_var()', 0, ' filter_input()', 1, 'filter_list()', 0, ' Las anteriores respuestas no son correctas', 0, 1, 4);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(18, 'En PHP, Â¿cÃ³mo se inserta un comentario que ocupa una lÃ­nea?', NULL, '<!-- Comentario -->\r\n', 0, ' a Comentario', 0, '// Comentario', 1, ' Las anteriores respuestas no son correctas', 0, 1, 3);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(21, 'En PHP, la funciÃ³n unlink() se emplea para', NULL, 'Crear un fichero normal', 0, 'Crear un enlace simbÃ³lico entre dos ficheros', 0, ' Contar el nÃºmero de segmentos que componen un fichero', 0, ' Eliminar un fichero', 1, 1, 4);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(22, 'En PHP, Â¿cuÃ¡l es la forma correcta de declarar una funciÃ³n?', NULL, 'function miFuncion()', 1, 'create function miFuncion()', 0, ' sub miFuncion()', 0, 'method miFuncion()', 0, 1, 4);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(23, 'En PHP, Â¿cÃ³mo se obtiene la informaciÃ³n de un formulario que ha sido enviado mediante el mÃ©todo \"get\"?', NULL, ' b_URL[]', 0, 'b_GET[]', 1, 'b_FORM[]', 0, ' Las anteriores respuestas no son correctas', 0, 1, 4);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(24, 'Respecto a PHP, seÃ±ala la afirmaciÃ³n correcta', NULL, ' die y exit son equivalentes', 0, ' echo y print son equivalentes', 1, 'La sintaxis <?php sÃ³lo estÃ¡ disponible cuando se configura en php.ini', 0, 'Los ficheros que se incluyen con include deben tener la extensiÃ³n \".inc\"', 0, 1, 4);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(25, 'En PHP, Â¿quÃ© devuelve la funciÃ³n filter_var() en el siguiente cÃ³digo? bemail ig \"sergio.lujan@ua.es\"c filter_var(bemail, FILTER_VALIDATE_EMAIL)c', NULL, 'true', 1, 'false', 0, 'cadena vacia ', 0, ' Las anteriores respuestas no son correctas', 1, 1, 5);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(26, 'En PHP, Â¿cuÃ¡l es el nombre del tipo de dato que permite almacenar mÃºltiples valores separados?', NULL, 'array', 1, 'float', 0, 'string', 0, 'Las anteriores respuestas no son correctas', 0, 1, 5);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(27, 'El cÃ³digo PHP se escribe con los delimitadores', NULL, ' <?php>...</?>', 1, '<script>...</script>', 0, '<?phpâ€¦?>', 1, '<&>...</&>', 0, 1, 5);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(28, 'En PHP y con las funciones de expresiones regulares PCRE, para realizar una sustituciÃ³n en base a una expresiÃ³n regular se emplea la funciÃ³n:', NULL, ' ereg_replace()', 0, 'preg_match_all()', 0, ' preg_replace()', 1, ' replace()', 0, 1, 5);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(29, 'En PHP, Â¿quÃ© funciÃ³n se emplea para realizar una redirecciÃ³n?', NULL, ' header()', 1, ' redirect()', 0, 'send()', 0, 'Las anteriores respuestas no son correctas', 0, 1, 6);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(30, 'En PHP, Â¿cÃ³mo se crea una cookie?', NULL, 'Con document.cookie', 0, 'Con b_COOKIE', 0, 'Con setcookie()', 1, 'Con doCookie()', 0, 1, 5);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(31, 'Un valor que no ha sido definido se expresa en PHP con la palabra reservada', NULL, ' empty ', 0, ' null ', 1, ' undef ', 0, ' Las anteriores respuestas no son correctas', 0, 1, 6);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(32, 'Â¿CÃ³mo se puede asegurar que una pÃ¡gina web ha sido desarrollada con PHP?', NULL, ' Viendo el cÃ³digo fuente de la pÃ¡gina en el navegador', 0, ' Viendo si la extensiÃ³n de la pÃ¡gina acaba en .php', 0, 'Viendo las cabeceras HTTP de la pÃ¡gina', 0, 'Nunca se puede estar seguro al 100d de si una pÃ¡gina ha sido desarrollada con PHP', 1, 1, 6);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(33, 'En PHP, cuando se crea una cookie, Â¿cuÃ¡l es la duraciÃ³n o fecha de caducidad por defecto?', NULL, ' Depende de la configuraciÃ³n del servidor web', 0, ' Hasta que el servidor web se cierre', 0, ' Hasta que el navegador web se cierre', 1, ' 60 minutos', 1, 1, 6);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(34, 'Â¿QuÃ© valor imprime el siguiente cÃ³digo?\r\n<?php\r\nfunction fibonacci(bx1, bx2)\r\n{\r\nreturn bx1 + bx2c\r\n}\r\n\r\nbx1 ig 0c\r\nbx2 ig 1c\r\n\r\nfor(bi ig 0c bi < 10c bi++)\r\n{\r\necho fibonacci(bx1, bx2) . a,ac\r\n}\r\n?>', NULL, '0,1,2,3,4,5,6,7,8,9,', 0, '1,2,3,4,5,6,7,8,9,10,', 0, '1,2,3,5,8,13,21,34,55,89,', 0, ' 1,1,1,1,1,1,1,1,1,1,', 1, 1, 6);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(35, 'En PHP, Â¿un objeto de una clase puede acceder a la parte privada de otro objeto de la misma clase?', NULL, ' SÃ­, siempre', 0, 'SÃ­, si los dos objetos se han declarado en el mismo contexto', 1, ' No, sÃ³lo puede acceder a la parte protegida', 0, ' No, no puede acceder ni a la parte protegida ni a la privada', 0, 1, 7);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(36, 'Â¿QuÃ© valor imprime el siguiente cÃ³digo?\r\n<?php\r\nbvar ig afalseac\r\n\r\nif(bvar) {\r\n    echo averdaderoac\r\n} else {\r\n    echo afalsoac\r\n}\r\n?>', NULL, 'verdadero', 1, 'falso', 0, 'Hay un error sintÃ¡ctico', 0, ' Produce un error de ejecuciÃ³n', 0, 1, 7);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(37, 'Â¿QuÃ© significa PHP?', NULL, 'PHP: Hypertext Preprocessor', 1, ' Private Home Page', 0, 'Personal Hypertext Processor', 0, 'Personal Home Page', 0, 1, 7);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(38, 'En PHP, Â¿cÃ³mo se representa el operador de Ã¡mbito?', NULL, '?', 0, '&', 0, '->', 0, '::', 1, 1, 7);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(39, 'Â¿QuÃ© significa DSN?', NULL, ' Domain System Name', 0, ' Domain Source Name', 1, ' Database System Name', 0, ' Data Source Name', 0, 1, 7);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(40, 'En PHP, Â¿quÃ© hace la sentencia continue?', NULL, ' Finaliza la ejecuciÃ³n del mÃ©todo actual', 0, 'Finaliza la ejecuciÃ³n del cÃ³digo\r\n', 0, ' Salta a la siguiente iteraciÃ³n en el bucle for, foreach, while o do-while actual', 1, 'Finaliza la ejecuciÃ³n del bucle for, foreach, while o do-while actual', 0, 1, 8);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(41, 'En PHP, la sentencia de control foreach se emplea para', NULL, 'Recorrer los elementos de un array\r\n', 1, ' Recorrer las propiedades de un objeto', 0, 'Recorrer los elementos de un array y las propiedades de un objeto', 0, 'Las anteriores respuestas no son correctas', 0, 1, 8);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(42, 'En PHP, para copiar un fichero subido desde un formulario HTML a su destino final se debe emplear', NULL, 'cp_uploaded_file()', 0, ' copy_uploaded_file()', 0, ' mv_uploaded_file()', 0, ' move_uploaded_file()', 1, 1, 8);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(43, 'En PHP, para detectar el final de fichero, se emplea la funciÃ³n', NULL, ' end()\r\n', 0, 'eof()', 0, 'feof()', 1, 'file_end()', 0, 1, 8);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(44, 'En PHP, para calcular el mÃ³dulo (el resto) de una divisiÃ³n, se emplea el operador', NULL, '!', 0, '#', 0, 'd', 1, '&', 0, 1, 8);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(45, 'En PHP, para comprobar si una constante existe se emplea la funciÃ³n', NULL, 'isconstant()', 0, 'defined()', 1, ' isset()', 0, ' Las anteriores respuestas no son correctas', 0, 1, 9);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(46, 'En PHP, Â¿quÃ© se emplea para definir una constante?', NULL, 'const', 1, ' constant ', 0, ' define ', 0, 'fixed', 0, 1, 9);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(47, 'En PHP, la funciÃ³n getcwd()', NULL, ' Cambia el directorio actual', 0, 'Devuelve la ruta del directorio actual', 1, 'Cierra el directorio actual', 0, ' Las anteriores respuestas no son correctas', 0, 1, 9);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(48, 'En PHP, Â¿quÃ© es una variable superglobal?', NULL, 'Una variable que se mantiene a lo largo de diferentes peticiones a una pÃ¡gina web', 0, ' Una variable que permite acceder a todas las variables globales', 0, 'Una variable que actÃºa como global sin ser global', 0, 'Una variable que estÃ¡ disponible en todos los Ã¡mbitos del cÃ³digo', 1, 1, 9);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(49, 'En PHP, Â¿quÃ© hace la sentencia break?', NULL, 'Finaliza la ejecuciÃ³n del mÃ©todo actual', 0, ' Finaliza la ejecuciÃ³n del cÃ³digo\r\n', 0, 'Salta a la siguiente iteraciÃ³n en el bucle for, foreach, while o do-while actual', 0, 'Finaliza la ejecuciÃ³n del bucle for, foreach, while o do-while actual', 0, 1, 9);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(50, 'En PHP, para leer completamente un fichero en un array se emplea', NULL, ' fgets()', 0, ' file()', 1, 'file_get_contents()\r\n', 0, ' Las anteriores respuestas no son correctas', 0, 1, 10);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(51, 'En PHP, Â¿quÃ© muestra el siguiente cÃ³digo?\r\n<?php\r\nba ig falsec\r\nbb ig truec\r\nbc ig falsec\r\n\r\nif(ba ? bb : bc) {\r\necho \"false\"c\r\n} else {\r\necho \"true\"c\r\n}\r\n?>', NULL, 'true', 1, 'false', 0, 'Nada', 0, 'Hay un error sintÃ¡ctico en el cÃ³digo', 0, 1, 10);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(52, 'En una aplicaciÃ³n web es importante validar en el lado del cliente porque mejora:', NULL, ' La seguridad de la aplicaciÃ³n\r\n', 0, 'La experiencia del usuario', 0, ' La integridad de los datos que se almacenan', 1, 'Las anteriores respuestas no son correctas', 0, 1, 10);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(53, 'En PHP, para buscar un elemento en un array se puede emplear', NULL, 'find()', 0, 'in_array()', 1, 'search()', 0, ' sort()', 0, 1, 10);
INSERT INTO `pregunta` (`idPregunta`, `texto`, `imagen`, `respuesta1`, `valor1`, `respuesta2`, `valor2`, `respuesta3`, `valor3`, `respuesta4`, `valor4`, `idExamen`, `idArea`) VALUES(54, 'En PHP, Â¿cuÃ¡l es la forma correcta de asignar el valor â€œverdaderoâ€ a una variable?', NULL, ' bvariable ig Truec', 0, 'bvariable ig truec\r\n', 0, 'bvariable ig TRUEc', 0, 'Todas las respuestas son correctas', 1, 1, 10);

--
-- Estructura para la tabla `resultado`
--
CREATE TABLE `resultado` (
  `idResultado` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `totalRespuestas` int(11) NOT NULL,
  `resultadoA1` int(11) NOT NULL,
  `resultadoA2` int(11) NOT NULL,
  `resultadoA3` int(11) NOT NULL,
  `resultadoA4` int(11) NOT NULL,
  `resultadoA5` int(11) NOT NULL,
  `resultadoA6` int(11) NOT NULL,
  `resultadoA7` int(11) NOT NULL,
  `resultadoA8` int(11) NOT NULL,
  `resultadoA9` int(11) NOT NULL,
  `resultadoA10` int(11) NOT NULL,
  `idAspirante` int(11) NOT NULL,
  `idExamen` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

ALTER TABLE `area`
  ADD PRIMARY KEY (`idArea`);

ALTER TABLE `aspirante`
  ADD PRIMARY KEY (`idAspirante`,`idInstitucion`),
  ADD UNIQUE KEY `folio_UNIQUE` (`folio`),
  ADD KEY `fk_Aspirante_Institucion1_idx` (`idInstitucion`);

ALTER TABLE `examen`
  ADD PRIMARY KEY (`idExamen`,`idUsuario`),
  ADD KEY `fk_Examen_Usuario1_idx` (`idUsuario`);

ALTER TABLE `institucion`
  ADD PRIMARY KEY (`idInstitucion`);

ALTER TABLE `pregunta`
  ADD PRIMARY KEY (`idPregunta`,`idExamen`,`idArea`),
  ADD KEY `fk_Pregunta_Examen1_idx` (`idExamen`),
  ADD KEY `fk_Pregunta_Area1_idx` (`idArea`);

ALTER TABLE `resultado`
  ADD PRIMARY KEY (`idResultado`,`idAspirante`,`idExamen`),
  ADD KEY `fk_Resultado_Aspirante1_idx` (`idAspirante`),
  ADD KEY `fk_Resultado_Examen1_idx` (`idExamen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

ALTER TABLE `area`
  MODIFY `idArea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

ALTER TABLE `aspirante`
  MODIFY `idAspirante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `examen`
  MODIFY `idExamen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `pregunta`
  MODIFY `idPregunta` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `resultado`
  MODIFY `idResultado` int(11) NOT NULL AUTO_INCREMENT;

-- Procedimientos
--
DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizaPresento` (IN `x` INT)  BEGIN
update aspirante set presento=1 where idAspirante=x;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `registraResultado` (IN `t` INT, IN `x1` INT, IN `x2` INT, IN `x3` INT, IN `x4` INT, IN `x5` INT, IN `x6` INT, IN `x7` INT, IN `x8` INT, IN `x9` INT, IN `x10` INT, IN `id` INT)  BEGIN
insert into resultado (fecha,totalRespuestas,resultadoA1,resultadoA2,resultadoA3,resultadoA4,resultadoA5,resultadoA6, resultadoA7 ,resultadoA8, resultadoA9, resultadoA10, idAspirante) 
values (NOW(), t, x1, x2, x3, x4, x5, x6, x7, x8, x9, x10, id);
END$$

--
-- Funciones
--
DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `cuentaErrores` (`x` INT, `y` INT) RETURNS INT(11) BEGIN
  DECLARE r INT;
  SET r = y - x;
  RETURN r;
END$$

DELIMITER $$
CREATE DEFINER=`root`@`localhost` FUNCTION `porcentaje` (`a` INT, `b` INT) RETURNS INT(11) BEGIN
	DECLARE x INT;
	DECLARE y INT;
 	SET x = a * 100;
	SET y = x / b;
 	RETURN y;
END$$
