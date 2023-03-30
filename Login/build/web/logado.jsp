<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="br.com.conexao.CriarConexao"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html14/loose.dtd">
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="ref/styleLogado.css" />
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Logado</title>
    </head>
    <body>
        <div class="container">
            <div class="contentLogado">
                <div id="logado">
    <h3> Usuários cadastrados no sistema: </h3>
    
    <br>
        <table width="700px" border="1" cellspacing="0">
            <tr>
                <td><strong>Id</strong></td>
                <td><strong>Nome</strong></td>
                <td><strong>Email</strong></td>
                <td><strong>Senha</strong></td>
                <td colspan="2"><strong>Alterações</strong></td>
            </tr>
        <% 
            //Usuario u = new Usuario();
            
            int id = 0;
            String nome = "";
            String email = "";
            String senha = "";
            
                Connection conn = CriarConexao.getConexao();
                Statement stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from tb_login");
                    while(rs.next()){
                        id = rs.getInt("id");
                        nome = rs.getString("nome");
                        email = rs.getString("email");
                        senha = rs.getString("senha");
                        //u.setId(Integer.valueOf(id));
                        //u.setNome(nome);
                        //u.setEmail(email);
                        //u.setSenha(senha);
                    
        %>
        
        <tr>
            <td><%=id %></td>
            <td><%=nome %></td>
            <td><%=email %></td>
            <td><%=senha %></td>
            <td><a href="alterar.jsp?id=<%=id %>">Editar</a></td>
            <td><a href="deletar.jsp?id=<%=id %>">Deletar</a></td>
        </tr>
        
        <% 
            }
            rs.close();
            stmt.close();
            conn.close();
        %>
            </table>
            
        <br><br>
        <div class="box"><a href="remover.jsp">Sair</a><div>
        </div>
            </div></div>
    </body>
</html>
