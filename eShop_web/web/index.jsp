<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>eShop</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/index.js"></script>
</head>
<script>

</script>
<body>
    <div class="container">
        <!-- 导航栏行 -->
        <div class="row row-nav">
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="container-fluid">
                <div class="navbar-header">
                    <div class="navbar-brand">
                        <a href="index.jsp"><span class="glyphicon glyphicon-home"></span></a>
                    </div>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-left" id="mytab">
                        <li><a href="#">手机/配件</a></li>
                        <li><a href="#">游戏设备</a></li>
                        <li><a href="#">电脑主机</a></li>
                        <li><a href="others/camera.html">相机摄像</a></li>
                        <li>
                            <form action="#" method="post" class="navbar-form" id="search-box">
                                <div class="form-group">
                                    <label></label>
                                    <input type="text" name="searchText" class="form-control" placeholder=""
                                        aria-describedby="helpId">
                                    <span class="glyphicon glyphicon-search form-control-feedback search-icon"></span>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-default">搜索</button>
                                </div>
                            </form>
                        </li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="cart.jsp" id="shopkets">
                                <span class="glyphicon glyphicon-shopping-cart"></span> &nbsp;购物车
                            </a>
                        </li>
                        <li class="dropdown login-btn" id="mis-login">
                            <a class="dropdown-toggle login-state" data-toggle="dropdown" role="button">
                                    <span class="glyphicon glyphicon-user login-state"></span>

                                <span class="login-state">未登录</span>
                                <!--<span class="glyphicon glyphicon-menu-down"></span>-->
                            </a>
                            <!--<ul class="dropdown-menu" role="menu">-->
                                <!--<li><a href="login.html">登陆</a></li>-->
                                <!--<li><a href="register.html">注册</a></li>-->
                            <!--</ul>-->
                        </li>
                        <div class="account-toggle">
                            <span class="glyphicon glyphicon-triangle-top top-arrow"></span>
                            <div class="text-box">
                                登录使用更多功能
                            </div>
                            <div class="bottom-box">
                                <div class="account-choose">
                                    <a href="login.html" target="_blank">登陆/注册</a>
                                </div>
                            </div>
                        </div>
                        <li class="dropdown login-btn login-li" id="loginState">
                                <a class="dropdown-toggle" data-toggle="dropdown" role="button" id="user-spans">
                                        <span class="glyphicon glyphicon-user"></span>
                                    <!--<img src="..." alt="..." class="img-rounded">-->
                                    <span id="userName"></span>
                                    <span class="glyphicon glyphicon-menu-down"></span>
                                </a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#" target="_blank">个人资料</a></li>
                                    <li><a href="#" target="_blank">消息<span class="badge message-bage">10</span></a></li>
                                    <li><a href="#" target="_blank">退出登录</a></li>
                                </ul>
                            </li>
                    </ul>
                </div>
                </div>
            </nav>
        </div>

        <!-- 登陆提示框 -->
        <div class="row" id="login-alert">
            <div class="alert alert-warning">
                <button class="close" type="button" data-dismiss = "alert">
                    <span aria-disabled = "true" id="closeAlert">&times;</span>
                </button>
                <strong><span class="login-state">未登录</span>,请<a href="login.html">登陆</a>后继续访问...</strong>
            </div>
        </div>
        <!-- 轮播图 -->
        <div class="row">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="image/1.png" alt="...">
                        <div class="carousel-caption">
                            <%
                                out.write("12345");
                            %>
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/2.png" alt="...">
                        <div class="carousel-caption">
                            黄色
                        </div>
                    </div>
                    <div class="item">
                        <img src="image/3.png" alt="...">
                        <div class="carousel-caption">
                            红色
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
        <!--精选商品列表标题-->
        <div class="row">
            <div class="col-md-5"></div>
            <div class="col-md-3">
                <h1>~每日精选~</h1>
            </div>
        </div>
        <!--商品列表-->
        <div class="row products">
            <div class="col-md-4 col-left">
                <a href="/product">
                    <img src="image/products/product01.jpg" alt="图片"  class="products-img">
                    <span class="img-describe">
                        <h4 class="product-descibe-title">商品一</h4>
                        <p>
                            这是一条商品描述
                        </p>
                    </span>
                </a>
            </div>
            <div class="col-md-4 col-mid">
                <a href="#">
                    <img src="image/products/product02.jpg" alt="图片" class="products-img">
                    <span class="img-describe">
                        <h4 class="product-descibe-title">商品一</h4>
                        <p>
                            这是一条商品描述
                        </p>
                    </span>
                </a>
            </div>
            <div class="col-md-4 ">
                <a href="#">
                    <img src="image/products/product03.jpg" alt="图片" class="products-img">
                    <span class="img-describe">
                        <h4 class="product-descibe-title">商品一</h4>
                        <p>
                            这是一条商品描述
                        </p>
                    </span>
                </a>
            </div>
        </div>
        <div class="row products products02">
            <div class="col-md-4 col-left">
                <a href="#">
                    <img src="image/products/product04.jpg" alt="图片" class="products-img">
                    <span class="img-describe">
                        <h4 class="product-descibe-title">商品一</h4>
                        <p>
                            这是一条商品描述
                        </p>
                    </span>
                </a>
            </div>
            <div class="col-md-4 col-mid">
                <a href="#">
                    <img src="image/products/product05.jpg" alt="图片" class="products-img">
                    <span class="img-describe">
                        <h4 class="product-descibe-title">商品一</h4>
                        <p>
                            这是一条商品描述
                        </p>
                    </span>
                </a>
            </div>
            <div class="col-md-4">
                <a href="#">
                    <img src="image/products/product06.jpg" alt="图片" class="products-img">
                    <span class="img-describe">
                        <h4 class="product-descibe-title">商品一</h4>
                        <p>
                            这是一条商品描述
                        </p>
                    </span>
                </a>
            </div>
        </div>
        <div class="row products-classify-title">
            <div class="col-md-3">

            </div>
            <div class="col-md-6">
                <h1>~抢手好货~</h1>
            </div>
        </div>
        <!--抢手好货-->
        <div class="row products-classify">
            <div class="col-md-4 products-left-box">
                <a href="#">
                    <img src="image/products02/product01.jpg" alt="图片">
                </a>
            </div>
            <div class="col-md-8 products-right-box">
                <div class="row">
                    <div class="col-md-4">
                        <a href="#">
                            <img src="image/products02/product02.png" alt="图片">
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="#">
                            <img src="image/products02/product03.png" alt="图片">
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="#">
                            <img src="image/products02/product04.png" alt="图片">
                        </a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <a href="#">
                            <img src="image/products02/product05.png" alt="图片">
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="#">
                            <img src="image/products02/product06.png" alt="图片">
                        </a>
                    </div>
                    <div class="col-md-4">
                        <a href="#">
                            <img src="image/products02/product07.png" alt="图片">
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <!--页脚-->
        <div class="row panel-footer">
            <div class="col-md-3">

            </div>
            <div class="col-md-6">
                <h4>&nbsp;&nbsp;&nbsp;&nbsp;eShop &nbsp;&nbsp;欢迎您的使用！</h4>
                <div class="row">
                    <div class="col-mid-4"></div>
                    <div class="col-mid-4">@ 任政宇 刘好杰 李梦浩</div>
                    <div class="col-mid-4"></div>
                </div>
            </div>
        </div>

    </div>
</body>

</html>