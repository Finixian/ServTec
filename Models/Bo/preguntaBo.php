<?php
namespace Model\Bo;

use Model\Dao\Pregunta\PreguntaDao;

class PreguntaBo {

    private $dao;

    function __construct() {
        $this->dao = new preguntaDao();
    }
    
    function registrarPreguntaBo($pregunta) {
      $resultado= $this->dao->registrarPreguntaDao($pregunta);
      return $resultado;
    }
}
