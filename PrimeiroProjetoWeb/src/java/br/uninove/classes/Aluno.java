package br.uninove.classes;

                    
public class Aluno extends Pessoa {
    int ra;
    Curso curso;

    public Aluno() {
    }
    
    public Aluno(int ra, Curso curso) {
        super();
        this.ra = ra;
        this.curso = curso;
    }
    
    public Aluno(String nome, String cpf, String email, int idade, int ra, Curso curso) {
        super(nome, email, cpf, idade);
        this.ra = ra;
        this.curso = curso;
    }
}
