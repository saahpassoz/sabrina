

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class resEnquete
 */
@WebServlet("/resEnquete")
public class resEnquete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public resEnquete() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.setAttribute("resultado", resultado);
		
		HttpSession session = request.getSession();
		
		if(session.getValue("Votos") == null){
			int[] votos = new int[7];
			
			for(int i=0;i<7;i++){
				votos[i]= 0;
			}
			
			session.setAttribute("Votos", votos);
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("votar.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//request.setAttribute("resultado", resultado);
		
		int personagem = Integer.parseInt(""+request.getParameter("Voto"));
		
		HttpSession session = request.getSession();
		
		int[] votos = (int[])session.getValue("Votos");
		
		if(votos != null){
			int contVotos = votos[personagem];
			votos[personagem] = contVotos + 1;
			
			int maior = 0;
			int vencedor = 0;
			for(int i=0;i<7;i++){
				if(votos[i] > maior){
					maior = votos[i];
					vencedor = i;
				}
			}
			
			request.setAttribute("vencedor", vencedor);
		}
		
		
		 	
		RequestDispatcher rd = request.getRequestDispatcher("resultado.jsp");
		rd.forward(request, response);
	}

}
