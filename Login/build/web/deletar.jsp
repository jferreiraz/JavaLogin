<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="br.com.conexao.CriarConexao"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html14/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <script type="text/javascript">
            function deletar(){
                
                document.formDeletarLogin.submit();
                
            }
        </script>
        <title>Deletar</title>
    </head>
    <body>
    <h2> Página deletar dados <br></h2>
    <p> Dados antigos do sistema: <br><p>

<%
            int id = 0;
            String nome = "";
            String email = "";
            String senha = "";
            String dbId = request.getParameter("id");

                Connection conn = CriarConexao.getConexao();
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from tb_login where id =\'"+ dbId + "\' ");
                
                    while(rs.next()){
                        id = rs.getInt("id");
                        nome = rs.getString("nome");
                        email = rs.getString("email");
                        senha = rs.getString("senha");
                    }
        %>
    <p><strong>ID: </strong> <%= id %>
    <p><strong>Nome: </strong><%= nome %>
    <p><strong>Email: </strong><%= email %>
    <p><strong>Senha: </strong><%= senha %><br>  
    <br><h3>Deletar dados: </h3>
        <form name="formDeletarLogin" action="DeletarLogin" method="post">
            <table>
                <td>Id:</td><td><input type="text" name="id" value="<%= id %>"></td>
                <td><input type="button" value="deletar" onclick="deletar()"></td>
            </table>
        </form>
        
        <p>
        </p>
        
       <%
            rs.close();
            stmt.close();
            conn.close();
        %>
            </table>
            
        <br><br>
        <a href="logado.jsp">Sair</a>
    </body>
</html>
