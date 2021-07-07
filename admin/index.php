
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Cadastro Sua Bolsa</title>
    
    <style>
        body {
            background: gray;
            color: black;
        }
        table {
            border-color: Black;
            width: auto;
            background: white;
        }

        .container {
            width: auto;
            margin: auto;
            margin-left:10%;
            margin-top: 20px;
            
            border-radius: 15px;
            box-shadow:  0 0 1em grey;
        }


    </style>

</head>
<body>
<div class="container">

<h2 class="tituloFormulario">Faça seu cadastro e busque seu sonho</h2>
        
                <form action="cadastro.php" method="POST" >
        
                    <div class="box-form">
                        <span> Informe a data: </span><br>
                        <input type="date" name="nome" size="40" >
                    </div>
        
                    <div class="box-form">
                        <span> Filtra por Cursos:</span><br>
                        <input type="text" name="cpf" size="30" >
                    </div>
        
                    <div class="box-form">
                        <span> Filtra por Cidade: </span><br>
                        <input type="text" name="email" size="30" >
                    </div>
        


</div>
    
<div class="container">

    </style>
    <table width="50%" border="1" cellspacing="1">
    <tr><strong>
    <th>ID</th>
    <th>Nome</th>
    <th>CPF</th>
    <th>Email</th>
    <th>Contato</th>
    <th>Curso</th>
    <th>Cidade</th>
    <th>Data e Hora</th>

</strong></tr>


 
<?php

# Substitua abaixo os dados, de acordo com o banco criado
$user = "root"; 
$password = ""; 
$database = "cadastro_cand"; 
$hostname = "localhost"; 
 

$conexao = mysqli_connect( $hostname,$user,$password,$database) or die( ' Erro na conexão ' ); 

$query = "SELECT * FROM `cadastro` "; 

$result_query = mysqli_query($conexao, $query ) or die(' Erro na query:' . $query . ' ' . mysql_error() ); 
 
# Exibe os registros na tela 
while ($row = mysqli_fetch_array( $result_query )){ 
    
    echo " 
    
     <tr>
    <td>".$row['ID']."</td>
    <td>". $row['nome']."</td>
    <td>". $row['cpf']."</td>
    <td>". $row['email']."</td>
    <td>".$row['contato']."</td>
    <td>".$row['curso']."</td>
    <td>".$row['cidade']."</td>
    <td>".$row['lancamento']."</td>
    
    </tr>
  
    </html>
        ";


};
 
?>
  </table> 
</div>
  </body>
</html>