<%@page import="mack.entities.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="style/lib/bootstrap-theme.min.css">
        <link rel="stylesheet" type="text/css" href="style/lib/bootstrap.min.css">
        <script src="script/lib/jquery-3.1.0.min.js" type="text/javascript"></script>
        <script src="script/lib/bootstrap.min.js" type="text/javascript"></script>
    </head>
    <body>

        <div class="jumbotron" style="background: #FFF">
            <div class="container">
                <h1>Login</h1>
                <form action="FrontControllerServlet?control=BuscaUsuario" method="post">
                    <div class="form-group">
                        <input name="login" type="text" class="form-control" placeholder="Insira o Nome">
                    </div>
                    <div class="form-group">
                        <input name="login" type="text" class="form-control" placeholder="Insira o Nome">
                    </div>
                    <input type="submit" class="btn btn-primary" value="Entrar">
                </form>
                <%
                    String msg = request.getAttribute("msg") == null ? "" : (String) request.getAttribute("msg");
                    if (!msg.isEmpty()) {%>
                <div class="alert alert-danger" role="alert"><%=msg%></div>
                <% }
                %>
            </div>
        </div>

        <div class="container">
            <hr>
        </div>
    </body>
</html>