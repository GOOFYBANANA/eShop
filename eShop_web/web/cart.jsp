<%--
  Created by IntelliJ IDEA.
  User: 35260
  Date: 2019/12/16
  Time: 14:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>我的购物车</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/index.js"></script>
    <link rel="stylesheet" href="css/index.css">
    <style>
        .col-md-1, .col-md-2 {
            text-align: center;
        }
        .cart-title {
            padding-top: 15px;
            padding-bottom: 5px;
            font-size: 16px;
            font-weight: 800;
        }
        .product-list {
            padding-top: 15px;
        }
        .allprice-f {
            line-height: 30px;
            font-size: 16px;
            font-weight: 700;
        }
        .allprice {
            
            color: rgb(228, 128, 62);
        }
    </style>
    <script>
        $(
            function () {
                $('.removeP').on("click",function () {
                    $(this).parent().parent().parent().parent().hide();
                });
            }
        )
    </script>
</head>
<body>
    <div class="container">
        <!-- 导航栏 -->
        <div class="row row-nav">
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <div class="navbar-brand">
                            <a href="index.html"><span class="glyphicon glyphicon-home"></span></a>
                        </div>
                    </div>
                    <div class="collapse navbar-collapse">
                        <ul class="nav navbar-nav navbar-left" id="mytab">
                            <li><a href="#">手机/配件</a></li>
                            <li><a href="#">游戏设备</a></li>
                            <li><a href="#">电脑主机</a></li>
                            <li><a href="#">相机摄像</a></li>
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
                                <a href="cart.html" id="shopkets">
                                    <span class="glyphicon glyphicon-shopping-cart"></span> &nbsp;购物车
                                </a>
                            </li>
                            <li class="dropdown login-btn" id="mis-login">
                                <a class="dropdown-toggle" data-toggle="dropdown" role="button">
                                    <span class="glyphicon glyphicon-user login-state"></span>

                                    <span class="login-state">未登录</span>
                                    <span class="glyphicon glyphicon-menu-down"></span>
                                </a>
                                <!-- <ul class="dropdown-menu" role="menu">
                                    <li><a href="login.html">登陆</a></li>
                                    <li><a href="register.html">注册</a></li>
                                </ul> -->
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
        <!-- 购物车商品 -->
        <div class="row cart-title">
            <div class="col-md-1">
                <input type="checkbox">全选
            </div>
            <div class="col-md-6">
                &nbsp;&nbsp;&nbsp;&nbsp;商品信息
            </div>
            <div class="col-md-1">
                <span>商品单价</span>
            </div>
            <div class="col-md-1">
                <span>数量</span>
            </div>
            <div class="col-md-1">
                <span>总价</span>
            </div>
            <div class="col-md-2">
               
            </div>
        </div>
        <!-- 购物车列表 -->
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="row product-list">
                    <div class="col-md-1">
                        <input type="checkbox">
                    </div>
                    <div class="col-md-6">
                        <span>
                            <i>
                                不知名的商品
                            </i>
                        </span>
                    </div>
                    <div class="col-md-1">
                        <span>10</span>
                    </div>
                    <div class="col-md-1">
                        <span>1</span>
                    </div>
                    <div class="col-md-1">
                        <span>&nbsp;&nbsp;&nbsp;10</span>
                    </div>
                    <div class="col-md-2">
                        <a href="#" class="removeP">删除</a>
                    </div>
                </div>
            </div>
        </nav>

        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="row product-list">
                    <div class="col-md-1">
                        <input type="checkbox">
                    </div>
                    <div class="col-md-6">
                        <span>
                            <i>
                                不知名的商品
                            </i>
                        </span>
                    </div>
                    <div class="col-md-1">
                        <span>10</span>
                    </div>
                    <div class="col-md-1">
                        <span>1</span>
                    </div>
                    <div class="col-md-1">
                        <span>&nbsp;&nbsp;&nbsp;10</span>
                    </div>
                    <div class="col-md-2">
                        <a href="#" class="removeP">删除</a>
                    </div>
                </div>
            </div>
        </nav>

        <!-- 结算按钮 -->
        <div class="row product-list">
            <div class="col-md-7">
            </div>
            <div class="col-md-2"><span class="allprice-f">总金额：</span><span class="allprice">1111</span>
                <span class="allprice-f">元</span>
            </div>
            <div class="col-md-3">
                <a href="#" class="btn btn-primary active" role="button">确认付款</a>
            </div>
        </div>
    </div>
</body>
</html>