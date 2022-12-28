
package Jstlservlet;
//import Jstlservlet.Detail;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import java.util.Arrays;
import java.util.List;


@WebServlet("/demojstl")
public class NewJstl extends HttpServlet{
    protected void doGet(HttpServletRequest request,HttpServletResponse response)throws IOException,ServletException{
    String name="Mayank";
    /*For single object*/
    //Detail s=new Detail(1,"Mike");
    /*For multiple object*/
    List<Detail> student_details=Arrays.asList(new Detail(43,"mayank"),new Detail(38,"harsh"),new Detail(39,"Ishika"));
        request.setAttribute("details",student_details);  

    RequestDispatcher rd=request.getRequestDispatcher("JSTLFunction.jsp");
    rd.forward(request, response);
    }
    
    
}
