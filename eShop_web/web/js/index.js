window.onload = function(){
    $("#loginState").hide();
    $(".img-describe").hide();
    $(".account-toggle").hide();
    $("#login-alert").show(1000);
    $("#closeAlert").on("click",function () {
        $("#login-alert").hide(800);
    });
    $(".js-popover").popover();
    var mytab = document.getElementById("mytab");
    var tabs = mytab.getElementsByTagName("li");
    for(var i = 0;i<tabs.length;i++){
        tabs[i].onclick = function(){
            for(var j = 0;j<tabs.length;j++){
                tabs[j].className = "";
            }
            tabs[i].className = "active";
        };
    }
    $.ajax(
        {
            url:"/loginState",
            type:"POST",
            data:"{}",
            success:function(data){
                if(data.loginState == "0"){
                    $("#mis-login").hide();
                    $("#loginState").show();
                    $("#login-alert").hide();
                    $("#userName").text(data.userName);
                }
            },
            error:function(){

                // alert("访问失败！");
            },
            dataType:"JSON"
        }
    );
    //图片鼠标经过效果
    $(".col-md-4 img").mouseover(
        function () {
            $(this).next().fadeIn();
        }
    );
    $(".col-md-4 img").mouseout(
        function () {
            $(this).next().hide();
        }
    );
    $(".img-describe").mouseover(
        function () {
            $(this).show();
        }
    );
    $(".img-describe").mouseout(
        function () {
            $(this).hide();
        }
    );
    //登陆框
    $(".login-state").mouseover(
        function () {
            $(".account-toggle").show();
        }
    )
    $(".account-toggle").mouseover(
        function () {
            $(".account-toggle").show();
        }
    )
    $(".account-toggle").mouseout(
        function () {
            $(".account-toggle").hide();
        }
    )
    $(".login-state").mouseout(
        function () {
            $(".account-toggle").hide();
        }
    )


}