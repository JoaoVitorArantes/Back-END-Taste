package com.aplicacao.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.aplicacao.ConexaoMySQL;
import com.aplicacao.daos.Musica;

public class MusicaModelo {

    public static void main(String[] args) {
        MusicaModelo teste = new MusicaModelo();

        // Exemplo de consulta de música por código
        Musica musicaConsultada = teste.consultarMusicaCodigo(1);
        teste.imprimirMusica(musicaConsultada);

        // Exemplo de consulta geral de músicas
        ArrayList<Musica> musicas = teste.consultarMusicas();
        teste.imprimirMusicas(musicas);
    }

    public Musica consultarMusicaCodigo(int codMusica) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        Musica musica = new Musica();
        try {
            String consulta = "SELECT * FROM musica WHERE cod_musica = " + codMusica;

            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                musica.setCod_musica(resultado.getInt("cod_musica"));
                musica.setTitulo(resultado.getString("titulo"));
                musica.setGenero(resultado.getString("genero"));
                musica.setTempo_reproducao(resultado.getString("tempo_reproducao"));
                musica.setData_lancamento(resultado.getDate("data_lancamento"));
                musica.setAlbum(resultado.getString("album"));
                // Aqui você precisará implementar a lógica para recuperar a lista de artistas da música
                // Exemplo: musica.setArtistas(buscarArtistasDaMusica(musica.getCod_musica()));
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao consultar dados da música.");
        }
        return musica;
    }

    public ArrayList<Musica> consultarMusicas() {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        ArrayList<Musica> listaMusicas = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM musica ORDER BY titulo";
            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                Musica musica = new Musica();
                musica.setCod_musica(resultado.getInt("cod_musica"));
                musica.setTitulo(resultado.getString("titulo"));
                musica.setGenero(resultado.getString("genero"));
                musica.setTempo_reproducao(resultado.getString("tempo_reproducao"));
                musica.setData_lancamento(resultado.getDate("data_lancamento"));
                musica.setAlbum(resultado.getString("album"));
                // Aqui você precisará implementar a lógica para recuperar a lista de artistas da música
                // Exemplo: musica.setArtistas(buscarArtistasDaMusica(musica.getCod_musica()));
                listaMusicas.add(musica);
            }
        } catch (SQLException ex) {
            Logger.getLogger(MusicaModelo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaMusicas;
    }

    public String inserirMusica(Musica musica) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "INSERT INTO musica (cod_musica, titulo, genero_musica, tempo_reproducao, data_lancamento, cod_album) VALUES (?, ?, ?, ?, ?, ?)";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, musica.getCod_musica());
            stm.setString(2, musica.getTitulo());
            stm.setString(3, musica.getGenero());
            stm.setString(4, musica.getTempo_reproducao());
            stm.setDate(5, new java.sql.Date(musica.getData_lancamento().getTime()));
            stm.setString(6, musica.getAlbum());

            stm.executeUpdate();
            resultado = "Inserido com sucesso";
        } catch (SQLException ex) {
            System.out.println("Erro ao inserir música: " + ex.getMessage());
            resultado = "Erro ao inserir música";
        }
        return resultado;
    }

    public String alterarMusica(Musica musica) {
        // Implemente aqui a lógica para alterar uma música no banco de dados
        return "";
    }

    public String removerMusica(Musica musica) {
        // Implemente aqui a lógica para remover uma música do banco de dados
        return "";
    }

    public void imprimirMusica(Musica musica) {
        System.out.println("Código da música: " + musica.getCod_musica());
        System.out.println("Título da música: " + musica.getTitulo());
        System.out.println("Gênero musical: " + musica.getGenero());
        System.out.println("Tempo de reprodução: " + musica.getTempo_reproducao() + " segundos");
        System.out.println("Data de lançamento: " + musica.getData_lancamento());
        System.out.println("Código do álbum: " + musica.getAlbum());
        System.out.println();
    }

    public void imprimirMusicas(ArrayList<Musica> musicas) {
        for (Musica musica : musicas) {
            imprimirMusica(musica);
        }
    }
}
