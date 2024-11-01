<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Musica</title>
    </head>
    <body>
        <table>
            <h1>Cadastro de Musica</h1>
           <form:form method="POST" action="${pageContext.request.contextPath}/cadastrar" commandName="musica" name="formulario" id="formulario">
                
                <tr><td>
                    <form:label path= "titulo">Nome</form:label>
                    <form:input path = "titulo" />
                </td></tr>
                <tr><td>
                    <form:label path = "genero">Genero</form:label>
                    <form:radiobutton path = "genero" label = "Sertanejo"/> 
                    <form:radiobutton path = "genero" label = "Funk" /> 
                    <form:radiobutton path = "genero" label = "Pop" />
                </td></tr>
                <tr><td>
                    <form:label path= "tempo_reproducao">tempo_reproducao</form:label>
                    <form:input path = "tempo_reproducao" />
                </td></tr>
                <tr><td>
                    <form:label path= "tempo_reproducao">Senha</form:label>
                    <form:input path = "tempo_reproducao" />
                </td></tr>
                <tr><td>
                    <form:label path= "album">album</form:label>
                    <form:input path = "album" />
                </td></tr>
                <tr><td>
                    <form:label path= "data_lancamento">Lancamento</form:label>
                        <input type="date" class="form-input" path="data_lancamento" placeholder="data_lancamento" />
                        
                   <form:hidden path = "perfil" value="administrador" />
                    <input type = "submit" value = "::. Inserir .::"/> 
               </td></tr>
            </form:form>
        </table>
    </body>
</html>