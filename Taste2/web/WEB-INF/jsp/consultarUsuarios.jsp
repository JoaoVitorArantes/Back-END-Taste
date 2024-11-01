<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulário</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/estilo.css" />
        
    </head>
    <body>
        <div class="form-centro">
            
            <form:form method="POST" onsubmit="${pageContext.request.contextPath}/consultarCliente" commandName="cliente" name="formulario" id="formulario">
                <form:errors path = "*" cssClass = "blocoerro" element = "div" />
                <center><img width="40%" src="${pageContext.request.contextPath}/resources/images/figura.png"></center>
                <legend>
                    Informação do cliente
                </legend>
                <div class="input-group">
                    <form:label path= "cliCodigo">Nome</form:label>

                    <form:select path = "cliCodigo">
                        <form:option value = "0" label = "Selecionar"/>
                        <form:options items = "${webConsultaClientes}" />
                    </form:select>
                </div>
                 <div class="footer">
                    <input type = "submit" value = "::. Consultar .::"/>
                </div>
                
            
            <br> 
            <legend>
                Dados Enviados pelo usuário
            </legend>
            <div class="input-group">
                Nome: ${cliNome}
            </div>
            <div class="input-group">
                Cidade: ${cliCidade}
            </div>
            <div class="input-group">
                CPF: ${cliCPF}
            </div>
            <div class="input-group">
                Sexo: ${(cliSexo=="0"? "Masculino" : "Feminino")}
            </div>
            <div class="input-group">
                Cógido ${cliCodigo}
            </div>
           
            </form:form>
        </div>
        <!--JavaScript at end of body for optimized loading-->
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>