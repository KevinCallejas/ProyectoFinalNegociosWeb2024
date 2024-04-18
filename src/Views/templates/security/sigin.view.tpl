<section class="container">
  
    <form action="index.php?page=Sec_Register" method="POST">
      <h1>Crear tu cuenta</h1>
      <div>
        <label for="txtEmail">Email</label>
        <input type="email" id="txtEmail" placeholder="micorreo@gmail.com" name="txtEmail" value="{{txtEmail}}">
        {{if errorEmail}}
        <div>{{errorEmail}}</div>
        {{endif errorEmail}}
      </div>
      <div>
        <label for="txtPswd">Password</label>
        <input type="password" placeholder="MiContraseña12$" id="txtPswd" name="txtPswd" value="{{txtPswd}}">
        {{if errorPswd}}
        <div>{{errorPswd}}</div>
        {{endif errorPswd}}
      </div>
      <div>
        <button id="btnSignin" type="submit">Crea tu cuenta</button>
      </div>
    </form>
 <p>O tambien puedes <a href="index.php?page=Sec_Register">iniciar sesion.</a> </p>
</section>
<style>
  

  .container {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    padding: 2rem;
    margin: auto 0;
     height: 100vh;
    border-radius: 8px;
    background-image: url("public/imgs/hero/herokevw3.png");
  }


</style>