<?php require_once '../components/header.php' ?>
<?php require_once '../components/navbar.php' ?>

<body>
    <div class="container"> 
        <section class="mt-5">           
            <h1>Extras</h1>
            <h3>Aproveitando a visita ao sistema, porque não ver qual o seu peso ideal nessa maravilhosa calculadora client-side feita em javascript e fornecida pela Yazio? </h3>
                <div class="yz-widget" data-calculator-type="ideal_weight" data-language="pt" data-unit-system="metric" data-background-color="#EEEEEE" data-text-color="#212121" data-primary-color="#778899" data-alternate-background-color="#FFFFFF" data-alternate-text-color="#FFFFFF" data-secondary-color="#778899">
                    <span class="yz-copyright">Powered by 
                    <a href="https://www.yazio.com/pt/calculadora-peso-ideal">YAZIO</a></span>
                </div>
         </section>       
    </div>    

    <script src="https://widget.yazio.com/calculator.js" async></script>
<?php require_once '../components/footer.php' ?>