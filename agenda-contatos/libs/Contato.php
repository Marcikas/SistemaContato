<?php
    class Contato{
        private $nome;        
        private $email;
        private $telefone;

        // Construtor
       function __construct($nome = null, $email = null, $telefone = null) {
            $this->nome = $nome;
            $this->email = $email;
            $this->telefone = $telefone;
        }

        // getters e setters

        public function getNome()
        {
            return $this->nome;
        }

        public function setNome($nome)
        {
            $this->nome = $nome;                
        }

        public function getEmail()
        {
            return $this->email;
        }
        
        public function setEmail($email)
        {
            $this->email = $email;
        }

        public function getTelefone()
        {
                return $this->telefone;
        }

        public function setTelefone($telefone)
        {
            $this->telefone = $telefone;            
        }
    }
?>