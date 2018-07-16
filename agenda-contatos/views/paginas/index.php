<?php require_once '../components/header.php'?>
<?php require_once '../components/navbar.php'?>

    <div class="container">
        <section class="mt-5">
        <div class="container">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title">Novo contato</h4><br>
                <form action="../../controller/ContatoController.php" method="GET">
                    Nome: <input type="text" name="nome" required><br><br>
                    Email(opcional): <input type="text" name="email">
                    Tipo email: <select name="tipo_email">
                                    <option value="1">Pessoal</option>
                                    <option value="2">Trabalho</option>
                                </select><br><br>
                    Telefone(opcional): <input type="text" name="telefone">
                    Tipo telefone: <select name="tipo_telefone">
                                    <option value="1">Celular</option>
                                    <option value="2">Residencial</option>
                                    <option value="3">Trabalho</option>
                                </select><br><br>            
                    <input type="hidden" name="metodo" value="adiciona">
                    <button type="submit" class="btn btn-primary">Registrar</button>
                </form>
            </div>
        </div>        
    </div>
    </section>

    <hr class="my-5">

      <section>
        <h3 class="h3 text-center mb-5">Sobre</h3>
        <!--Grid row-->
        <div class="row wow fadeIn">
          <!--Grid column-->
          <div class="col-lg-6 col-md-12 px-4">
            <!--First row-->
            <div class="row">
              <div class="col-1 mr-3">
                <i class="fa fa-code fa-2x indigo-text"></i>
              </div>
              <div class="col-10">
                <h5 class="feature-title">Front-End com Bootstrap 4 + JQuery</h5>
                <p class="grey-text">Os formularios foram desenvolvidos utilizando o Framework Bootstrap 4 com alguns componentes do MDBootstrap, e o DataTable e a Calculadora foram implementados através de plugins JQuery!</p>
              </div>
            </div>
            <!--/First row-->
            
            <div style="height:30px"></div>
            
            <!--Second row-->
            <div class="row">
              <div class="col-1 mr-3">
                <i class="fa fa-database fa-2x blue-text"></i>
              </div>
              <div class="col-10">
                <h5 class="feature-title">Banco de dados</h5>
                <p class="grey-text">
                    O SGBD utilizado no sistema foi o MySQL, e o script de criação está localizado um nível acima da pasta do projeto (script.sql)  
                </p>
              </div>
            </div>
            <!--/Second row-->

            <div style="height:30px"></div>

            <!--Third row-->
            <div class="row">
              <div class="col-1 mr-3">
                <i class="fa fa-lock fa-2x cyan-text"></i>
              </div>
              <div class="col-10">
                <h5 class="feature-title">Segurança</h5>
                <p class="grey-text">Querys executadas através de PDO, para prevenir ataques via SQL Injection!!</p>
              </div>
            </div>
            <!--/Third row-->
          </div>
          <!--/Grid column-->
        </div>
        <!--/Grid row-->
      </section>
    </div>
      
<?php require_once '../components/footer.php'?>