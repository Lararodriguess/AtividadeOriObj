package ClassesAtv;

public class Aluno {
    
    private String nome;
    private int idade;
    private String nivelcefr;
    private String livro;
    private double writing;
    private double speaking;
    private double reading;
    private double listening;
    
    public Aluno(String nome, int idade, double writing, double speaking, double reading, double listening, String nivelcefr) {
        this.nome = nome;
        this.idade = idade;
        this.writing = writing;
        this.speaking = speaking;
        this.reading = reading;
        this.listening = listening;
        this.nivelcefr = nivelcefr;
    }
    
    
    public String getNome(){
        return nome;
    }
    public void setNome(String nome){
        this.nome = nome;
    }
    
    public int getIdade(){
        return idade;
    }
    public void setIdade(int idade){
        this.idade = idade;
    }
    
    public String getNivelcefr(){
        return nivelcefr;
    }
    public void setNivelcefr(String nivelcefr){
        this.nivelcefr = nivelcefr;
    }
    
    public String getLivro(){
        return livro;
    }
    public void setLivro(String livro){
        this.livro = livro;
    }
    
    public double getWriting(){
        return writing;
    }
    public void setWriting(double writing){
        this.writing = writing;
    }
    
    public double getSpeaking(){
        return speaking;
    }
    public void setSpeaking(double speaking){
        this.speaking = speaking;
    }
    
    public double getReading(){
        return reading;
    }
    public void setReading(double reading){
        this.reading = reading;
    }
    
    public double getListening(){
        return listening;
    }
    public void setListening(double listening){
        this.listening = listening;
    }
    
}
