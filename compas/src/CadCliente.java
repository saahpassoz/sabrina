

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadCliente
 */
@WebServlet("/CadCliente")
public class CadCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public CadCliente() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
				String nom = request.getParameter("nome");
				String  data =  request.getParameter("datNas");
				String  endereco = request.getParameter("end");
				String  telefone = request.getParameter("tel");
				String  cpf = request.getParameter("CPF");
				
				request.setAttribute("nome", nom);
				request.setAttribute("datNas", data);
				request.setAttribute("end", endereco);
				request.setAttribute("tel", telefone);
				request.setAttribute("CPF", cpf);
				RequestDispatcher rd = request.getRequestDispatcher("cadastro.jsp");
				rd.forward(request, response);
			}
}


