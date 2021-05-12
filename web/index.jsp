<%@page import="ClassesAtv.Tabela" %>
<%@page import="ClassesAtv.Aluno"%>
<%@page import ="java.util.List" %>
<%@page import ="java.util.ArrayList" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Atividade AV1</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Curso inglês</h1>
        
        
        <%=new Tabela().getMedia()%>
        
        <h2>1º Semestre de 2021</h2>
        <h3>Cálculo da Média</h3>
        
        <div id="Dados">
            <p>Em caso de números quebrados, utilizar "." ao invés de ",".</p>
            <form action="CalculoMedia.jsp" method="get" target="result">
                Writing: <br><input type="text" name="writing"><br><br>
                Speaking: <br><input type="text" name="speaking"><br><br>
                Reading: <br><input type="text" name="reading"><br><br>
                Listening: <br><input type="text" name="listening"><br><br>
                <input type="submit" name="enviar" value="Calcular">
            </form>
        </div>
        <br><br>
        
        <div id="retorno">
            <iframe name="result" width="300" height="50"></iframe>
        </div>
        
        <%
            
          out.print(new Tabela().aluno_nivel());
            
          List<Aluno> a = new ArrayList<Aluno>();
          a.add(new Aluno("Ana Luiza Clemente Silva", 18, 9, 8.3, 10, 10, "B2"));
          a.add(new Aluno("Caroline Cardoso Gois", 23, 7.2, 7.7, 7, 8, "A2-B1"));
          a.add(new Aluno("Gabriel Fidelis Ribeiro", 22, 8.8, 8.5, 9.4, 9.3, "B2"));
          a.add(new Aluno("Gabrieli Aparecida Batista Gomes", 22, 9, 8.7, 9.2, 9, "A2"));
          a.add(new Aluno("Jade Coutinho de Souza", 21, 9.4, 9.3, 9.7, 9.8, "B2"));
          a.add(new Aluno("Lucas Clemente Nunes", 20, 9.7, 9.5, 9.7, 9.5, "B1"));
          a.add(new Aluno("Luis Felipe Clemente Nunes", 23, 9.85, 9.8, 10, 10, "C1"));
          a.add(new Aluno("Monike Batista Gomes", 26, 8, 7.7, 8.5, 7.5, "A1"));
          a.add(new Aluno("Pedro Hypólino Nogueira", 20, 8.8, 9, 8.8, 9.2, "C1"));
          a.add(new Aluno("Petrick Robert Vilela Ferreira", 16, 9, 9.2, 9.7, 9.5, "A2-B1"));
          a.add(new Aluno("Thomas Fecury Mollo", 17, 8.8, 9.1, 9.7, 9.8, "A2-B1"));
          a.add(new Aluno("Vinicius Pereira", 22, 8.2, 8.8, 9, 9.2, "A1"));
          

          for(Aluno valor : a){
              out.print("Nome: "+ valor.getNome() + "<br>");
              out.print("Idade: " + valor.getIdade() + "<br>");
              out.print("Writing: " + valor.getWriting() + "<br>");
              out.print("Speaking: " + valor.getSpeaking() + "<br>");
              out.print("Reading: " + valor.getReading() + "<br>");
              out.print("Listening: " + valor.getListening() + "<br>");
              out.print("Nível: " + valor.getNivelcefr() + "<br>");
              out.print("_________________________<br>");
          }
          
        %>
        
    </body>
</html>
