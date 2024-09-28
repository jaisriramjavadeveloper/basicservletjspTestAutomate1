<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Responsive Dashboard with Sections</title>
  <!-- Bootstrap 5 CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Bootstrap Icons -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
  <style>
    body, html {
      height: 100%;
      margin: 0;
      padding: 0;
    }
    .dashboard-wrapper {
      display: flex;
      height: 100vh;
    }
    .left-navbar {
      width: 240px;
      background-color: #343a40;
      padding: 20px;
      flex-shrink: 0;
      height: 100%;
      display: flex;
      flex-direction: column;
    }
    .left-navbar a {
      display: block;
      color: #ffffff;
      padding: 10px;
      text-decoration: none;
      font-size: 1rem;
      border-radius: 5px;
      margin-bottom: 10px;
    }
    .left-navbar a:hover {
      background-color: #495057;
    }
    .left-navbar a .bi {
      margin-right: 10px;
    }
    .dashboard-main {
      flex-grow: 1;
      display: flex;
      flex-direction: column;
    }
    .dashboard-header, .dashboard-footer {
      background-color: #f8f9fa;
      padding: 10px;
      text-align: center;
    }
    .content-area {
      flex-grow: 1;
      padding: 20px;
      background-color: #f1f1f1;
      overflow-y: auto; /* Ensures scrolling if content is too long */
    }
    .content-area .section {
      padding: 20px;
      background-color: #ffffff;
      border: 1px solid #dee2e6;
      border-radius: 8px;
      text-align: center;
    }
    /* Responsive Grid */
    @media (max-width: 768px) {
      .left-navbar {
        width: 70px;
        padding: 10px;
      }
      .left-navbar a {
        text-align: center;
        font-size: 0.85rem;
        padding: 15px;
        margin-bottom: 5px;
      }
      .left-navbar a span {
        display: none;
      }
      .left-navbar a .bi {
        margin: 0;
      }
    }
  </style>
</head>
<body>
  <!-- Dashboard Wrapper (Main Flex Container) -->
  <div class="dashboard-wrapper">
    <!-- Left Navbar (Full Height) -->
    <nav class="left-navbar">
      <a href="#" class="d-flex align-items-center">
        <i class="bi bi-person-circle"></i>
        <span>View Profile</span>
      </a>
      <a href="#" class="d-flex align-items-center">
        <i class="bi bi-arrow-up-circle"></i>
        <span>Upgrade Profile</span>
      </a>
     <a href="logout" class="d-flex align-items-center">
    <i class="bi bi-box-arrow-right"></i>
    <span>Logout</span>
</a>
    </nav>

    <!-- Main Content Area (Header, Content, Footer) -->
    <div class="dashboard-main">
      <!-- Header -->
      <header class="dashboard-header">
        <h1>My Dashboard</h1>
          <p>Welcome, <%= session.getAttribute("username") != null ? session.getAttribute("username") : "Guest" %>!</p>
      </header>

      <!-- Content Area with 4 Sections -->
      <main class="content-area">
        <div class="container">
          <div class="row">
            <!-- Section 1 -->
            <div class="col-md-6 mb-4">
              <div class="section">
               <div>
            <h2>Session Count: <%= session.getAttribute("username") != null ? 1 : 0 %></h2>
            <!-- This is a simple session count; adjust as necessary -->
        </div>
              </div>
            </div>
            <!-- Section 2 -->
            <div class="col-md-6 mb-4">
              <div class="section">
                <h3>Section 2</h3>
                <p>Content for Section 2.</p>
              </div>
            </div>
          </div>
          <div class="row">
            <!-- Section 3 -->
            <div class="col-md-6 mb-4">
              <div class="section">
                <h3>Section 3</h3>
                <p>Content for Section 3.</p>
              </div>
            </div>
            <!-- Section 4 -->
            <div class="col-md-6 mb-4">
              <div class="section">
                <h3>Section 4</h3>
                <p>Content for Section 4.</p>
              </div>
            </div>
          </div>
        </div>
      </main>

      <!-- Footer -->
      <footer class="dashboard-footer">
        <p>&copy; 2024 Your Company Name. All rights reserved.</p>
      </footer>
    </div>
  </div>

  <!-- Bootstrap 5 JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
