<?php require_once '../../model/ContatoDAO.php'?>
<?php require_once '../../model/Conexao.php'?>
<?php require_once '../components/header.php' ?>
<?php require_once '../components/navbar.php' ?>
 
 <div class="container">    
    <div class="card card-cascade narrower mt-5">
        <div class="container">
            <h2>Lista de Contatos</h2><br>
            <div class="px-4">
                <table class="table table-striped display" id="myTable">                
                    <thead>
                        <tr>
                            <th scope="row">id</th>
                            <th class="th-lg">Contato</th>
                            <th class="th-lg">Email</th>
                            <th class="th-lg">Telefone</th> 
                            <th class="th-lg">Ação</th>                       
                        </tr>
                    </thead>
                    <!--Table head-->

                    <!--Table body-->
                    <tbody>
                        <?php $contato = ContatoDAO::lista()?>
                        <?php foreach($contato as $c): ?>
                            <tr>
                                <th scope="row"><?= $c->id_contato ?></th>
                                <td><?= $c->nome ?> </td>
                                <?php if($c->email == NULL) : ?>
                                    <td>NÃO POSSUI EMAIL</td>
                                <?php else : ?>                               
                                    <td><?= $c->email ?> (<?= $c->email_tipo ?>)</td>
                                <?php endif; ?>
                                
                                <?php if($c->telefone == NULL) : ?>
                                    <td>NÃO POSSUI TELEFONE</td>
                                <?php else : ?>     
                                    <td><?= $c->telefone ?> (<?= $c->telefone_tipo ?>)</td>
                                <?php endif; ?>                                          
                                <td>
                                    <a href="edita.php?title=Sistema - Edição&id=<?= $c->id_contato ?>" class="btn btn-success">Editar</a>
                                    <a href="../../controller/ContatoController.php?metodo=deleta&id=<?= $c->id_contato ?>" 
                                    class="btn btn-danger" onclick="alert('<?= $c->nome ?> removido com sucesso!!')">Remover</a>                                       
                                </td>                         
                            </tr> 
                        <?php endforeach; ?>                   
                    </tbody>                    
                </table>
            </div>            
        </div>
        <?php require_once '../components/footer.php'?>        
    </div>
    <br><br>
    
<script type="text/javascript">
    $(document).ready(function() {
        $('#myTable').DataTable();
    } );
</script>