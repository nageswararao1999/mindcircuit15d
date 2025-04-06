<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Netflix Clone – Admin Login</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body, html {
      height: 100%;
      font-family: Arial, sans-serif;
    }

    .background {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      display: grid;
      grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
      gap: 2px;
      z-index: -2;
    }

    .background img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      opacity: 0.4;
    }

    .overlay {
      background: rgba(0, 0, 0, 0.8);
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      z-index: -1;
    }

    .login-container {
      height: 100%;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .login-box {
      background: rgba(0, 0, 0, 0.75);
      padding: 40px;
      border-radius: 8px;
      width: 100%;
      max-width: 400px;
      color: #fff;
    }

    .login-box h1 {
      margin-bottom: 20px;
      font-size: 32px;
    }

    .login-box input {
      width: 100%;
      padding: 12px;
      margin: 10px 0;
      border: none;
      border-radius: 4px;
      font-size: 16px;
    }

    .login-box button {
      width: 100%;
      padding: 12px;
      background-color: #e50914;
      color: white;
      border: none;
      font-size: 18px;
      border-radius: 4px;
      cursor: pointer;
      margin-top: 10px;
    }

    .login-box a {
      color: #bbb;
      font-size: 14px;
      display: block;
      margin-top: 10px;
      text-align: center;
    }

    footer {
      position: absolute;
      bottom: 10px;
      width: 100%;
      text-align: center;
      color: #bbb;
      font-size: 12px;
    }
  </style>
</head>
<body>

  <!-- Movie Background -->
  <div class="background">
    <img src="https://source.unsplash.com/300x450/?movie,action" alt="">
    <img src="https://source.unsplash.com/301x450/?movie,comedy" alt="">
    <img src="https://source.unsplash.com/302x450/?movie,drama" alt="">
    <img src="https://source.unsplash.com/303x450/?movie,thriller" alt="">
    <img src="https://source.unsplash.com/304x450/?movie,netflix" alt="">
    <img src="https://source.unsplash.com/305x450/?cinema" alt="">
    <img src="https://source.unsplash.com/306x450/?marvel" alt="">
    <img src="https://source.unsplash.com/307x450/?film" alt="">
    <img src="https://source.unsplash.com/308x450/?blockbuster" alt="">
    <img src="https://source.unsplash.com/309x450/?movies" alt="">
  </div>

  <div class="overlay"></div>

  <!-- Login Box -->
  <div class="login-container">
    <div class="login-box">
      <h1>Admin Sign In</h1>
      <input type="text" id="username" placeholder="Username">
      <input type="password" id="password" placeholder="Password">
      <button onclick="login()">Login</button>
      <a href="#">Forgot password?</a>
    </div>
  </div>

  <footer>
    &copy; 2025 Nageswararao | Netflix Clone with Admin Login
  </footer>

  <script>
    function login() {
      const user = document.getElementById("username").value;
      const pass = document.getElementById("password").value;

      // Basic check
      if (user === "admin" && pass === "admin123") {
        alert("Welcome Admin! ✅ Access Granted");
        // You can redirect to dashboard.html here
        // window.location.href = "admin-dashboard.html";
      } else {
        alert("❌ Invalid credentials. Please try again.");
      }
    }
  </script>
</body>
</html>
