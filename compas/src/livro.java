

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class livro
 */
@WebServlet("/livro")
public class livro extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public livro() {
        super();
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
		
		float total = 0;
		int quant =  Integer.parseInt(request.getParameter("quantidade"));
		int quant1 =  Integer.parseInt(request.getParameter("quantidade1"));
		int quant2 =  Integer.parseInt(request.getParameter("quantidade2"));
		int quant3 =  Integer.parseInt(request.getParameter("quantidade3"));
		int quant4 =  Integer.parseInt(request.getParameter("quantidade4"));
		
		if (quant > 0){
			total += quant*179;
		}
		if (quant1 > 0){
			total += quant1*44;
		}
		if (quant2 > 0){
			total += quant2*46;
		}
		if (quant3 > 0){
			total += quant3*30;
		}
		if (quant4 > 0){
			total += quant4*32;
		}
		
		request.setAttribute("total",total);
		
		RequestDispatcher rd = request.getRequestDispatcher("pedido.jsp");
		rd.forward(request, response);
	}

}
