package controlador;
 
import java.io.IOException;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
import modelo.Usuarios;
import modelo.UsuarioDao;
 
/**
 * Servlet implementation class Controlador
 */
@WebServlet("/Controlador")
public class Controlador extends HttpServlet {
    private static final long serialVersionUID = 1L;
    UsuarioDao dao = new UsuarioDao();
    Usuarios p = new Usuarios() ; 
    int r;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controlador() {
        super();
        // TODO Auto-generated constructor stub
    }
 
    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
        String accion = request.getParameter("accion");
        if (accion.equals("Ingresar") ) {
            String nom = request.getParameter("txtnom");
            String correo = request.getParameter("txtcorreo");
            p.setNombre_usuario(nom);
            p.setEmail_usuario(correo);
            if(r==1) {
                request.getSession().setAttribute("nom",nom);
                request.getSession().setAttribute("correo",correo);
                request.getRequestDispatcher("Principal.jsp").forward(request, response);
            }else {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        }else {
                request.getRequestDispatcher("index.jsp").forward(request, response);
 
        }
    }
 
    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        doGet(request, response);
    }
 
}