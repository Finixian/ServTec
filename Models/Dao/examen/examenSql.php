<?php
namespace Model\Dao\Examen;

class ExamenSQL {

    public static function  registrarResultado()
    {
        $query="call registraResultado(?,?,?,?,?,?,?,?,?,?,?,?);";
        return $query;
    }

    public static function actualizarPresento()
    {
       $query="call actualizaPresento(?);";
       return $query;
    }

    public static function  traeAspiranteId()
    {
        $query="SELECT * FROM aspirante WHERE idAspirante=?;";
        return $query;
    }
}