<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Sign-Up/Login Form</title>
    <link href='https://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


    <link rel="stylesheet" href="css/style.css">


</head>

<body>
<div class="form">

    <ul class="tab-group">
        <li class="tab active"><a href="#signup">Sign Up</a></li>
        <li class="tab"><a href="#login">Log In</a></li>
    </ul>

    <div class="tab-content">
        <div id="signup">
            <h1>免费注册</h1>

            <form id="sign" action="/QingDao/registUser" method="post">

                <div class="top-row">
                    <div class="field-wrap">
                        <label>
                            用户名<span class="req">*</span>
                        </label>
                        <input name="rusername" type="text" required autocomplete="off" />
                    </div>

                    <div class="field-wrap">
                        <label>
                            电话号码<span class="req">*</span>
                        </label>
                        <input type="text" name="iphone" required autocomplete="off"/>
                    </div>
                </div>

                <div class="field-wrap">
                    <label>
                        身份证号码<span class="req">*</span>
                    </label>
                    <input name="idcard" required autocomplete="off"/>
                </div>

                <div class="field-wrap">
                    <label>
                        登录名<span class="req">*</span>
                    </label>
                    <input name="loginname" type="text"required autocomplete="off"/>
                </div>

                <div class="field-wrap">
                    <label>
                        密码<span class="req">*</span>
                    </label>
                    <input name="rpassword" type="password"required autocomplete="off"/>
                </div>

                <button type="submit" class="button button-block"/>注册</button>

            </form>

        </div>

        <div id="login">
            <h1>欢迎回来!</h1>

            <form action="/login" method="post">

                <div class="field-wrap">
                    <label>
                        用户名<span class="req">*</span>
                    </label>
                    <input id="sloginname" type="email"required autocomplete="off"/>
                </div>

                <div class="field-wrap">
                    <label>
                        密码<span class="req">*</span>
                    </label>
                    <input id="spassword" type="password"required autocomplete="off"/>
                </div>

                <p class="forgot"><a href="#">Forgot Password?</a></p>

                <button class="button button-block"/>登 陆</button>

            </form>

        </div>

    </div><!-- tab-content -->

</div> <!-- /form -->
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src="http://malsup.github.io/jquery.form.js" type="text/javascript"></script>
<script  src="js/index.js"></script>
<script>
    $(function(){
        /** 验证文件是否导入成功  */
        $("#sign").ajaxForm(function(data){
            if(data.status=="true"){
                alert("提交成功！请重新登录");
                $('.tab a').click();
                $('#sign').reset();
            }else{
                alert(data.data);
            }
        });
    });

</script>
</body>
</html>
