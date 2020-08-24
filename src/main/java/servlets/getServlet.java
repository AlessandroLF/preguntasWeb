/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import db.DatabaseQ;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URISyntaxException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author lomba
 */
public class getServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            DatabaseQ db = new DatabaseQ();
            ResultSet rs = db.getTodas();
            db.close();
            out.print("<table>");
            while(rs.next()){
                out.print("<tr><td>");
                String image = Base64.getEncoder().encodeToString(rs.getBytes("pregunta"));
                String info[] = rs.getString("examen").split("-");
                out.println("<div class='bigContainer btn' >");
                out.println("<table><tr><td>");
                out.println("<image heigth='250px' width='200px' src='data:Image/png;base64," + image + "' alt='Examen' >");
                out.println("</td></tr><tr><td>");
                out.println("Materia: " + info[0] + "<br>");
                out.println("Parcial: " + info[1] + "<br>");
                out.println("Semestre: " + info[2] + "<br>");
                out.println("Año: " + info[3]);
                if(info.length > 4)
                    out.println("Materia: " + info[4]);
                out.println("</td></tr></table>");
                out.println("</div></td></tr>");
            }
            out.print("</table>");
        } catch (URISyntaxException | SQLException ex) {
            out.print(ex.getMessage());
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
