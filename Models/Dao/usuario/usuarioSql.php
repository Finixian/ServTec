<?php
namespace Model\Dao\Usuario;

class UsuarioSql {

    public static function  indentificarUsuario() {
        $query="SELECT * FROM aspirante WHERE folio=? AND password=?";
        return $query;
    }

    public static function  registrarUsuario() {
        $query="INSERT INTO usuario(usuario,password)VALUES(?,?)";
        return $query;
    }
}
