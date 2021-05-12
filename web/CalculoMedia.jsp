<%@page import="ClassesAtv.Tabela" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cálculo Média</title>
    </head>
    <body>
        <%
            try{
            
            String writing_txt, speaking_txt, reading_txt, listening_txt;
            float writing, speaking, reading, listening, media;
            
            //Capturar
            writing_txt = request.getParameter("writing");
            speaking_txt = request.getParameter("speaking");
            reading_txt = request.getParameter("reading");
            listening_txt = request.getParameter("listening");
            
            //Conversão
            writing = Float.parseFloat(writing_txt);
            speaking = Float.parseFloat(speaking_txt);
            reading = Float.parseFloat(reading_txt);
            listening = Float.parseFloat(listening_txt);
            
            out.println(new Tabela().CalculoMedia(writing, speaking, reading, listening));
        
            } catch(Exception ex){
                out.print("Ocorreu um erro, verifique os valores inseridos. " + ex.getMessage());
            }
        %>
    </body>
</html>
