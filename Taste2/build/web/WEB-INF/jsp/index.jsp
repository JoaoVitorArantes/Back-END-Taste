<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/carregar">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/csscarregar/crg">
    <!-- site metas -->
    <title>Taste Music roiiiiiiiiasdasiiii</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/style.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/responsive.css" />

    <!-- fevicon -->
    <link rel="icon" href="images/fevicon.ico" type="ico" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.mCustomScrollbar.min">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">

</head>
<!-- body -->

<body class="main-layout">
    <form:form action="#" name="formulario" id="formulario">
    <!-- loader  -->
    <div class="loader_bg">
        <div class="loader">
            <span class="barra"></span>
            <span class="barra"></span>
            <span class="barra"></span>
            <span class="barra"></span>
            <span class="barra"></span>
        </div>
    </div>
    <!-- end loader -->
    <!-- header -->
    <header>
        <!-- header inner -->
        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="col-xl-2 col-lg-2 col-md-2 col-sm-2 col logo_section">
                        <div class="full">
                            <div class="center-desk">
                                <div class="logo">
                                    <a href="index.jsp"><img src="${pageContext.request.contextPath}/resources/images/logo.png" alt="logo" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-8 col-md-10 col-sm-10">
                        <div class="menu-area">
                            <div class="limit-box">
                                <nav class="main-menu">
                                    <ul class="menu-area-main">
                                        <li class="active"> <a href="index">Home</a> </li>
                                        <li> <a href="sobre">Sobre</a> </li>
                                        <li> <a href="album">Álbuns</a> </li>
                                        <li> <a href="att">Atualizações</a> </li>
                                        <li> <a href="contato">Contato</a> </li>
                                        <li> <a href="login">Login</a> </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <!-- end header inner -->
    </header>
    <!-- end header -->

    <section class="banner_section">
        <div class="banner-main">
            <img src="${pageContext.request.contextPath}/resources/images/banner2.jpg" />
            <div class="container">
                <div class="text-bg relative">
                    <h1>Taste<br><span class="Perfect">O Som Perfeito</span><br>Bem-Vindo ao Taste</h1>
                    <a href="#">Baixe Agora</a>
                </div>
            </div>
        </div>
    </section>

    <!-- music-box  -->
    <div class="music-box">
        <div class="container">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                    <div class="for-box">
                        <i><img src="${pageContext.request.contextPath}/resources/icon/icon1.png" alt="icon" /></i>
                        <h3>Player Customizado</h3>
                        <p>Use as cores que mais combinam com você</p>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                    <div class="for-box">
                        <i><img src="${pageContext.request.contextPath}/resources/icon/icon2.png" alt="icon" /></i>
                        <h3>Planos ao seu alcance</h3>
                        <p>Valores mensais e anuais você encontra aqui</p>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                    <div class="for-box">
                        <i><img src="${pageContext.request.contextPath}/resources/icon/icon3.png" alt="icon" /></i>
                        <h3>Podcasts e Playlists</h3>
                        <p>Crie do jeito que é a sua cara</p>
                    </div>
                </div>
                <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12">
                    <div class="for-box">
                        <i><img src="${pageContext.request.contextPath}/resources/icon/icon4.png" alt="icon" /></i>
                        <h3>Vídeos Customizados</h3>
                        <p>Encontre vídeos personalizados do seu artista favorito</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- end music-box  -->

    <div class="container-fluid">
        <div class="row">
            <div class="col-xl-6 col-lg-12 col-md-12 col-sm-12 padding">
                <div class="img-box">
                    <figure><img src="${pageContext.request.contextPath}/resources/images/musicbg.jpg" alt="img" width="150%" /></figure>
                </div>
            </div>
            <div class="col-xl-6 col-lg-12 col-md-12 col-sm-12 padding">
                <div class="text-box">
                    <div class="box">
                        <i><img src="${pageContext.request.contextPath}/resources/images/5.png" /></i>
                        <h3>ENCONTRE SEUS ARTISTAS PREFERIDOS</h3>
                        <p>Dê as boas-vindas a uma nova era musical em nosso aplicativo, repleta de talentos emergentes e artistas consagrados.
                            <br>Descubra Novos Artistas com Nosso App Musical! 🌟</p>
                        <a href="#">Saiba Mais</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Dynamic section example -->
    <div id="novidades" class="Lastestnews">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">
                        <h2>Últimas Novidades</h2>
                        <span>Atualize agora e mergulhe nessas novidades emocionantes!</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Exemplo de conteúdo dinâmico JSP -->
                <%
                    String[] novidades = {"Podcasts", "Modo Natureza", "Quiz Musical"};
                    for (String novidade : novidades) {
                %>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                    <div class="news-box">
                        <figure><img src="${pageContext.request.contextPath}/resources/images/<%=novidade.toLowerCase()%>.jpg" alt="<%=novidade%>" /></figure>
                        <h3><%=novidade%></h3>
                        <span>01 Fevereiro</span><span>Comentários</span>
                        <p>Explore o <%= novidade %> em nosso aplicativo de música e aproveite esta nova funcionalidade incrível!</p>
                    </div>
                </div>
                <% } %>
            </div>
        </div>
    </div>

    <!-- end dynamic section -->

    <!-- footer -->
    <footer id="footer_with_contact">
        <div class="footer">
            <div class="container">
                <div class="row">
                    <!-- Your footer code -->
                </div>
            </div>
        </div>
    </footer>
    <!-- end footer -->
    </form:form>
</body>

</html>
