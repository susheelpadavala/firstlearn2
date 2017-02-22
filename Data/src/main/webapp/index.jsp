
<%@page import="org.json.simple.JSONArray" %>
<%@page import="org.json.simple.JSONObject" %>
<%@page import="org.json.simple.parser.JSONParser" %>
<%@page import="org.json.simple.parser.ParseException" %>
<%@page import="java.io.FileNotFoundException"%>
<%@page import="java.io.FileReader" %>
<%@page import="java.io.IOException" %>
<%@page import="java.util.Iterator" %>
<%@page import="java.io.PrintWriter" %>

<html>
<body>

<%JSONParser parser = new JSONParser();
try {

	Object object = parser.parse(new FileReader("C:\\Users\\susheel\\workspace\\NorthAlley\\Data\\Query"));
                                             
	JSONObject json = (JSONObject) object;
	System.out.println(json);
	 // loop array	
	JSONArray msg = (JSONArray) json.get("TestDetails");
	Iterator<String> iterator = msg.iterator();
	while (iterator.hasNext()) {%>
	<h3> <%= iterator.next() %></h3><% 
	}

} catch (FileNotFoundException e) {
	e.printStackTrace();
} catch (IOException e) {
	e.printStackTrace();

} %>
</body>

</html>
