<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html14/loose.dtd">
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="ref/style.css" />
        <script type="text/javascript">
            function validarLogin() {
                var email_login = formLogin.email_login.value;
                var senha_login = formLogin.senha_login.value;

                if (email_login == "") {
                    alert("Preencha com seu email!");
                    formLogin.email_login.focus();
                    return false;
                }

                if (senha_login == "") {
                    alert("Preencha com sua senha!");
                    formLogin.senha_login.focus();
                    return false;
                }

            }
        </script>
        <title>Página de login</title>
    </head>
    <body>
        <div class="container">
            <a class="links" id="paracadastro"></a>
            <a class="links" id="paralogin"></a>
            <div class="content">
                <div id="login">
                    <form name="formLogin" method="post" action="Login">
                        <h1>Login</h1>
                        <p>
                            <label for="email_login">Seu e-mail</label>
                            <input id="email_login" name="email" required="required" type="text" placeholder="ex. contato@projecaoceilandia.com"/>
                        </p>          
                        <!-- label for, input id, name de email/senha_login ajustados -->
                        <p>
                            <label for="senha_login">Sua senha</label>
                            <input id="senha_login" name="senha" required="required" type="password" placeholder="ex. 12345"/>
                        </p>
                        <p>
                            <input type="checkbox" name="manterlogado" id="manterlogado" value="" />
                            <label for="manterlogado">Manter-me logado</label>
                        </p>
                        <p>
                            <input type="submit" value="Logar" onclick="return validarLogin()"/>
                        </p>
                        <p class="link">
                            Ainda não tem conta?
                            <a href="index.jsp">Cadastre-se</a>
                        </p>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
