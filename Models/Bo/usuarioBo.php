<?php
namespace Model\Bo;

use Model\Dao\Usuario\UsuarioDao as UsuarioDao;

class UsuarioBo {
    private $dao;
    
    function __construct() {
        $this->dao = new UsuarioDao();
    }

    function identificarUsuarioBo($usuario)
    {
      $resultado= $this->dao->identificarUsuario($usuario);
      return $resultado;
    }

    function registrarUsuarioBo($usuario){
      $resultado= $this->dao->registrarUsuarioDao($usuario);
      return $resultado;
    }
}
