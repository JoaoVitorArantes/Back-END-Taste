package com.aplicacao.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.aplicacao.ConexaoMySQL;
import com.aplicacao.daos.Playlist;
import com.aplicacao.daos.Usuario;

public class PlaylistModelo {

    public static void main(String[] args) {
        PlaylistModelo modelo = new PlaylistModelo();

        // exemplinn de consulta de playlist por código
        Playlist playlistConsultada = modelo.consultarPlaylistCodigo(1);
        modelo.imprimirPlaylist(playlistConsultada);

        // oto exemplin de consulta geral de playlist
        ArrayList<Playlist> playlists = modelo.consultarPlaylists();
        modelo.imprimirPlaylists(playlists);
    }

    public Playlist consultarPlaylistCodigo(int codPlaylist) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        Playlist playlist = new Playlist();
        try {
            String consulta = "SELECT * FROM playlist WHERE cod_playlist = " + codPlaylist;

            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {

                playlist.setCod_playlist(resultado.getInt("cod_playlist"));
                playlist.setData_criacao(resultado.getString("data_criacao"));
                playlist.setNome(resultado.getString("nome"));

                Usuario usuario = new Usuario(); // Certifique-se de que existe um objeto Usuario
                usuario.setCod_usuario(resultado.getInt("cod_usuario"));

                // Associacao objeto Usuario à Playlist
                playlist.setCod_usuario(usuario);
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao consultar dados da playlist.");
        }
        return playlist;
    }

    public ArrayList<Playlist> consultarPlaylists() {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        ArrayList<Playlist> playlists = new ArrayList<>();
        Playlist playlist = new Playlist();
        try {
            String consulta = "SELECT * FROM playlist ORDER BY nome";
            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {

                // Definindo os atributos da playlist
                playlist.setCod_playlist(resultado.getInt("cod_playlist"));
                playlist.setData_criacao(resultado.getString("data_criacao"));
                playlist.setNome(resultado.getString("nome"));

                // Definindo os atributos do usuário que é uma chave estrangeira
                Usuario usuario = new Usuario(); // Certifique-se de que existe um objeto Usuario
                usuario.setCod_usuario(resultado.getInt("cod_usuario"));

                // Associacao objeto Usuario à Playlist
                playlist.setCod_usuario(usuario);
            }

        } catch (SQLException ex) {
            Logger.getLogger(PlaylistModelo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return playlists;
    }

    public String inserirPlaylist(Playlist playlist) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "INSERT INTO playlist (cod_playlist, data_criacao, nome, cod_usuario) VALUES (?, ?, ?, ?)";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, playlist.getCod_playlist());
            stm.setString(2, playlist.getData_criacao());
            stm.setString(3, playlist.getNome());
            stm.setInt(4, playlist.getCod_usuario().getCod_usuario());

            stm.executeUpdate();
            resultado = "Playlist inserida com sucesso";
        } catch (SQLException ex) {
            System.out.println("Erro ao inserir playlist: " + ex.getMessage());
            resultado = "Erro ao inserir playlist";
        }
        return resultado;
    }

    public String alterarPlaylist(Playlist playlist) {
        // Implemente aqui a lógica para alterar uma playlist no banco de dados
        return "";
    }

    public String removerPlaylist(Playlist playlist) {
        // Implemente aqui a lógica para remover uma playlist do banco de dados
        return "";
    }

    public void imprimirPlaylist(Playlist playlist) {
        System.out.println("Código da playlist: " + playlist.getCod_playlist());
        System.out.println("Data de criação: " + playlist.getData_criacao());
        System.out.println("Nome: " + playlist.getNome());
        System.out.println("Código do usuário: " + playlist.getCod_usuario());
        System.out.println();
    }

    public void imprimirPlaylists(ArrayList<Playlist> playlists) {
        for (Playlist playlist : playlists) {
            imprimirPlaylist(playlist);
        }
    }
}
