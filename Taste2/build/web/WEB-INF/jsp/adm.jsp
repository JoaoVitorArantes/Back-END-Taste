<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="perfil" value="${sessionScope.perfil}" />

<c:choose>
    <c:when test="${perfil == 'ADMIN'}">
        <h2>Bem-vindo, Administrador!</h2>
        <a href="consultarUsuarios">Gerenciar Usuários</a>
    </c:when>
    <c:when test="${perfil == 'ARTISTA'}">
        <h2>Bem-vindo, Artista!</h2>
        <a href="musica">Minhas Músicas</a>
    </c:when>
    <c:when test="${perfil == 'OUVINTE'}">
        <h2>Bem-vindo, Ouvinte!</h2>
        <a href="albumc">Minhas Playlists</a>
    </c:when>
    <c:otherwise>
        <h2>Acesso não autorizado.</h2>
    </c:otherwise>
</c:choose>


