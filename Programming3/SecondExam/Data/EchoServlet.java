// To save as "<CATALINA_HOME>\webapps\helloapp\WEB-INF\src\com\nowhere\EchoServlet.java"
package com.nowhere;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import java.io.*;
import java.util.*;
//import static org.apache.commons.text.StringEscapeUtils.escapeHtml4;  // Apache Commons Text 1.12

@WebServlet("/echo")
public class EchoServlet extends HttpServlet {

   @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
         throws IOException, ServletException {
      // Set the response message's MIME type
      response.setContentType("text/html; charset=UTF-8");
      // Allocate an output writer to write the response message into the network socket
      PrintWriter out = response.getWriter();

      // Write the response message, in an HTML page
      out.println("<!DOCTYPE html>");
      out.println("<html><head>");
      out.println("<meta charset='UTF-8'>");
      out.println("<title>Echo Servlet</title></head>");
      out.println("<body><h2>You have enter</h2>");

      // Retrieve the value of the query parameter "username" (from text field)
      String username = request.getParameter("username");
      // Get null if the parameter is missing.
      // Get empty string or string of white spaces if user did not fill in.
      if (username == null
            // || (username = escapeHtml4(username.trim())).isEmpty()) {
	    || (username = htmlFilter(username.trim())).length() == 0) {
         out.println("<p>Name: MISSING</p>");
      } else {
         out.println("<p>Name: " + username + "</p>");
      }

      // Retrieve the value of the query parameter "email" (from text field)
      String email = request.getParameter("email");
      if (email == null
	    || (email = htmlFilter(email.trim())).length() == 0) {
//            || (email = escapeHtml4(email.trim())).isEmpty()) {
         out.println("<p>Email: MISSING</p>");
      } else {
         out.println("<p>Email: " + email + "</p>");
      }

      // Retrieve the value of the query parameter "gender" (from radio button)
      String gender = request.getParameter("gender");
      if (gender == null) {
         out.println("<p>Gender: MISSING</p>");
      } else if (gender.equals("m")) {
         out.println("<p>Gender: male</p>");
      } else {
         out.println("<p>Gender: female</p>");
      }

      // Retrieve the value of the query parameter "age" (from pull-down menu)
      String age = request.getParameter("age");
      if (age == null) {
         out.println("<p>Age: MISSING</p>");
      } else if (age.equals("1")) {
         out.println("<p>Age: < 1 year old</p>");
      } else if (age.equals("99")) {
         out.println("<p>Age: 1 to 99 years old</p>");
      } else {
         out.println("<p>Age: > 99 years old</p>");
      }

      // Retrieve the value of the query parameter "language" (from checkboxes).
      // Multiple values possible. Use getParameterValues() which returns an array of String.
      String[] languages = request.getParameterValues("language");
      if (languages == null || languages.length == 0) {
         out.println("<p>Languages: NONE</p>");
      } else {
         out.println("<p>Languages: ");
	for (String language : languages) {
               if (language.equals("c")) {
                  out.println("C/C++ ");
               } else if (language.equals("cs")) {
                  out.println("C# ");
               } else if (language.equals("java")) {
                  out.println("Java ");
               }
            }
         out.println("</p>");
      }

      // Retrieve the value of the query parameter "instruction" (from text area)
      String instruction = request.getParameter("instruction");
      if (instruction == null
            // || (instruction = escapeHtml4(instruction.trim())).isEmpty()
	    || (instruction = htmlFilter(instruction.trim())).length() == 0
            || instruction.equals("Enter your instruction here...")) {
         out.println("<p>Instruction: NONE</p>");
      } else {
         out.println("<p>Instruction: " + instruction + "</p>");
      }

      // Retrieve the value of the query parameter "secret" (from hidden field)
      String secret = request.getParameter("secret");
      out.println("<p>Secret: " + secret + "</p>");

      // Get all the names of request parameters in an Enumeration<String>
      Enumeration<String> names = request.getParameterNames();
      out.println("<p>Request Parameter Names are: ");
      if (names.hasMoreElements()) {
//         out.print(escapeHtml4(names.nextElement()));
	  out.print(htmlFilter(names.nextElement().toString()));
      }
      do {
         //out.print(", " + escapeHtml4(names.nextElement()));
	  out.print(", " + htmlFilter(names.nextElement().toString()));
      } while (names.hasMoreElements());
      out.println(".</p>");

      // Hyperlink "BACK" to input page
      out.println("<a href='input.html'>BACK</a>");

      out.println("</body></html>");
      out.close();  // Always close the output writer
   }

   // Redirect POST request to GET request.
   @Override
   public void doPost(HttpServletRequest request, HttpServletResponse response)
         throws IOException, ServletException {
      doGet(request, response);
   }

  // Filter the string for special HTML characters to prevent
   // command injection attack
   private static String htmlFilter(String message) {
      if (message == null) return null;
      int len = message.length();
      StringBuffer result = new StringBuffer(len + 20);
      char aChar;
 
      for (int i = 0; i < len; ++i) {
         aChar = message.charAt(i);
         switch (aChar) {
             case '<': result.append("&lt;"); break;
             case '>': result.append("&gt;"); break;
             case '&': result.append("&amp;"); break;
             case '"': result.append("&quot;"); break;
             default: result.append(aChar);
         }
      }
      return (result.toString());
   }

}
