<section class="container">
<div>
<h2>Inicia Sesion</h2>

</div>

        <form method="post" action="index.php?page=sec_login{{if redirto}}&redirto={{redirto}}{{endif redirto}}">
            <input type="hidden" name="xss_login" value="{{~xss_login}}"/>
            <label for="txtEmail">Email</label>
            <input type="email" id="txtEmail" name="txtEmail" placeholder="tucorreo@gmail.com" value="{{txtEmail}}" />
            {{if errorEmail}}
            <div class="text-red-500">{{errorEmail}}</div>
            {{endif errorEmail}}
            <label for="txtPswd">Password</label>
            <input type="password" id="txtPswd" name="txtPswd" placeholder ="************" value="{{txtPswd}}" />
            {{if errorPswd}}
            <div class="text-red-500">{{errorPswd}}</div>
            {{endif errorPswd}}
            {{if generalError}}
            <div class="text-red-500">{{generalError}}</div>
            {{endif generalError}}
            <div>
                        <button id="btnLogin" type="submit">Log in</button>

            </div>
        </form>
        <p>Si no tienes no te preocupes, puedes <a href="index.php?page=Sec_Register">crearla</a> </p>
</section>

   <style>
        body {
            font-family: Arial, sans-serif;
          
        }

        .container {
          display: flex; 
          flex-direction: column; 
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-image: url("public/imgs/hero/herokevw2.png");
        }

    
    </style>