package boat;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author aimas
 */
@WebServlet(name = "UpdateBoat", urlPatterns = {"/UpdateBoat"})
public class UpdateBoat extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        java.sql.Connection conn = null;

        PrintWriter pw = response.getWriter();

        String boatID = request.getParameter("boatID");
        if (boatID == null) {
            out.print("Error: missing parameter 'boatID'");
            return;
        }

        String boatID1 = request.getParameter("boatID");
        String companyID1 = request.getParameter("companyID");
        String price1 = request.getParameter("price");
        double price2 = Double.parseDouble(price1);
        String capacity1 = request.getParameter("capacity");
        int capacity2 = Integer.parseInt(capacity1);
        String pickupLoc1 = request.getParameter("pickupLoc");
        String dropoffLoc1 = request.getParameter("dropoffLoc");
        try {

            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/boatsystem", "root", "");
            PreparedStatement ps = conn.prepareStatement("update boat set pickupLoc=?, dropoffLoc=? where boatID=?");
            ps.setString(1, boatID1);
            ps.setString(2, companyID1);
            ps.setDouble(3, price2);
            ps.setInt(4, capacity2);
            ps.setString(5, pickupLoc1);
            ps.setString(6, dropoffLoc1);
            int i = ps.executeUpdate();
            if (i > 0) {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Update Success');");
                pw.println("window.location.href = \"AdminDashboard.jsp\";");
                pw.println("</script>");
            } else {
                pw.println("<script type=\"text/javascript\">");
                pw.println("alert('Not Updated, please try again');");
                pw.println("window.location.href = \"UpdateSession.jsp\";");
                pw.println("</script>");
            }

        } catch (SQLException e) {
            out.print("Error: " + e.getMessage());
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
