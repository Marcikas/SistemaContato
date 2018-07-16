<?php
class Email{
        private $nome;       
        private $tipo;

        // Construtor
        function __construct($nome, $tipo) {
            $this->nome = $nome;
            $this->tipo = $tipo;
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

        public function getTipo()
        {
            return $this->tipo;
        }
        
        public function setTipo($tipo)
        {
            $this->tipo = $tipo;
        }
    }
?>