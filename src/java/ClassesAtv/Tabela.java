package ClassesAtv;

public class Tabela {
    
    String html = "";
    
    private void Media(){
           
        html += "<p>Níveis dos livros no Quadro Comum Europeu de Referência para línguas:</p>";
        html += "<div align=\"center\">";
        html += "    <table border=\"1\" cellpadding=\"5\" width=\"350\" cellspacing=\"1\">";
        html += "        <tr><td><b>NÍVEL</b></td>  <td><b>LIVRO</b></td></tr>";
        html += "        <tr><td>A1</td>        <td>Beginner</td></tr>";
        html += "        <tr><td>A2</td>        <td>Elementary</td></tr>";
        html += "        <tr><td>A2-B1</td>     <td>Pre-Intermediate</td></tr>";
        html += "        <tr><td>B1</td>        <td>Intermediate</td></tr>";
        html += "        <tr><td>B2</td>        <td>Upper-Intermediate - Ready for First</td></tr>";
        html += "        <tr><td>C1</td>        <td>Advanced - Ready for Advanced</td></tr>";
        html += "    </table>";
        html += "</div>";
    }
    
    public String getMedia(){
        Media();
        return html;
    }
    
    public String CalculoMedia(float w, float s, float r, float l){
        float media;
        media = (w + s + r + l) / 4;
        
        return String.format("Média = %.1f", media);
    }
    
    
    public String aluno_nivel(){
       String result = "<br>ALUNOS E NÍVEIS: <br>";
       
       String alunoNivel[][]={
           {"Ana Luiza", "Caroline", "Gabriel", "Gabrieli", "Jade", "Lucas", "Luis Felipe", "Monike", "Pedro", "Petrick", "Thomas", "Vinicius" },
           {"A1", "A2", "B1", "B2", "C1"}
       };
       
       for (int i = 0; i < alunoNivel.length; i++){
           result += "<br>";
           for (int j = 0; j < alunoNivel[i].length; j++){
               result += alunoNivel[i][j] + ", ";
           }
       }
       
       result += "<br><br>";
       
       return result;
   }
    
}
