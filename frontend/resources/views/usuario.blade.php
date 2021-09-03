<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuario</title>    
</head>
<body>
    <form action="/usuario" method="POST">
    {{ csrf_field() }}
    <div>         
        <h1>Alta Usuario</h1>
        <label for="">Nombre</label> 
        <input type="text" name="nombre" placeholder="Nombre"> <br>
        <label for="">Usuario</label> 
        <input type="text" name="usuario" placeholder="Usuario"> <br>      
        <label for="">Password</label>    
        <input type="password" name="pass" placeholder="Password"><br>       
        <input type="submit" value="Enviar">        
    </div>
    </form>    
</body>
</html>