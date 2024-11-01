package com.aplicacao.daos;

import java.util.Date;

public class HistoricoReproducao {
    private int cod_hist_repr;
    private int cod_usuario;
    private int cod_musica;
    private Date data_reproducao;
    private Date horario_reproducao;
    
    public int getCod_hist_repr() {
        return cod_hist_repr;
    }

    public void setCod_hist_repr(int cod_hist_repr) {
        this.cod_hist_repr = cod_hist_repr;
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

    public Date getData_reproducao() {
        return data_reproducao;
    }

    public void setData_reproducao(Date data_reproducao) {
        this.data_reproducao = data_reproducao;
    }

    public Date getHorario_reproducao() {
        return horario_reproducao;
    }

    public void setHorario_reproducao(Date horario_reproducao) {
        this.horario_reproducao = horario_reproducao;
    }
}

