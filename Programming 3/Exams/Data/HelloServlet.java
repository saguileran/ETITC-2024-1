package com.nowhere;

import java.io.*;
import jakarta.servlet.*;             // Tomcat 10
import jakarta.servlet.http.*;        // Tomcat 10
import jakarta.servlet.annotation.*;  // Tomcat 10
 
public class HelloServlet extends HttpServlet {

   // The doGet() runs once per HTTP GET request to this HTTP servlet.
   @Override
   public void doGet(HttpServletRequest request, HttpServletResponse response)
         throws IOException, ServletException {
 
      // Set the response's MIME type of the response message
      response.setContentType("text/html; charset=UTF-8");
      // Allocate an output writer to write the response message into the network socket
      PrintWriter out = response.getWriter();  // throw IOException

      // Write the response message, in an HTML page
      // Using triple-quoted multi-line string (Text Block) (JDK 15)
      // The beginning triple-quote must be in its own line (i.e., ends with a newline)
      out.println("<!DOCTYPE html>");
      out.println("<html>");
      out.println("<head><title>Hello, World</title></head>");
      out.println("<body>");
      out.println("<h1>Hello, world!</h1>");
      out.println("<p>Request URI: "+request.getRequestURI()+"</p>");
      out.println("<p>Protocol: "+request.getProtocol()+"</p>");
      out.println("<p>PathInfo: "+request.getPathInfo()+"</p>");
      out.println("<p>Remote Address: "+request.getRemoteAddr()+"</p>");
      out.println("<p>A Random Number: <strong>"+Math.random()+"</strong></p>");
      out.println("</body>");
      out.println("</html>");
      out.close();  // Always close the output writer
      
      // For testing and debugging - Print a message to Tomcat's console
      System.out.println("hello world, to Tomcat!");   // Check Tomcat's console for this message
   }
   }
   
