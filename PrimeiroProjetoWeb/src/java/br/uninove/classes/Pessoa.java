package br.uninove.classes;

public class Pessoa {
    private String nome;
    private String email;
    private String cpf;
    private int idade;

    public Pessoa() {
        
    }

    public Pessoa(String nome, String email, String cpf, int idade) {
        this.nome = nome;
        this.email = email;
        this.cpf = cpf;
        this.idade = idade;
    }
    
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }
}