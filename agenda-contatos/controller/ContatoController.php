<?php 
require_once ('../libs/Contato.php');
require_once ('../libs/Email.php');
require_once ('../libs/Telefone.php');
require_once ('../model/ContatoDAO.php');
require_once ('../model/Conexao.php');   
    
    $metodo = $_GET['metodo']; // Esse parâmetro indica qual tarefa será executada
    
    switch($metodo) { // verifica qual a tarefa escolhida
        case 'adiciona':
            $cdao = new ContatoDAO();         
            $e = new Email($_GET['email'], $_GET['tipo_email']);
            $t = new Telefone($_GET['telefone'], $_GET['tipo_telefone']);    
            $c = new Contato($_GET['nome'], $e, $t);
            $cdao->adiciona($c);         
            header('location:../views/paginas/lista.php?title=Sistema - Contatos');
            exit();
        break;
        
        case 'deleta':
            $id = $_GET['id'];
            $dao = new ContatoDAO();
            $dao->deleta($id);                
            header("location:../views/paginas/lista.php?title=Sistema - Contatos");
            exit();
        break;

        case 'atualiza':
            $id = $_GET['id'];        
            $cdao = new ContatoDAO();         
            $e = new Email($_GET['email'], $_GET['tipo_email']);
            $t = new Telefone($_GET['telefone'], $_GET['tipo_telefone']);    
            $c = new Contato($_GET['nome'], $e, $t);
            $cdao->atualiza($c, $id);        
            header("location:../views/paginas/lista.php?title=Sistema - Contatos");
            exit();
        break;
        
        case 'novoemail':
            $cdao = new ContatoDAO();
            $id = $_GET['id'];         
            $e = new Email($_GET['email'], $_GET['tipo_email']);            
            $cdao->addEmail($e, $id);         
            header('location:../views/paginas/lista.php?title=Sistema - Contatos');
            exit();
        break;

        case 'novotelefone':
            $cdao = new ContatoDAO();
            $id = $_GET['id'];         
            $t = new Telefone($_GET['telefone'], $_GET['tipo_telefone']);            
            $cdao->addTelefone($t, $id);         
            header('location:../views/paginas/lista.php?title=Sistema - Contatos');
            exit();
        break;
    }
?>    
    