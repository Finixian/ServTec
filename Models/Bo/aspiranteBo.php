<?php
namespace Model\Bo;

use Model\Dao\Aspirante\AspiranteDao as AspiranteDao;
use View\Vistalogica as Vistalogica;

class AspiranteBo
{
    var $dao;
    function __construct() {
        $this->dao = new AspiranteDao();
        $this->varVista = new Vistalogica();
    }
    
    function registrarAspiranteBo($aspirante){
      $resultado= $this->dao->registrarAspiranteDao($aspirante);
      return $resultado;
    }
    
    function eliminaAspiranteBo($aspirante){
      $resultado = $this->dao->eliminarAspiranteDao($aspirante);
      return $resultado;
    }
    
    function traeDatosAspiranteBo($aspirante){
      $resultado = $this->dao->traeDatosAspiranteDao($aspirante);
      return $this->varVista->vistaActualizar($resultado);
    }
    
    function actualizarAspiranteBo($aspirante){
        $resultado = $this->dao->actualizarAspiranteDao($aspirante);
        return $resultado;
    }

/* Áreas */
    function traeDatosAreaBo($id){
       $resultado = $this->dao->traeDatosAreaDao($id);
        return $resultado;
    }

    function actualizarAreaBo($id, $nombre){
        $resultado = $this->dao->actualizarAreaDao($id, $nombre);
        return $resultado;
    }
/* /Áreas */
}
