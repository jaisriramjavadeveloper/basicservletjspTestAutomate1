package com.test.auth;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class AuthController
 */
/**
 * AuthServlet handles login, registration, and forgot password operations.
 */
@WebServlet(urlPatterns = {
        "/login",          // Handles GET and POST for login
        "/register",       // Handles GET and POST for registration
        "/forgotpassword"  // Handles GET and POST for password recovery
        
})
public class AuthController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AuthController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		//response.getWriter().append("Served at: ").append(request.getContextPath());
//		request.getRequestDispatcher("/WEB-INF/auth/login.jsp").forward(request, response);
//	}
 // Handle GET requests for login, registration, and forgot password
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        switch (path) {
            case "/login":
                request.getRequestDispatcher("/WEB-INF/auth/login.jsp").forward(request, response);
                break;

            case "/register":
                request.getRequestDispatcher("/WEB-INF/auth/register.jsp").forward(request, response);
                break;

            case "/forgotpassword":
                request.getRequestDispatcher("/WEB-INF/auth/forgotpassword.jsp").forward(request, response);
                break;

            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
        }
    }

    // Handle POST requests for login, registration, and forgot password
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String path = request.getServletPath();

        switch (path) {
            case "/login":
                handleLogin(request, response);
                break;

            case "/register":
                handleRegister(request, response);
                break;

            case "/forgotpassword":
                handleForgotPassword(request, response);
                break;

            default:
                response.sendError(HttpServletResponse.SC_NOT_FOUND, "Page not found");
        }
    }

    // Handle POST data for login
    private void handleLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");
        email = "user1@test.com";
        String password = request.getParameter("password");
        password = "admin";
        
    	try {
    		 if (email.equals("user1@test.com") && password.equals("admin")) {
    	          //  response.getWriter().write("Login successful for user: " + username);
    		
    			// Perform authentication (this is just a placeholder)
    		        if (authenticate(email, password)) {
    		            HttpSession session = request.getSession();
    		            session.setAttribute("username", email); // Create session with username
    		            
    		            // Forward to the dashboard.jsp in WEB-INF
    		            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/dashboard/dashboard.jsp");
    		            dispatcher.forward(request, response);
    		        } else {
    		            // Handle authentication failure
    		            response.sendRedirect("index.jsp?error=Invalid credentials");
    		        }
    			 
    			 
    			 
    	        } else {
    	        	  request.setAttribute("errorMessage", "Invalid username or password.");
    	              request.getRequestDispatcher("WEB-INF/auth/login.jsp").forward(request, response);
    	        }
			
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			
		}

        // Implement your login logic here (e.g., check database for valid user)
       
    }

    // Handle POST data for registration
    private void handleRegister(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("email");
        
       // String email = request.getParameter("email");
        String password = request.getParameter("password");
        //response.sendRedirect("/WEB-INF/dashboard/dashboard.jsp");
        request.getRequestDispatcher("WEB-INF/auth/login.jsp").forward(request, response);
        
        // Implement your registration logic here (e.g., save user to the database)
       // response.getWriter().write("Registration successful for user: " + username);
    }

    // Handle POST data for forgot password
    private void handleForgotPassword(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String email = request.getParameter("email");

        // Implement your forgot password logic here (e.g., send a reset link)
        response.getWriter().write("Password recovery link sent to: " + email);
    }
    
    // Placeholder method for authentication logic
    private boolean authenticate(String username, String password) {
        // Add your authentication logic here (e.g., check against a database)
        return true; // Assume authentication is successful for this example
    }

	
}
