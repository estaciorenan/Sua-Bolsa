<?php

$nome = $_POST['nome'];
$email = $_POST['email'];
$contato = $_POST['contato'];
$curso = $_POST['curso'];
$cidade = $_POST['cidade'];

$servername = "localhost";
$database = "cadastro_cand"; 
$username = "root";
$password = "";
$sql = "mysql:host=$servername;dbname=$database;";
$dsn_Options = [PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION];

try {
  $pdo = new PDO($sql, $username, $password);
  $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$valor = $pdo->prepare("INSERT INTO cadastro (nome, email, contato, curso, 
    cidade, lancamento) VALUES (:nome, :email, :contato, :curso, :cidade, NOW())");
$valor->bindParam(':nome',$nome);
$valor->bindParam(':email',$email);
$valor->bindParam(':contato',$contato);
$valor->bindParam(':curso',$curso);
$valor->bindParam(':cidade',$cidade);
$valor->execute();

echo  "<script type='text/javascript'>

var passaValor= function(valor){  window.location = 'index.html?processo='+valor;  }
    
var valorQueEuQueroPassar = 1;

passaValor(valorQueEuQueroPassar);
   
</script>";

} catch(PDOException $e) {
  echo 'Error: ' . $e->getMessage();
}



?>

