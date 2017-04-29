

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CalculoConta")
public class CalculoConta extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CalculoConta() {
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//doGet(request, response);
		float media = 24;
		float grande = 34;
		float total = 0;
		int quant =  Integer.parseInt(request.getParameter("quantidade"));
		int quant1 =  Integer.parseInt(request.getParameter("quantidade1"));
		int quant2 =  Integer.parseInt(request.getParameter("quantidade2"));
		int quant3 =  Integer.parseInt(request.getParameter("quantidade3"));
		int quant4 =  Integer.parseInt(request.getParameter("quantidade4"));
		int quant5 =  Integer.parseInt(request.getParameter("quantidade5"));
		int quant6 =  Integer.parseInt(request.getParameter("quantidade6"));
		int quant7 =  Integer.parseInt(request.getParameter("quantidade7"));
		int quant8 =  Integer.parseInt(request.getParameter("quantidade8"));
		int quant9 =  Integer.parseInt(request.getParameter("quantidade9"));
		int quant10 =  Integer.parseInt(request.getParameter("quantidade10"));
		int quant11 =  Integer.parseInt(request.getParameter("quantidade11"));
		
		if (quant > 0){
			total += quant*media;
		}
		if (quant1 > 0){
			total += quant1*grande;
		}
		if (quant2 > 0){
			total += quant2*media;
		}
		if (quant3 > 0){
			total += quant3*grande;
		}
		if (quant4 > 0){
			total += quant4*media;
		}
		if (quant5 > 0){
			total += quant5*grande;
		}
		if (quant6 > 0){
			total += quant6*media;
		}
		if (quant7 > 0){
			total += quant7*grande;
		}
		if (quant8 > 0){
			total += quant8*media;
		}
		if (quant9 > 0){
			total += quant9*grande;
		}
		if (quant10 > 0){
			total += quant10*media;
		}
		if (quant11 > 0){
			total += quant11*grande;
		}
		
		request.setAttribute("total",total);
		
		RequestDispatcher rd = request.getRequestDispatcher("conta.jsp");
		rd.forward(request, response);
	}

}
