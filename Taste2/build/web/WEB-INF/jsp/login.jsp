

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html lang="pt-br">

    <head>
        <!-- basic -->
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--titulo site-->
        <title>Taste Music</title>
        <script src="https://kit.fontawesome.com/324b71f187.js" crossorigin="anonymous"></script>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Red+Hat+Display:wght@300;400;700;900&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/carregar.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/csscarregar/crg.css">
        <script src="js/script.js" defer></script>
        <link href='https://unpkg.com/css.gg@2.0.0/icons/css/instagram.css' rel='stylesheet'>
        <!-- fevicon -->
        <link rel="icon" href="${pageContext.request.contextPath}/resources/images/fevicon.ico" type="ico" />
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
        <style>


            #login-form{
                color: white;
            }

            button{
                color: white;
                background-color: #006400;
            }
            form{
                border-radius: 5px;
            }
        </style>

    </head>

    <!-- body -->

    <body class="main-layout">
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



        <!-- end header -->
        <main>

            <div class="login-container" id="login-container">
                <div class="form-container">
                    <!-- Formulário de login com Spring MVC -->
                    <form:form method="POST" action="${pageContext.request.contextPath}/logar">
                        <h2 class="form-title">Entrar com</h2>
                        <div class="form-social">
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="gg-instagram"></i>
                            </a>
                        </div>
                        <p class="form-text">ou utilize sua conta</p>
                        <div class="form-input-container">
                            <input type="email" class="form-input" path="email" placeholder="Email" /><br>
                            <input type="password" class="form-input" path="senha" placeholder="Senha" />
                        </div>
                        <a href="index.html" class="form-link">Esqueceu a senha?</a>
                        <button type="submit" class="form-button">Logar</button>
                        <p class="mobile-text">
                            Não tem conta?
                            <a href="#" id="open-register-mobile">Registre-se</a>
                        </p>
                    </form:form>
                    <!-- Formulário de registro com Spring MVC -->
                    <form:form method="post" modelAttribute="registerForm" class="form form-register">
                        <h2 class="form-title">Criar Conta</h2>
                        <div class="form-social">
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-google"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="gg-instagram"></i>
                            </a>
                        </div>
                        <p class="form-text">ou cadastre seu email</p>
                        <div class="form-input-container">
                            <input type="text" class="form-input" path="nome" placeholder="Nome" />
                            <input type="email" class="form-input" path="email" placeholder="Email" />
                            <input type="password" class="form-input" path="senha" placeholder="Senha" />
                        </div>
                        <button type="submit" class="form-button">Cadastrar</button>
                        <p class="mobile-text">
                            Já tem conta?
                            <a href="#" id="open-login-mobile">Login</a>
                        </p>
                    </form:form>
                </div>
                <!-- Overlay de login e registro -->
                <div class="overlay-container">
                    <div class="overlay">
                        <h2 class="form-title form-title-light">Já tem conta?</h2>
                        <p class="form-text">Para entrar na nossa plataforma faça login com seus dados</p>
                        <button class="form-button form-button-light" id="open-login">Entrar</button>
                    </div>
                    <div class="overlay">
                        <h2 class="form-title form-title-light">Eai Ouvinte!</h2>
                        <p class="form-text">Cadastre-se e comece a usar a nossa plataforma musical</p>
                        <button class="form-button form-button-light" id="open-register">Cadastrar</button>
                    </div>
                </div>
            </div>
        </main>


        <!-- footer -->
        <div class="copyright">
            <div class="container">
                <p>© 2023 Todos os Direitos Reservados.</p>
            </div>
        </div>
        <!-- end footer -->

        <!-- Javascript files -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery-3.0.0.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/plugin.js"></script>
        <!-- sidebar -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
        <script src="${pageContext.request.contextPath}/resources/https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".fancybox").fancybox({
                    openEffect: "none",
                    closeEffect: "none"
                });

                $(".zoom").hover(function () {
                    $(this).addClass('transition');
                }, function () {
                    $(this).removeClass('transition');
                });
            });
        </script>
    </body>

</html>