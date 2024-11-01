import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/inserirUsuario")
public class InserirUsuarioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obt�m os dados do formul�rio
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");

        // Cria um novo objeto Usuario
        Usuario usuario = new Usuario();
        usuario.setNome(nome);
        usuario.setEmail(email);
        usuario.setSenha(senha);

        // Chama o m�todo para inserir o usu�rio (em um controlador ou DAO)
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        boolean sucesso = usuarioDAO.inserirUsuario(usuario);

        if (sucesso) {
            // Se inser��o bem-sucedida, redireciona para uma p�gina de sucesso
            response.sendRedirect("sucesso.jsp");
        } else {
            // Se falha, redireciona para uma p�gina de erro
            response.sendRedirect("erro.jsp");
        }
    }
}
