package com.patient;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class BookAmbulance
 */
@WebServlet("/BookAmbulance")
public class BookAmbulance extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pdisease = request.getParameter("pdisease");
		String avn = request.getParameter("vehicleNo");
		String scity = request.getParameter("scity");
		String dcity = request.getParameter("dcity");
		String ambulance_status = "Pending";
		HttpSession session = request.getSession();
		try {
			int bookAmbulance = DatabaseConnection.insertUpdateFromSqlQuery("update tblpatient set patient_disease='"
					+ pdisease + "',avn='" + avn + "',source_city='" + scity + "',destination_city='" + dcity
					+ "',ambulance_status='" + ambulance_status + "' where patient_id='" + session.getAttribute("pid")
					+ "' and uname='" + session.getAttribute("uname") + "'");
			if (bookAmbulance > 0) {
				String message="Ambulance booking successfully.";
				session.setAttribute("book-ambulance", message);
				response.sendRedirect("search-ambulance.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
