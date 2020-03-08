<?php
require '../vendor/autoload.php';

use Model\Beans\Usuario as Usuario;
use Model\Bo\UsuarioBo as UsuarioBo;

switch ($_POST['action']) {
    case "login":
        $usuario=new usuario();        
        $usuario->usuario=$_POST['usu'];
        $usuario->password=$_POST['pwd'];              
        $bo=new usuarioBo();
        $r=$bo->identificarUsuarioBo($usuario);
        print $r;          
        break;    
}
