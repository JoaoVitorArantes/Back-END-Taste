package com.aplicacao.daos;

import java.util.List;

public class Artista {
    private int cod_artista;
    private String nome;
    private String genero_musical_artista;
    private int nro_seguidores;
    private String ano_estreia;
    private String biografia;
    private int cod_usuario;
    private List<Musica> musicas;
    
    public int getCod_artista() {
        return cod_artista;
    }

    public void setCod_artista(int cod_artista) {
        this.cod_artista = cod_artista;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getGenero_musical_artista() {
        return genero_musical_artista;
    }

    public void setGenero_musical_artista(String genero_musical_artista) {
        this.genero_musical_artista = genero_musical_artista;
    }

    public int getNro_seguidores() {
        return nro_seguidores;
    }

    public void setNro_seguidores(int nro_seguidores) {
        this.nro_seguidores = nro_seguidores;
    }

    public String getAno_estreia() {
        return ano_estreia;
    }

    public void setAno_estreia(String ano_estreia) {
        this.ano_estreia = ano_estreia;
    }

    public String getBiografia() {
        return biografia;
    }

    public void setBiografia(String biografia) {
        this.biografia = biografia;
    }

    public int getCod_usuario() {
        return cod_usuario;
    }

    public void setCod_usuario(int cod_usuario) {
        this.cod_usuario = cod_usuario;
    }

    public List<Musica> getMusicas() {
        return musicas;
    }

    public void setMusicas(List<Musica> musicas) {
        this.musicas = musicas;
    }
}
