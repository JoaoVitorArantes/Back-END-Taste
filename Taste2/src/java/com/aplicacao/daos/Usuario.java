package com.aplicacao.daos;

import java.sql.Date;

public class Usuario {

    public static Usuario parseInt(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private int cod_usuario;
    private String nome_usuario;
    private String email;
    private String senha;
    private String genero_usuario;
    private Date dt_nasc;
    private String perfil;
    
    public String getPerfil() { // Adicione este método
        return perfil;
    }

    public void setPerfil(String Perfil) { // Adicione este método
        this.perfil = Perfil;
    }

    public int getCod_usuario() {
        return cod_usuario;
    }

    public void setCod_usuario(int cod_usuario) {
        this.cod_usuario = cod_usuario;
    }

    public String getNome_usuario() {
        return nome_usuario;
    }

    public void setNome_usuario(String nome_usuario) {
        this.nome_usuario = nome_usuario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getGenero_usuario() {
        return genero_usuario;
    }

    public void setGenero_usuario(String genero_usuario) {
        this.genero_usuario = genero_usuario;
    }

    public Date getDt_nasc() {
        return dt_nasc;
    }

    public void setDt_nasc(Date dt_nasc) {
        this.dt_nasc = dt_nasc;
    }

    

    

   
}
