package servlet;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Post;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

@WebServlet( value="/lstPostServlet")
public class LstPostServlet extends HttpServlet {
    public void init(){
        System.out.println("init success");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("do get!");
        Post post1 = new Post("pst1","Cách pha cafe phin ngon","locNguyen",new Date(2023,02,11),"Cà phê được du nhập vào Việt Nam năm 1857 bởi một linh mục Công giáo người Pháp.[3] Do hạn chế về nguồn sữa tươi, khi ngành chăn nuôi bò sữa vẫn còn sơ khai,[4] người Pháp và Việt Nam đã sử dụng sữa đặc có đường với cà phê rang đậm.","img1.png");
        Post post2 = new Post("pst1","Cách pha cafe phin ngon","locNguyen",new Date(2023,02,11),"Cà phê được du nhập vào Việt Nam năm 1857 bởi một linh mục Công giáo người Pháp.[3] Do hạn chế về nguồn sữa tươi, khi ngành chăn nuôi bò sữa vẫn còn sơ khai,[4] người Pháp và Việt Nam đã sử dụng sữa đặc có đường với cà phê rang đậm.","img1.png");
        ArrayList<Post> lstSv = new ArrayList<>();
        lstSv.add(post1);
        lstSv.add(post2);
        request.setAttribute("lstPost", lstSv);
        request.getRequestDispatcher("/views/myPost.jsp").forward(request,response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("do post!"+response);
    }

    public void destroy() {

    }

}


