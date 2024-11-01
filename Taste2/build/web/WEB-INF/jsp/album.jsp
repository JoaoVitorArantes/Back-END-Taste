<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="css/carregar.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}css/csscarregar/crg.css">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>Taste Music</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="${pageContext.request.contextPath}images/fevicon.ico" type="ico" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->

<body class="main-layout album-page">
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
                                    <a href="index.html"><img src="${pageContext.request.contextPath}images/logo.png" alt="logo" /></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-8 col-md-10 col-sm-10">
                        <div class="menu-area">
                            <div class="limit-box">
                                <nav class="main-menu">
                                    <ul class="menu-area-main">
                                        <li> <a href="index.htm">Home</a> </li>
                                        <li> <a href="sobre.html">Sobre</a> </li>
                                        <li class="active"> <a href="album">Álbuns</a> </li>
                                        <li> <a href="att.html">Atualizações</a> </li>
                                        <li> <a href="contato.html">Contato</a> </li>
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

    <div class="Albumsbg">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="Albumstitlepage">
                        <h2>Álbuns</h2>
                    </div>
                </div>
            </div>
        </div>

    </div>
     
    <!-- Albums -->
    <div class="Albums">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="titlepage">

                        <span>Explore Novos Álbuns com Nossa Última Atualização! ?
                            
                            Descubra os lançamentos mais quentes e os álbuns mais esperados em nosso aplicativo musical! ? Aqui estão alguns destaques:</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="${pageContext.request.contextPath}images/album1.jpg" class="fancybox" rel="ligthbox">
                                <img src="${pageContext.request.contextPath}images/album1.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="${pageContext.request.contextPath}images/album1.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="${pageContext.request.contextPath}images/album2.jpg" class="fancybox" rel="ligthbox ">
                                <img src="${pageContext.request.contextPath}images/album2.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="${pageContext.request.contextPath}images/album2.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="${pageContext.request.contextPath}images/album3.jpg" class="fancybox" rel="ligthbox">
                                <img src="${pageContext.request.contextPath}images/album3.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="${pageContext.request.contextPath}images/album3.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="${pageContext.request.contextPath}images/album4.jpg" class="fancybox" rel="ligthbox ">
                                <img src="${pageContext.request.contextPath}images/album4.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="${pageContext.request.contextPath}images/album4.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="${pageContext.request.contextPath}images/album5.jpg" class="fancybox" rel="ligthbox">
                                <img src="${pageContext.request.contextPath}images/album5.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="${pageContext.request.contextPath}images/album5.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="${pageContext.request.contextPath}images/album6.jpg" class="fancybox" rel="ligthbox ">
                                <img src="${pageContext.request.contextPath}images/album6.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="${pageContext.request.contextPath}images/album6.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="${pageContext.request.contextPath}images/album7.jpg" class="fancybox" rel="ligthbox">
                                <img src="${pageContext.request.contextPath}images/album7.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="${pageContext.request.contextPath}images/album7.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="${pageContext.request.contextPath}images/album8.jpg" class="fancybox" rel="ligthbox ">
                                <img src="${pageContext.request.contextPath}images/album8.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="${pageContext.request.contextPath}images/album8.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="${pageContext.request.contextPath}images/album9.jpg" class="fancybox" rel="ligthbox">
                                <img src="${pageContext.request.contextPath}images/album9.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="${pageContext.request.contextPath}images/album9.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="${pageContext.request.contextPath}images/album10.jpeg" class="fancybox" rel="ligthbox ">
                                <img src="${pageContext.request.contextPath}images/album10.jpeg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="${pageContext.request.contextPath}images/album10.jpeg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album11.jpg" class="fancybox" rel="ligthbox">
                                <img src="images/album11.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album11.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album13.jpg" class="fancybox" rel="ligthbox ">
                                <img src="images/album13.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album13.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album15.jpg" class="fancybox" rel="ligthbox">
                                <img src="images/album15.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album15.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album16.jpg" class="fancybox" rel="ligthbox ">
                                <img src="images/album16.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album16.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>  
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album12.jpg" class="fancybox" rel="ligthbox">
                                <img src="images/album12.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album12.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album20.jpeg" class="fancybox" rel="ligthbox ">
                                <img src="images/album20.jpeg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album20.jpeg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album23.jpeg" class="fancybox" rel="ligthbox">
                                <img src="images/album23.jpeg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album23.jpeg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album21.jpg" class="fancybox" rel="ligthbox ">
                                <img src="images/album21.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album21.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album22.jpg" class="fancybox" rel="ligthbox">
                                <img src="images/album22.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album22.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album19.jpg" class="fancybox" rel="ligthbox ">
                                <img src="images/album19.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album19.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album18.jpg" class="fancybox" rel="ligthbox">
                                <img src="images/album18.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album18.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album14.jpg" class="fancybox" rel="ligthbox ">
                                <img src="images/album14.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album14.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album24.jpeg" class="fancybox" rel="ligthbox">
                                <img src="images/album24.jpeg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album24.jpeg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 margin">
                    <div class="Albums-box">
                        <figure>
                            <a href="images/album17.jpg" class="fancybox" rel="ligthbox ">
                                <img src="images/album17.jpg" class="zoom img-fluid " alt="">
                            </a>
                            <span class="hoverle">
                        <a href="images/album17.jpg" class="fancybox" rel="ligthbox"><img src="images/search.png"></a>
                        </span>
                        </figure>
                    </div>
                </div>
                

            </div>
        </div>
    </div>
    <!-- end Albums -->

    <!--  footer -->
    <footer>
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3 col-md-6 col-sm-12 width">
                        <div class="address">
                            <h3>Fale Conosco</h3>
                            <ul class="locarion_icon">
                                <li><img src="${pageContext.request.contextPath}icon/1.png" alt="icon" />150 Uberlândia, BRA</li>
                                <li><img src="${pageContext.request.contextPath}icon/2.png" alt="icon" />Telefone: (+55 34 3223-5445)</li>
                                <li><img src="${pageContext.request.contextPath}icon/3.png" alt="icon" />Email : tastemusical@email.com</li>

                            </ul>

                            <ul class="contant_icon">
                                <li><img src="${pageContext.request.contextPath}icon/fb.png" alt="icon" /></li>
                                <li><img src="${pageContext.request.contextPath}icon/tw.png" alt="icon" /></li>
                                <li><img src="${pageContext.request.contextPath}icon/lin(2).png" alt="icon" /></li>
                                <li><img src="${pageContext.request.contextPath}icon/instagram.png" alt="icon" /></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-sm-12 width">
                        <div class="address">
                            <h3>Informações</h3>
                            <form>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <input class="contactus" placeholder="Nome" type="text" name="Nome">
                                    </div>
                                    <div class="col-sm-12">
                                        <input class="contactus" placeholder="Telefone" type="text" name="Telefone">
                                    </div>
                                    <div class="col-sm-12">
                                        <input class="contactus" placeholder="Email" type="text" name="Email">
                                    </div>
                                    <div class="col-sm-12">
                                        <textarea class="textarea" placeholder="Assunto" type="text" name="Assunto"></textarea>
                                    </div>
                                    <div class="col-sm-12">
                                        <button class="send">Enviar</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-6 col-sm-12 width">
                        <div class="address">
                            <h3>Taste Music</h3>
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 ">
                                    <figure><img src="${pageContext.request.contextPath}images/music1.jpg" /></figure>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 ">
                                    <figure><img src="${pageContext.request.contextPath}images/music2.jpg" /></figure>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 ">
                                    <figure><img src="${pageContext.request.contextPath}images/music3.jpg" /></figure>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 ">
                                    <figure><img src="${pageContext.request.contextPath}images/music4.jpg" /></figure>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright">
                <p>© 2023 Todos Os Direitos Reservados.</p>
            </div>
        </div>
    </footr>
    <!-- end footer -->
    <!-- Javascript files-->
    <script src="${pageContext.request.contextPath}js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}js/jquery-3.0.0.min.js"></script>
    <script src="${pageContext.request.contextPath}js/plugin.js"></script>
    <!-- sidebar -->
    <script src="${pageContext.request.contextPath}js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script src="${pageContext.request.contextPath}js/custom.js"></script>
    <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
    <script>
        $(document).ready(function() {
            $(".fancybox").fancybox({
                openEffect: "none",
                closeEffect: "none"
            });

            $(".zoom").hover(function() {

                $(this).addClass('transition');
            }, function() {

                $(this).removeClass('transition');
            });
        });
    </script>
</body>

</html>