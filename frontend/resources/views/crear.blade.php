<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear</title>
    <style>     
        h1 {
        color: green;
        }
    </style>
</head>
<body>
<form action="/crear" method="POST">
    {{ csrf_field() }}
    <div>         
        <h1>Crear Usuario</h1>                    
        <a href="/marcar">Registrarse</a><br>
        <label for="">Nombre:</label> 
        <input type="text" name="nombre" placeholder="Escriba nombre"> <br>
        <label for="">Usuario</label>                     
        <input type="text" name="usuario" placeholder="Escriba usuario"> <br>
        <label for="">Password</label> 
        <input type="password" name="pass" placeholder="Escriba password"> <br>             
        <input type="submit" value="Enviar">        
    </div>
    </form>    
    
</body>
</html>