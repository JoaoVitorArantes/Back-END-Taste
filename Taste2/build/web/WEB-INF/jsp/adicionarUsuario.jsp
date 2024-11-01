<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usuario</title>
    </head>
    <body>
        <table>
            <h1>Cadastro de Usuario</h1>
           <form:form method="POST" action="${pageContext.request.contextPath}/cadastrar" commandName="usuario" name="formulario" id="formulario">
                
                <tr><td>
                    <form:label path= "nome_usuario">Nome</form:label>
                    <form:input path = "nome_usuario" />
                </td></tr>
                <tr><td>
                    <form:label path= "email">Email</form:label>
                    <form:input path = "email" />
                </td></tr>
                <tr><td>
                    <form:label path= "senha">Senha</form:label>
                    <form:input path = "senha" />
                </td></tr>
              <tr><td>
                    <form:label path = "genero_usuario">Genero</form:label>
                    <form:radiobutton path = "genero_usuario" value = "M" label = "Masculino"  /> 
                    <form:radiobutton path = "genero_usuario" value = "F" label = "Feminio" /> 
                </td></tr>
                <tr><td>
                    <form:label path= "dt_nasc">Niver</form:label>
                        <input type="date" class="form-input" path="dt_nasc" placeholder="dt_nasc" />
                        
                   <form:hidden path = "perfil" value="administrador" />
                    <input type = "submit" value = "::. Inserir .::"/> 
               </td></tr>
            </form:form>
        </table>
    </body>
</html>