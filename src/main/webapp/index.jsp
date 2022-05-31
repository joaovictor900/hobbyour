<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
  <!DOCTYPE html>
  <html lang="pt-br">

  <head>
    <meta charset="utf-8">
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
  rel="stylesheet">
    <link rel="stylesheet" href="assets/style-login.css">
    <!-- Bootstrap CSS -->

    <title>hobbyour | entre ou cadastre-se</title>

  </head>


  <body>

    <div class="main-login">
      <div class="left-login">
        <h1>Faça seu login com hobbyour</h1>
        ,<img src="assets/img/login_hobby.svg" class="login-image" alt="login_hobby">
      </div>

      <div class="right-login">
       <form action="<%=request.getContextPath() %>/ServletLogin" method="post" class="needs-validation" novalidate>
        <div class="card-login">
          <h1>Login</h1>
         
            <input type="hidden" value="<%= request.getParameter(" url") %>" name="url">

            <div class="textfield">
              <label class="" for="login">Login</label>
              <input class="" id="login" name="login" type="text" placeholder="Informe o login ou email" required>
            </div>
            <div class="invalid-feedback">
              Obrigatório
            </div>
            <div class="valid-feedback">
              ok
            </div>

            <div class="textfield">
              <label class="" for="senha">Senha</label>
              <input class="" id="senha" name="senha" type="password" placeholder="Informe a senha" required>
            </div>
            <div class="invalid-feedback">Obrigatório </div>
            <div class="valid-feedback">
              ok
            </div>            
           
           <input type="submit" value="Acessar" class="btn-login">
          
        </div>
        </form>
      </div>

    </div>

    <h5 class="msg">${msg}</h5>

    <!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" 
    crossorigin="anonymous"></script>
   
    <script type="text/javascript">
      //Example starter JavaScript for disabling form submissions if there are invalid fields
      (function () {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission
        Array.prototype.slice.call(forms)
          .forEach(function (form) {
            form.addEventListener('submit', function (event) {
              if (!form.checkValidity()) {
                event.preventDefault()
                event.stopPropagation()
              }

              form.classList.add('was-validated')
            }, false)
          })
      })()

    </script>
  </body>

  </html>