<?php
namespace Model\Dao;

class Conexion {

    private static $host = "127.0.0.1";
    private static $user = "root";
    private static $pwd = "";
    private static $bd = "examen";

    public static function conectar() {
        return mysqli_connect(conexion::$host, conexion::$user, conexion::$pwd, conexion::$bd);
    }

}

