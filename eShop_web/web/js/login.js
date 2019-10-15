$(
    function () {
        $("span").hide();
        $(".login-suggest").hide();
        $(".login-suggest02").hide();
        $("input").on("change",function(){
            $(this).next().show();
        });
        $.ajax(
            {
                url:"/loginState",
                type:"POST",
                data:"{}",
                success:function(data){
                    if ($("#checkword").text().length == 0){

                    }else if (data.checkword == $("#checkword").text()){
                        $(".login-suggest02").show();
                    }
                    if(data.loginState == "1"){
                        $(".login-suggest").show();
                    }
                },
                error:function(){
                    // alert("访问失败！");
                },
                dataType:"JSON"
            }
        );
    }
)
