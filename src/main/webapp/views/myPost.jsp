<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    <script src="js/main.js"></script>
    <link rel="stylesheet" href="css/style.css">
    <title>Document</title>
</head>

<body >
<header>
    <nav class="navbar navbar-expand-lg bg-danger" data-bs-theme="dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Travellokal</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/myBlog/homeServlet">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/myBlog/lstPostServlet">My Post</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/myBlog/contactServlet">Contacts</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="/myBlog/loginServlet">Login</a>
                    </li>
                </ul>
                <form class="d-flex" role="search">
                    <input class="form-control bg-light me-2" style="border:none" type="search"
                           placeholder="Tìm kiếm" aria-label="Tìm kiếm">
                    <button type="button" class="btn btn-primary">Search</button>
                </form>
            </div>
        </div>
    </nav>
</header>

<form action="lstPostServlet" method=get>
    <button type="submit" class="btn btn-primary" > Add post</button>
</form>

<!-- <div class="col-f" style="width:700px;margin-left: auto;margin-right: auto;"> -->
<main >
    <div style="padding-top:55px; padding-left:30px;">
        <form method="GET" action="/lstPostServlet">
            <button type="submit" class="btn btn-primary" ng-click="addPost()"><i class="bi bi-file-earmark-plus" ></i> Add post</button>
        </form>
        <h1>My post</h1>
        <div class="row">
            <c:forEach varStatus="i" items="${lstPost}" var="post">
            <div class="col-md-6 d-flex" style="padding-bottom: 55px;width:900px; border: 1px solid red;">
                <div class="col-md-6" style="width:250px;height:150px;">
                    <img src="img/banner2.2.jpg" alt="imgPost" style="width: 250px; height:150px;">
                </div>
                <div class="col-md-6" style="height: 150px; width: 600px;border: 1px solid red;">
                    <a href="" style="color:black;">
                        <h4>${post.title}</h4>
                        <p class="d-flex flex-row-reverse me-4" style="font-style: italic;">Date:14/10/2023
                            Author:${post.author}</p>
                        <p style="font-size:14px;">${post.des}</p>
                    </a>
                </div>
            </div>
            </c:forEach>
            <div class="col-md-6" style="padding-bottom: 55px;width:420px;border: 1px solid black; position: fixed; margin-left: 900px;">
                <div class="col-md-6" style="width:fit-content;margin-left: 70px;">
                    <img src="img/banner2.2.jpg" alt="imgPost" style="width: 250px; height:150px">
                </div>
                <div class="col-md-6" style="height: fit-content;margin-left: 70px;">
                    <a href="" style="color:black;">
                        <h4>{{item.title}}</h4>
                        <p class="d-flex flex-row-reverse me-4" style="font-style: italic;">Date:14/10/2023
                            Author:{{item.author}}</p>
                        <p style="font-size:14px;">{{item.description}}</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</main>
<footer id="footer" style="margin-top: 60px;">
    <div class="container">
        <div class="row" style="width:750px;margin-left: auto;margin-right: auto;">
            <div class="col-4 md-4">
                <div class="useful-link">
                    <h2 style="color:white;">Useful Links</h2>
                    <div class="use-links">
                        <li><a href=""><i class="fa-solid fa-angles-right"></i> Home</a></li>
                        <li><a href=""><i class="fa-solid fa-angles-right"></i> About Us</a>
                        </li>
                        <li><a href=""><i class="fa-solid fa-angles-right"></i> Gallery</a>
                        </li>
                        <li><a href=""><i class="fa-solid fa-angles-right"></i> Contact</a>
                        </li>
                    </div>
                </div>
            </div>
            <div class="col-4 md-4">
                <div class="social-links">
                    <h2 style="color: white;">Follow Us</h2>
                    <div class="social-icons">
                        <li><a href=""><i class="fa-brands fa-facebook-f"></i> Facebook</a></li>
                        <li><a href=""><i class="fa-brands fa-instagram"></i> Instagram</a></li>
                        <li><a href=""><i class="fa-brands fa-linkedin-in"></i> Linkedin</a></li>
                    </div>
                </div>
            </div>
            <div class="col-4 md-4">
                <div class="address">
                    <h2 style="color: white">Address</h2>
                    <div class="address-links">
                        <li class="address1"><i class="fa-solid fa-location-dot"></i>FPT
                            Nam Từ Liêm-
                            Hà Nội
                            Việt Nam</li>
                        <li><a href=""><i class="fa-solid fa-phone"></i> +84374223222</a></li>
                        <li><a href=""><i class="fa-solid fa-envelope"></i> phucloc@gmail.com</a></li>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<script src="controllers/HomeController.js"></script>
<script src="controllers/MyPostController.js"></script>
<script src="controllers/BookingController.js"></script>
<script src="controllers/ContactController.js"></script>
<script src="controllers/LoginController.js"></script>
</body>
</html>