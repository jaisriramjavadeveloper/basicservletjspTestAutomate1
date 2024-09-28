<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Page</title>
  <!-- Bootstrap 5 CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    body, html {
      height: 100%;
    }
    .full-height {
      min-height: 100vh;
      display: flex;
      flex-direction: column;
    }
    .content {
      flex: 1;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .login-card {
      width: 100%;
      max-width: 400px;
      padding: 2rem;
      border: 1px solid #dee2e6;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      background-color: #fff;
    }
    .login-header, .login-footer {
      background-color: #f8f9fa;
      padding: 1rem 0;
      text-align: center;
    }
    .login-header h1, .login-footer p {
      margin: 0;
      color: #495057;
    }
  </style>
</head>
<body>
  <!-- Full Height Wrapper -->
  <div class="full-height">
    <!-- Header -->
    <header class="login-header">
      <h1>Test Automation -Servlet</h1>
    </header>

    <!-- Content -->
    <main class="content">
      <div class="login-card">
        <h3 class="text-center mb-4">Login</h3>
        <!-- Form -->
        <form method="post" action="login"  >
          <div class="mb-3">
            <label for="email" class="form-label">Username or Email</label>
            <input type="email" class="form-control" id="email" placeholder="Enter your email" value="user1@test.com" required>
          </div>
          <div class="mb-3">
            <label for="password" class="form-label">Password</label>
            <input type="password" class="form-control" id="password" placeholder="Enter your password" value="admin" required>
          </div>
          <div class="d-grid">
            <button type="submit" class="btn btn-primary">Login</button>
          </div>
        </form>
      </div>
    </main>

    <!-- Footer -->
    <footer class="login-footer">
      <p>&copy; 2024 Test Automation -Servlet All rights reserved.</p>
    </footer>
  </div>

  <!-- Bootstrap 5 JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
