package com.aplicacao.daos;

public class Playlist {
    private int cod_playlist;
    private String data_criacao;
    private String nome;
    private Musica cod_musica;
    private Usuario cod_usuario;

    public Playlist() {

    }
    
    public int getCod_playlist() {
        return cod_playlist;
    }

    public void setCod_playlist(int cod_playlist) {
        this.cod_playlist = cod_playlist;
    }

    public String getData_criacao() {
        return data_criacao;
    }

    public void setData_criacao(String data_criacao) {
        this.data_criacao = data_criacao;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
 
    public void setCod_usuario(Usuario cod_usuario) {
        this.cod_usuario = cod_usuario;
    }
    
    public Usuario getCod_usuario() {
        return cod_usuario;
    }

    public Playlist(Musica cod_musica) {
        this.cod_musica = cod_musica;
    }
    
    
}
