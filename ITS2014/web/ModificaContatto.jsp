<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Modifica Contatto</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" type="text/css" href="CSS/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="CSS/style.css"/>
    </head>
    <body>
    <center>
        <h1>Nuovo Contatto</h1>
    </center>
    <form class='col-md-8'>
        <input type="hidden" id="contatto_id" 
               value='<%= request.getParameter("ContattoId")%>' />
        <fieldset>
            <label for="cognome">Cognome</label>
            <input type="text" id="cognome" />
            <label for="nome">Nome</label>
            <input type="text" id="nome" />
            <label for="cellulare">Cellulare</label>
            <input type="text" id="cellulare" />
            <label for="email">Email</label>
            <input type="text" id="email" />
        </fieldset>
        <a href="#" id="invia">Aggiorna</a> <!--il "link" # permette di rimanere nella stessa pagina-->
    </form>
    <script src='Scripts/jquery-1.11.0.js'></script>
    <script src='Scripts/modifica-contatto.js'></script>
</body>
</html>
