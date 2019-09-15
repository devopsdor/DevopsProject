<html>
<head>
  <title>Echoing HTML Request Parameters</title>
</head>
<body>
  <h3>Choose a Chef:</h3>
  <form method="get">
    <input type="checkbox" name="chef" value="Haim Cohen">Haim Cohen1
    <input type="checkbox" name="chef" value="Eyal Shani">Eyal Shani
    <input type="checkbox" name="chef" value="Israel Aharoni">Israel Aharoni
	<input type="checkbox" name="chef" value="Michal Anski">Michal Anski
    <input type="submit" value="Submit">
  </form>
 
  <%
  String[] chefs = request.getParameterValues("chef");
  if (chefs != null) {
  %>
    <h3>You have selected chef(s):</h3>
    <ul>
  <%
      for (int i = 0; i < chefs.length; ++i) {
  %>
        <li><%= chefs[i] %></li>
  <%
      }
  %>
    </ul>
    <a href="<%= request.getRequestURI() %>">BACK</a>
  <%
  }
  %>
</body>
</html>