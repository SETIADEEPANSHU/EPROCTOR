<%
    response.setHeader("Cache-Control", "no-store");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,java.io.*,java.util.*,java.security.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <%
        if ((session.getAttribute("name")) != null && (session.getAttribute("password") != null) && (session.getAttribute("role").equals("Teacher"))) {
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>eProctor</title>
    </head>
    <body>
        <%
            String exam_name = request.getParameter("exam_name");
            String exam_time = request.getParameter("exam_time");
            String exam_duration = request.getParameter("exam_duration");
            String description = request.getParameter("description");
            int requestId = Integer.parseInt(request.getParameter("requestId"));
            int jumble=Integer.parseInt(request.getParameter("jumble"));
            int anyTime=Integer.parseInt(request.getParameter("anyTime"));
            session.setAttribute("exam_name", exam_name);
            session.setAttribute("exam_time", exam_time);
            session.setAttribute("exam_duration", exam_duration);
            session.setAttribute("description", description);
            session.setAttribute("requestId", requestId);
            session.setAttribute("jumble", jumble);
            session.setAttribute("anyTime", anyTime);
            response.sendRedirect("quizspecifications1.jsp");
        %>
    </body>
    <%
        } else {
            response.sendRedirect("/index.jsp");
        }
    %>
</html>