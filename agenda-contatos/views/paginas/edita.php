<?php require_once '../../model/ContatoDAO.php'?>
<?php require_once '../../model/Conexao.php'?>
<?php require_once '../components/header.php'?>
<?php require_once '../components/navbar.php'?>
    <?php $c = ContatoDAO::getById($_GET['id']); ?>
    <div class="container">
     <section class="mt-5">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Edição do contato <?= $c->nome ?></h4>
                <form action="../../controller/ContatoController.php" method="GET">
                    Nome:<input type="text" name="nome" value="<?= $c->nome ?>"><br>
                    Email: <input type="text" name="email" value="<?= $c->email ?>">
                    Tipo email: <select name="tipo_email">
                                    <option value="1">Pessoal</option>
                                    <option value="2">Trabalho</option>
                                </select><br>
                    Telefone: <input type="text" name="telefone" value="<?= $c->telefone ?>">
                    Tipo telefone: <select name="tipo_telefone">
                                    <option value="1">Celular</option>
                                    <option value="2">Residencial</option>
                                    <option value="3">Trabalho</option>
                                </select><br>            
                    <input type="hidden" name="metodo" value="atualiza">
                    <input type="hidden" name="id" value="<?= $c->id_contato ?>">
                    <button type="submit" class="btn btn-primary">Atualizar</button>
                    <p>Caso você queira adicionar um email/telefone a um contato que não possua um, adicione nos formularios abaixo!</p>
                </form>
            </div>
        </div>

        <hr>

        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Acrescentar Email ao contato</h4>
                <form action="../../controller/ContatoController.php" method="GET">
                    Email: <input type="text" name="email" required>
                    Tipo email: <select name="tipo_email">
                                    <option value="1">Pessoal</option>
                                    <option value="2">Trabalho</option>
                                </select><br>                    
                    <input type="hidden" name="metodo" value="novoemail">
                    <input type="hidden" name="id" value="<?= $c->id_contato ?>">
                    <button type="submit" class="btn btn-primary">Adicionar</button>                    
                </form>
            </div>            
        </div>
        <hr>
        <div class="card">            
            <div class="card-body">
                <h4 class="card-title">Acrescentar telefone ao contato</h4>
                <form action="../../controller/ContatoController.php" method="GET">
                        Telefone: <input type="text" name="telefone" required>
                        Tipo telefone: <select name="tipo_telefone">
                                        <option value="1">Celular</option>
                                        <option value="2">Residencial</option>
                                        <option value="3">Trabalho</option>
                                    </select><br>
                        <input type="hidden" name="metodo" value="novotelefone">
                        <input type="hidden" name="id" value="<?= $c->id_contato ?>">
                        <button type="submit" class="btn btn-primary">Adicionar</button>
                </form>                    
            </div>
        </div><br><br> 
        <a href="lista.php?title=Sistema - Contatos" class="btn btn-primary">Voltar</a>
        </section>                                              
    </div>
<?php require_once '../components/footer.php'?>