<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="estilos.css">
    <style>     
        h1 {
        color: green;
        }
    </style>
</head>
<body>
    <form action="/usuario" method="POST">
    @csrf
    <div style="position: absolute; top: 150px; left:600px;">
        <h1>Inicion de Sesion</h1>
        <label for="">Codigo</label> <br>
        <input type="text" name="codigo" placeholder="Codigo"> <br> 
        <label for="">Usuario</label> <br>
        <input type="text" name="usuario" placeholder="Usuario"> <br>      
        <label for="">Password</label><br>
        <input type="password" name="pass" placeholder="Password"><br>
        <input type="submit" value="Enviar">        
    </div>
    </form>    
</body>
</html>