<?php
namespace Model\Bo;

use Model\Dao\Examen\ExamenDao as ExamenDao;

class ExamenBo {

    var $dao;

    function __construct() {
        $this->dao = new ExamenDao();
    }
    
    function registrarResultadoBo($examen) {
      $resultado= $this->dao->registrarResultadoDao($examen);
      return $resultado;
    }
}