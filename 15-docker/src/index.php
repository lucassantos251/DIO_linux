<html>
  <head>
    <title>Exemplo PHP</title>
  </head>

  <body>
    <?php
      ini_set("display_errors", 1);
      header('Content-Type: text/html; charset=iso-8859-1');
      
      echo 'Versao Atual do PHP: ' . phpversion() . '<br>';

      $servername = "15.228.232.55";
      $username = "root";
      $password = "970521";
      $database = "meubanco";

      // Criar conexão
      $link = new mysqli($servername, $username, $password, $database);

      /* check connection */
      if (mysqli_connect_errno()) {
          printf("Connect failed: %s\n", mysqli_connect_error());
          exit();
      }

      // $valor_rand1 =  rand(1, 999);
      // $valor_rand2 = strtoupper(substr(bin2hex(random_bytes(4)), 1));
      // $host_name = gethostname();

      $vendaID = rand(1, 999);
      $produto = 'Macarrao';
      $valor = rand(3,7);
      $comprador = gethostname();
      $vendedor = 'José da Silvasauro';
      $localizacao = 'Shibakita Hypermercado - Bairro do Limao';
      
      $query = "INSERT INTO dados (VendaID, Produto, Valor, Comprador, Vendedor, Localizacao) VALUES ('$vendaID' , '$produto', '$valor', '$comprador', '$vendedor','$localizacao')";

      if ($link->query($query) === TRUE) {
        echo "New record created successfully";
      } else {
        echo "Error: " . $link->error;
      }
    ?>
  </body>
</html>
