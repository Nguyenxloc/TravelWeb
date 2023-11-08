package servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet( value="/homeServlet")
public class homeServlet extends HttpServlet {
    public void init(){
        System.out.println("init success");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("do get!");
        sinhVien sv1  = new sinhVien("id1","Nguyen Phuc Loc","Quang Ninh","Male","1.76m","73kg");
        sinhVien sv2  = new sinhVien("id2","Nguyen Van B","Quang Ninh","Male","1.76m","73kg");
        ArrayList<sinhVien> lstSv = new ArrayList<>();
        lstSv.add(sv1);
        lstSv.add(sv2);
        request.setAttribute("lstSv", lstSv);
        request.getRequestDispatcher("index.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("do post!"+response);
    }

    public void destroy() {

    }

}


