<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="psicologos.aspx.cs" Inherits="ProjetoHappyMind.pages.psicologos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>psicólogos</title>
    <!-- <link rel="stylesheet" href="estilo.css"> -->
    <link rel="stylesheet" href="../assets/css/footer.css" />
    <link rel="stylesheet" href="../assets/css/header.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css" />

    <style>
        *,
        ::after,
        ::before {
            -moz-box-sizing: inherit;
            -webkit-box-sizing: inherit;
            box-sizing: inherit;
        }

        /*mobile responsive*/
        /*body*/
        body {
            margin: auto;
            text-align: justify;
            background-color: hsl(260, 18%, 10%);
            height: 1;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue', sans-serif;
        }

        p,
        b {
            color: white;
        }

        body::-webkit-scrollbar {
            background-color: hsl(260, 18%, 10%);
        }

        body::-webkit-scrollbar-thumb {
            background-color: rgba(255, 255, 255, 0.050);
        }

        main {
            text-align: center;
            line-height: 20px;
            font-size: 30px;
        }

            main span {
                color: rgba(255, 255, 255, 0.9);
                text-decoration: none;
                background-color: #9b98e7;
                border-radius: 100px;
                padding: 10px;
                font-weight: bolder;
            }

        element {
            display: flex;
        }

        .botao {
            color: rgba(255, 255, 255, 0.9);
            text-decoration: none;
            background-color: #9b98e7;
            border-radius: 100px;
            padding: 10px;
            font-weight: bolder;
        }

        .botaoMais {
            color: #9b98e7;
            font-size: 14px;
            text-align: center;
            font-weight: bolder;
            margin-bottom: 20px;
        }

        .botaoSabia {
            color: #9b98e7;
            font-weight: bolder;
        }

        .fa,
        .fas {
            font-weight: 900;
        }

        .fa,
        .far,
        .fas {
            font-family: "Font Awesome 5 Free";
        }

        .fa,
        .fab,
        .fal,
        .far,
        .fas {
            -moz-osx-font-smoothing: grayscale;
            -webkit-font-smoothing: antialiased;
            display: inline-block;
            font-style: normal;
            font-variant: normal;
            text-rendering: auto;
            line-height: 1;
        }

        .espaco-pequeno {
            margin-bottom: 30px;
        }

        .limita_tamanho {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 5px;
        }

        .espaco-medio {
            margin-bottom: 50px;
        }

        .psicologos-wrapper {
            display: flex;
            padding: 10px;
            text-align: left;
            flex-direction: row;
        }

            .psicologos-wrapper .psicologo-wrapper {
                position: relative;
                display: flex;
                flex-direction: row;
                flex: 20%;
                border-radius: 5px;
                margin: 15px;
                min-width: 200px;
                justify-content: space-between;
                overflow: hidden;
                transition: background-color .5s ease-out;
            }

        main a,
        main a:active,
        main a:hover,
        main a:visited {
            text-decoration: none;
            color: white;
        }

        .psicologos-wrapper .psicologo-wrapper > a {
            height: 100%;
        }

        .psicologos-wrapper .psicologo-wrapper .psicologo {
            position: relative;
            background-color: #f8f8f8;
            text-align: center;
            height: 100%;
            min-width: 200px;
            padding: 30px 30px 100px;
        }

        .psicologos-wrapper .psicologo-wrapper .psicologo {
            text-align: center;
        }

            .psicologo-imagem,
            .psicologos-wrapper .psicologo-wrapper .psicologo .img {
                border-radius: 50%;
                width: 100%;
                max-height: 300px;
                padding: 0;
                margin: 0;
                max-width: 300px;
                background-color: #46c8ec;
                overflow: hidden;
                display: block;
            }

            .psicologos-wrapper .psicologo-wrapper .psicologo .psicologo-nome {
                margin-top: 20px;
                text-transform: uppercase;
                color: #46c8ec;
                font-weight: 900;
                font-size: 1.5em;
            }

            .psicologos-wrapper .psicologo-wrapper .psicologo .psicologo-detalhes {
                margin-top: 20px;
                color: #555;
                font-size: 1.3em;
            }

            .psicologos-wrapper .psicologo-wrapper .psicologo .psicologo-bot {
                font-size: 1.3em;
                display: flex;
                position: absolute;
                bottom: 0;
                padding: 0;
                left: 0;
                width: 100%;
            }

        .cd-paginacao,
        .centralizado {
            text-align: center;
        }

        main {
            margin: 0;
            padding: 0;
            font-size: 15px;
            -moz-box-sizing: border-box;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        #banner-destaque.banner-psicologos {
            background-image: url(../Images/banner-psicologos.png);
        }

        #banner-destaque {
            min-height: 150px;
        }

        #banner-destaque {
            min-height: 350px;
            padding: 0;
            margin: 0;
            text-align: center;
            height: 90%;
            width: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        #banner-destaque,
        .blog-post-img {
            background-position: center center;
            background-size: cover;
        }

        /*img psicologio*/
        #imgD {
            border: 2px solid #9b98e7;
            padding: 5px;
            border-radius: 500px;
            width: 60%;
        }


        /*espaçamento entre os navs*/
        #Conheça .manu-btn:not(:last-child) {
            margin-right: 10px;
        }

        /*background do nav*/
        #Conheça #nav-auto div {
            border: 2px solid #20a6ff;
            padding: 5px;
            border-radius: 10px;
            cursor: pointer;
            transition: 1s;
        }

        /*background do nav*/
        #Conheça #nav-auto {
            position: absolute;
            width: 100%;
            display: flex;
            justify-content: center;
        }

            /*espaçamento para o background ficar dentro do nav*/
            #Conheça #nav-auto div:not(:first-child) {
                margin-left: 10px;
            }

        .psicologo-ver-mais-centralizado {
            text-align: center;
        }

        .detalhes {
            border: 5px #1d1825 solid;
            width: 200px;
            height: 400px;
            border-radius: 75px;
            margin: auto;
        }

        .psicologos-wrapper2 {
            margin: 0px;
            padding: 0px;
            box-sizing: border-box;
        }

        .psicologos-wrapper-plantao2 {
            display: flex;
            flex-direction: row;
        }



        /*tablet responsive*/
        @media screen and (min-width: 736px) and (max-width: 1049px) {

            main,
            div.psicologos-wrapper {
                display: flex;
                flex-direction: column;
            }


                main h1 #banner-destaque.banner-psicologos {
                    margin: 0;
                    padding: 0;
                    border: 0;
                    font-size: 10%;
                    font: inherit;
                    vertical-align: baseline;
                }
        }

        /*pc responsive*/
        @media screen and (min-width: 1050px) {
            .psicologos-wrapper {
                text-align: center;
                flex-direction: row;
                justify-content: space-around;
                max-width: 100%;
            }

            .plantao {
                width: 80%;
            }


            /*main*/
            main {
                background-size: 100%;
            }
        }
    </style>
</head>

<body>
    <header>

        <a href="/default.html">
            <img class="logo--header" src="/images/Logo--img.png" alt=""></a>

        <div class="nav--desktop">
            <a href="">
                <p>Psicólogos</p>
            </a>
            <p onclick="logingModal()">Entrar</p>
        </div>

        <div class="container--nav-btn-mobile" onclick="toggleMenu()">
            <span class="bnt--mobile-linha-1"></span>
            <span class="bnt--mobile-linha-2"></span>
            <span class="bnt--mobile-linha-3"></span>
        </div>
        <ul class="nav--area">
            <li><a href="/pages/psicologos.html">Psicólogos</a></li>
            <li onclick="logingModal()">Entrar</li>
        </ul>

        <div class="modal--login">
            <form class="form--login" runat="server">
                <div class="back--btn">
                    <span class="btn--login-close" onclick="bntBack()"><i class="bi bi-arrow-left"></i></span>
                </div>

                <div class="login--card">
                    <asp:Label for="login" runat="server">Usuário</asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </div>
                <div class="senha--card">
                    <asp:Label for="senha" runat="server">Senha</asp:Label>
                    <asp:TextBox ID="txtSenha" runat="server"></asp:TextBox>
                </div>
                <div class="modal--links">
                    <a href="/pages/cadastro-usuario.html">Cadastre-se</a>
                    <a href="/">Esqueci a senha</a>
                </div>
                <asp:Button ID="BtnLogar" CssClass="btn--login" runat="server" Text="Logar" OnClick="BtnLogar_Click"/>
            </form>
        </div>

    </header>

    <h1 id="banner-destaque" class="banner-psicologos">Psicólogos</h1>
    <main>

        <form runat="server">
            <div class="psicologos-wrapper">
                <div class="psicologos-wrapper">
                    <div class="psicologo">
                        <div class="psicologo .img">
                            <asp:Image ID="Image1" runat="server" ImageUrl="../assets/images/LuizaPsicologa.png" />
                        </div>
                        <div class="detalhes">
                            <div class="psicologo-nome">

                                <asp:Label ID="txtBoxNome1" runat="server">Silva Ferreira</asp:Label>

                                <div class="psicologo-detalhes">
                                    <asp:Label ID="txtBoxDescricao1" runat="server" Text="none"></asp:Label>
                                    <asp:Label ID="txtBoxTelefone1" runat="server" Text="none"></asp:Label>
                                    <asp:Label ID="txtBoxNotaC1" runat="server" Text="none"></asp:Label>

                                   <asp:Button ID="btn" runat="server" Text="Disponível Agora" OnClick="btn_Click"/>

                                </div>

                                <div class="psicologo-bot">
                                    <div class="bot-wrapper">
                                        <p>A partir de: <b>R$40,00</b></p>
                                        <br />
                                        <br />
                                        <a href="perfil.html">
                                     <div class="botaoSabia">Sabia mais </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="psicologos-wrapper plantao">
                        <div class="psicologo">
                            <div class="psicologo .img">
                            <asp:Image ID="Image2" runat="server" ImageUrl="../assets/images/LuizaPsicologa.png" />
                        </div>
                        <div class="detalhes">
                            <div class="psicologo-nome">

                                <asp:Label ID="txtBoxNome2" runat="server">Marcos Roberto</asp:Label>

                                <div class="psicologo-detalhes">
                                    <asp:Label ID="txtBoxDescricao2" runat="server" Text="none"></asp:Label>
                                    <asp:Label ID="txtBoxTelefone2" runat="server" Text="none"></asp:Label>
                                    <asp:Label ID="txtBoxNotaC2" runat="server" Text="none"></asp:Label>

                                   <asp:Button ID="Button1" runat="server" Text="Disponível Agora" OnClick="Button1_Click" />

                                </div>
                                <div class="psicologo-bot">
                                    <div class="bot-wrapper">
                                        <p>A partir de: <b>R$60,00</b></p>
                                        <br />
                                        <br />
                                        <a href="perfil.html">
                                            <div class="botaoSabia">Sabia mais</div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="psicologos-wrapper plantao">
                        <div class="psicologo">
                           <div class="psicologo .img">
                            <asp:Image ID="Image3" runat="server" ImageUrl="../assets/images/LuizaPsicologa.png" />
                        </div>
                        <div class="detalhes">
                            <div class="psicologo-nome">

                                <asp:Label ID="txtBoxNome3" runat="server">Julio Cesar</asp:Label>

                                <div class="psicologo-detalhes">
                                    <asp:Label ID="txtBoxDescricao3" runat="server" Text="none"></asp:Label>
                                    <asp:Label ID="txtBoxTelefone3" runat="server" Text="none"></asp:Label>
                                    <asp:Label ID="txtBoxNotaC3" runat="server" Text="none"></asp:Label>

                                   <asp:Button ID="Button2" runat="server" Text="Disponível Agora" OnClick="Button2_Click"/>

                                </div>
                                <div class="psicologo-bot">
                                    <div class="bot-wrapper">
                                        <p>A partir de: <b>R$60,00</b></p>
                                        <br />
                                        <br />
                                        <a href="perfil.html">
                                            <div class="botaoSabia">Sabia mais</div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="psicologos-wrapper plantao">
                        <div class="psicologo">
                           <div class="psicologo .img">
                            <asp:Image ID="Image4" runat="server" ImageUrl="../assets/images/LuizaPsicologa.png" />
                        </div>
                        <div class="detalhes">
                            <div class="psicologo-nome">

                                <asp:Label ID="txtBoxNome4" runat="server">Maria Silva</asp:Label>

                                <div class="psicologo-detalhes">
                                    <asp:Label ID="txtBoxDescricao4" runat="server" Text="none"></asp:Label>
                                    <asp:Label ID="txtBoxTelefone4" runat="server" Text="none"></asp:Label>
                                    <asp:Label ID="txtBoxNotaC4" runat="server" Text="none"></asp:Label>

                                   <asp:Button ID="Button3" runat="server" Text="Disponível Agora" OnClick="Button3_Click"/>

                                </div>
                                <div class="psicologo-bot">
                                    <div class="bot-wrapper">
                                        <p>A partir de: <b>R$60,00</b></p>
                                        <br />
                                        <br />
                                        <a href="perfil.html">
                                            <div class="botaoSabia">Sabia mais</div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="psicologos-wrapper2">
                        <div class="psicologos-wrapper-plantao2">
                            <div class="psicologo">
                                <div class="psicologo .img">
                            <asp:Image ID="Image5" runat="server" ImageUrl="../assets/images/LuizaPsicologa.png" />
                        </div>
                        <div class="detalhes">
                            <div class="psicologo-nome">

                                <asp:Label ID="txtBoxNome5" runat="server">julia Americana</asp:Label>

                                <div class="psicologo-detalhes">
                                    <asp:Label ID="txtBoxDescricao5" runat="server" Text="none"></asp:Label>
                                    <asp:Label ID="txtBoxTelefone5" runat="server" Text="none"></asp:Label>
                                    <asp:Label ID="txtBoxNotaC5" runat="server" Text="none"></asp:Label>

                                   <asp:Button ID="Button4" runat="server" Text="Disponível Agora" OnClick="Button4_Click"/>

                                </div>
                                    <div class="psicologo-bot">
                                        <div class="bot-wrapper">
                                            <p>A partir de: <b>R$60,00</b></p>
                                            <br />
                                            <br />
                                            <a href="perfil.html">
                                                <div class="botaoSabia">Sabia mais</div>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </main>
    <footer>
        <div id="footer2">
            <figure>
                <img src="../images/logo2.png" alt="logo" id="logoFooter">
            </figure>

            <address>
                <img src="../images/email.png" alt="E-mail" id="imgEmail">
                <a class="socialFooter" href="">: Contato@HappyMind.com</a>
            </address>

            <address>
                <img src="../images/whatsapp.png" alt="Whatsapp" id="imgWhatsapp">
                <a class="socialFooter" href="">: (13) 99639-6895</a>
            </address>

            <p id="referenciaFooter">Desenvolvido por turma TI-42</p>
        </div>
        <p id="avisoFooter">
            ATENÇÃO: Este portal não oferece atendimento de urgência para
            casos relacionados a crises suicidas. Nestes casos, entre em
            contato gratuitamente com o CVV (Centro de Valorização da Vida)
            pelo telefone 188 ou acesse www.cvv.org.br. Em caso de
            emergências, busque o hospital mais próximo ou ligue 192
            (SAMU).
        </p>
    </footer>

    <script src="../assets/js/mobile-menu.js"></script>
    <script src="../assets/js/login-modal.js"></script>
</body>

</html>
