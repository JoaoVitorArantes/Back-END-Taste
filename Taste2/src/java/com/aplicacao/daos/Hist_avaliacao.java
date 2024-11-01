package com.aplicacao.daos;

import java.util.Date;

public class Hist_avaliacao {
    private int cod_hist_aval;
    private int cod_usuario;
    private int cod_musica;
    private Date data_avaliacao;
    private int nota;
    private Date horario_avaliacao;
    
    public int getCod_hist_aval() {
        return cod_hist_aval;
    }

    public void setCod_hist_aval(int cod_hist_aval) {
        this.cod_hist_aval = cod_hist_aval;
    }

    public int getCod_usuario() {
        return cod_usuario;
    }

    public void setCod_usuario(int cod_usuario) {
        this.cod_usuario = cod_usuario;
    }

    public int getCod_musica() {
        return cod_musica;
    }

    public void setCod_musica(int cod_musica) {
        this.cod_musica = cod_musica;
    }

    public Date getData_avaliacao() {
        return data_avaliacao;
    }

    public void setData_avaliacao(Date data_avaliacao) {
        this.data_avaliacao = data_avaliacao;
    }

    public int getNota() {
        return nota;
    }

    public void setNota(int nota) {
        this.nota = nota;
    }

    public Date getHorario_avaliacao() {
        return horario_avaliacao;
    }

    public void setHorario_avaliacao(Date horario_avaliacao) {
        this.horario_avaliacao = horario_avaliacao;
    }
}

