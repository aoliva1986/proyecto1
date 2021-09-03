<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Marcar</title>
    <style>
        div.static {
        position: static;    
        }
        h1 {
        color: green;
        }
    </style>
</head>
<body>
<form action="/marcar" method="POST">
    {{ csrf_field() }}
    <div>         
        <h1>Registrarse</h1>
        <a href="/crear">Crear Usuarios</a>    
        <h3><?php echo $date = date('m/d/Y h:i:s a', time());?><br></h3>
        <div>
            <label for="">Usuario</label> 
            <input type="text" name="id" placeholder="id"> <br>
        </div>       
        <div class ="static">
            <label for="">Tipo</label> 
            <input type="text" name="tipo" placeholder="Tipo">
        </div>
        <div>
            <label for="">Hora</label> 
            <input type="datetime-local" name="hora" placeholder="hora"> <br> 
        </div>                
        <input type="submit" value="Enviar">        
    </div>
    </form>    
</body>
</html>