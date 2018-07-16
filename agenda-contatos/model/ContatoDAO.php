<?php   
    class ContatoDAO 
    {
        private $pdo;
        
        public function __construct()
        {
            
        }
        // Método para adicionar um contato e seu email/telefone caso tenha sido informado
        public function adiciona(Contato $c) {
            try {                
                $sql = "INSERT INTO contato(nome) VALUES(:nome)";
                $pdo = Conexao::getConnection();               
                $stmt = $pdo->prepare($sql);     
                $stmt->bindValue(":nome", $c->getNome());    
                $stmt->execute();
                $id = $pdo->lastInsertId();                              
            } catch(PDOException $e){
                echo 'Error: ' . $e->getMessage();
            }
            
            if($c->getEmail()->getNome() != NULL){
                try {                
                    $sql = "INSERT INTO email(email, id_tipo, id_contato) VALUES(:nome, :tipo, :contato)";
                    $pdo = Conexao::getConnection();               
                    $stmt = $pdo->prepare($sql);     
                    $stmt->bindValue(":nome", $c->getEmail()->getNome());
                    $stmt->bindValue(":tipo", $c->getEmail()->getTipo());
                    $stmt->bindValue(":contato", $id);    
                    $stmt->execute();                                                 
                } catch(PDOException $e){
                    echo 'Error: ' . $e->getMessage();
                }
            }

            if($c->getTelefone()->getNome() != NULL){
                try {                
                    $sql = "INSERT INTO telefone(telefone, id_tipo, id_contato) VALUES(:nome, :tipo, :contato)";
                    $pdo = Conexao::getConnection();               
                    $stmt = $pdo->prepare($sql);     
                    $stmt->bindValue(":nome", $c->getTelefone()->getNome());
                    $stmt->bindValue(":tipo", $c->getTelefone()->getTipo());
                    $stmt->bindValue(":contato", $id);    
                    $stmt->execute();                                                  
                } catch(PDOException $e){
                    echo 'Error: ' . $e->getMessage();
                }
            }
        }
        // Lista todos os contatos e suas informações relevantes
        public function lista() {
            try {
                $sql = "SELECT c.id_contato, c.nome, e.email, t.telefone, tpe.email_tipo, tpt.telefone_tipo
                        FROM contato AS c
                        LEFT OUTER JOIN email AS e ON c.id_contato = e.id_contato
                        LEFT OUTER JOIN telefone AS t ON c.id_contato = t.id_contato
                        LEFT OUTER JOIN tipo_email AS tpe ON tpe.id_tipo = e.id_tipo
                        LEFT OUTER JOIN tipo_telefone AS tpt ON tpt.id_tipo = t.id_tipo";
                $stmt = Conexao::getConnection()->prepare($sql);
                $stmt->execute();;    
                return $stmt->fetchAll(PDO::FETCH_OBJ);
            } catch (PDOException $e) {
                echo 'Error: ' . $e->getMessage();
            }   
        }
        // exclui um contato específico de acordo com seu ID
        public function deleta($id) {
        try {
            $sql = "DELETE FROM contato WHERE id_contato = :id";
            $stmt = Conexao::getConnection()->prepare($sql);
            $stmt->bindValue(":id", $id);
            $stmt->execute(); 
        } catch (PDOException $e) {
                echo 'Error: ' . $e->getMessage();
            }   
        }
        // atualiza um contato específico de acordo com seu respectivo ID
        public function atualiza(Contato $c, $id) {
        try {            
            $sql = "UPDATE contato SET nome=:nome WHERE id_contato= :id;
                    UPDATE email SET email=:email WHERE id_contato= :id;
                    UPDATE telefone SET telefone=:telefone WHERE id_contato= :id;";
            $stmt = Conexao::getConnection()->prepare($sql);
            $stmt->bindValue(":id", $id);            
            $stmt->bindValue(":nome", $c->getNome());
            $stmt->bindValue(":email", $c->getEmail()->getNome());
            $stmt->bindValue(":telefone", $c->getTelefone()->getNome());
            $stmt->execute(); 
        } catch (PDOException $e) {
                echo 'Error: ' . $e->getMessage();
            }   
        }
        // Busca por um unico contato
        public function getById($id) {
            try {
                $sql = "SELECT c.id_contato, c.nome, e.email, t.telefone 
                        FROM contato AS c
                        LEFT OUTER JOIN email AS e ON c.id_contato = e.id_contato
                        LEFT OUTER JOIN telefone AS t ON c.id_contato = t.id_contato
                        WHERE c.id_contato = $id";
                $stmt = Conexao::getConnection()->prepare($sql);
                $stmt->execute();;    
                return $stmt->fetch(PDO::FETCH_OBJ);
            } catch (PDOException $e) {
                echo 'Error: ' . $e->getMessage();
            }   
        }
        // Adiciona apenas um email a um contato já registrado
        public function addEmail(Email $e, $id){
            try {                
                $sql = "INSERT INTO email(email, id_tipo, id_contato) VALUES(:nome, :tipo, :contato)";
                $pdo = Conexao::getConnection();               
                $stmt = $pdo->prepare($sql);     
                $stmt->bindValue(":nome", $e->getNome());
                $stmt->bindValue(":tipo", $e->getTipo());
                $stmt->bindValue(":contato", $id);    
                $stmt->execute();                                                 
            } catch(PDOException $e){
                echo 'Error: ' . $e->getMessage();
            }
        }
        // Adiciona apenas um telefone a um contato já registrado
        public function addTelefone(Telefone $t, $id){
            try {                
                $sql = "INSERT INTO telefone(telefone, id_tipo, id_contato) VALUES(:nome, :tipo, :contato)";
                $pdo = Conexao::getConnection();               
                $stmt = $pdo->prepare($sql);     
                $stmt->bindValue(":nome", $t->getNome());
                $stmt->bindValue(":tipo", $t->getTipo());
                $stmt->bindValue(":contato", $id);    
                $stmt->execute();                                                 
            } catch(PDOException $e){
                echo 'Error: ' . $e->getMessage();
            }
        }
    }
?>
