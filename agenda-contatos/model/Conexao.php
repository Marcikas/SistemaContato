<?php
    // Fábrica de conexões
    class Conexao
    {
        public static $pdo;

        public function __construct(){          
                         
        }

        public function getConnection(){
            self::$pdo = new PDO('mysql:host=localhost;dbname=sistemacontato', 'root', '');
            self::$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return self::$pdo;
        }
    }
?>