package com.aplicacao.daos;

import java.util.Date;
import java.util.List;

public class Musica {

    private int cod_musica;
    private String titulo;
    private String genero;
    private String tempo_reproducao;
    private Date data_lancamento;
    private String album;
    private List<Artista> artistas;

    public int getCod_musica() {
        return cod_musica;
    }

    public void setCod_musica(int cod_musica) {
        this.cod_musica = cod_musica;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public String getTempo_reproducao() {
        return tempo_reproducao;
    }

    public void setTempo_reproducao(String tempo_reproducao) {
        this.tempo_reproducao = tempo_reproducao;
    }

    public Date getData_lancamento() {
        return data_lancamento;
    }

    public void setData_lancamento(Date data_lancamento) {
        this.data_lancamento = data_lancamento;
    }

    public String getAlbum() {
        return album;
    }

    public void setAlbum(String album) {
        this.album = album;
    }

    public List<Artista> getArtistas() {
        return artistas;
    }

    public void setArtistas(List<Artista> artistas) {
        this.artistas = artistas;
    }
}
