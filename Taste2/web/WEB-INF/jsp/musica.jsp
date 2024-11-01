<%-- 
    Document   : musica
    Created on : 1 de nov. de 2024, 00:40:49
    Author     : Jd851
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form:form method="POST" action="${pageContext.request.contextPath}/musicar/inserir">
    <h2 class="form-title">Inserir Nova Música</h2>

    <div class="form-input-container">
        <!-- Campo para Título da Música -->
        <label for="titulo">Título</label>
        <input type="text" id="titulo" class="form-input" path="titulo" placeholder="Título da Música" required />

        <!-- Campo para Gênero -->
        <label for="genero">Gênero</label>
        <input type="text" id="genero" class="form-input" path="genero" placeholder="Gênero" required />

        <!-- Campo para Tempo de Reprodução -->
        <label for="tempo_reproducao">Tempo de Reprodução (min:seg)</label>
        <input type="text" id="tempo_reproducao" class="form-input" path="tempoReproducao" placeholder="00:00" required />

        <!-- Campo para Data de Lançamento -->
        <label for="data_lancamento">Data de Lançamento</label>
        <input type="date" id="data_lancamento" class="form-input" path="dataLancamento" required />

        <!-- Campo para Álbum -->
        <label for="album">Álbum</label>
        <input type="text" id="album" class="form-input" path="album" placeholder="Nome do Álbum" required />
    </div>

    <button type="submit" class="form-button">Salvar Música</button>
</form:form>
    </body>
</html>
