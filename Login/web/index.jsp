<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html14/loose.dtd">
<html>
    <head>
        <title>Página de cadastro</title>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" type="text/css" href="ref/style.css" />
        <script type="text/javascript">
            function validar() {
                var nome_cadastro = formCadastro.nome_cad.value;
                var email_cadastro = formCadastro.email_cad.value;
                var senha_cadastro = formCadastro.senha_cad.value;

                if (nome_cadastro == "") {
                    alert("Preencha com seu nome!");
                    formCadastro.nome_cad.focus();
                    return false;
                }

                if (email_cadastro == "") {
                    alert("Preencha com seu email!");
                    formCadastro.email_cad.focus();
                    return false;
                }

                if (senha_cadastro == "") {
                    alert("Preencha com sua senha!");
                    formCadastro.senha_cad.focus();
                    return false;
                }

                if (senha_cadastro.length < 6 | senha_cadastro.length > 8) {
                    alert("Sua senha deve ter entre 6 e 8 caracteres!");
                    formCadastro.senha_cad.focus();
                    return false;
                } else {
                    alert("Cadastro realizado com sucesso! no email de " + email_cadastro);
                    return true;
                }
        </script>
    </head>
    <body>
    <body>
        <div class="container">
            <a class="links" id="paracadastro"></a>
            <a class="links" id="paralogin"></a>
            <div class="content">
                <div id="cadastro">
                    <form name="frmCadastrarLogin" action="CadastroLogin" method="post">
                        <h1>Cadastro</h1>
                        <p>
                            <label for="nome_cad">Seu nome</label>
                            <input id="nome_cad" name="nome" required="required" type="text" placeholder="ex. João Felipe"/>
                        </p>
                        <p>
                            <label for="email_cad">Seu email</label>
                            <input id="email_cad" name="email" required="required" type="text" placeholder="ex. exemplo@gmail.com "/>
                        </p>
                        <p>
                            <label for="senha_cad">Sua senha</label>
                            <input id="senha_cad" name="senha" required="required" type="password" placeholder="ex. 12345"/>
                        </p>
                        <p>
                            <input type="submit" value="Cadastrar" onclick="return validar()"/>
                        </p>
                        <p class="link">
                            Já tem conta?
                            <a href="login.jsp"> Ir para Login</a>
                        </p>
                    </form>
                </div>

            </div>
        </div>
    </body>
</html>
