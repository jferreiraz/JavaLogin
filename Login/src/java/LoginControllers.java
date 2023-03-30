import br.com.conexao.CriarConexao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginControllers extends HttpServlet {
     @Override
     protected void doPost(HttpServletRequest request, HttpServletResponse response) 
             throws ServletException, IOException {
        
         String emailBuscado = "";
        String senhaBuscada = "";
        Connection con;
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String sql = "Select * from tb_login where email = ? and senha = ?";
        try {
            con = CriarConexao.getConexao();
            PreparedStatement stmt = con.prepareStatement(sql);
            stmt.setString(1, email);
            stmt.setString(2, senha);
            
            ResultSet rs = stmt.executeQuery();
            while (rs.next()){
                emailBuscado = rs.getString("email");
                senhaBuscada = rs.getString("senha");
            }
            rs.close();
            stmt.close();
        } catch(SQLException e){
            e.printStackTrace();
        }
        if(emailBuscado.equals(email) || senhaBuscada.equals(senha)){
            HttpSession session = request.getSession();
            session.setAttribute("email", email);
            request.getRequestDispatcher("logado.jsp").forward(request, response);
        } else {
            System.out.println(emailBuscado + "-" + email);
            System.out.println(senhaBuscada + "-" + senha);
            request.getRequestDispatcher("errodeusuario.jsp").forward(request, response);
        }
         
    }
} 
     
     
 
   
