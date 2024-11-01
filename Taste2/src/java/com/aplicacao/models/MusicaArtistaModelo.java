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
import com.aplicacao.daos.MusicaArtista;

public class MusicaArtistaModelo {

    public static void main(String[] args) {
        MusicaArtistaModelo controle = new MusicaArtistaModelo();

        // Exemplo de consulta de artistas por música
        ArrayList<Integer> artistas = controle.consultarArtistasPorMusica(1);
        controle.imprimirArtistas(artistas);
    }

    public ArrayList<Integer> consultarArtistasPorMusica(int codMusica) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        ArrayList<Integer> artistas = new ArrayList<>();
        try {
            String consulta = "SELECT cod_artista FROM musica_artista WHERE cod_musica = ?";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, codMusica);

            ResultSet resultado = stm.executeQuery();

            while (resultado.next()) {
                artistas.add(resultado.getInt("cod_artista"));
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao consultar artistas por música: " + ex.getMessage());
        }
        return artistas;
    }

    public String inserirMusicaArtista(MusicaArtista musicaArtista) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "INSERT INTO musica_artista (cod_musica, cod_artista) VALUES (?, ?)";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, musicaArtista.getCod_musica());
            stm.setInt(2, musicaArtista.getCod_artista());

            stm.executeUpdate();
            resultado = "Relação música-artista inserida com sucesso";
        } catch (SQLException ex) {
            System.out.println("Erro ao inserir relação música-artista: " + ex.getMessage());
            resultado = "Erro ao inserir relação música-artista";
        }
        return resultado;
    }

    public String removerArtistasPorMusica(int codMusica) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "DELETE FROM musica_artista WHERE cod_musica = ?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, codMusica);

            int rowsAffected = stm.executeUpdate();
            if (rowsAffected > 0) {
                resultado = "Relações música-artista removidas com sucesso";
            } else {
                resultado = "Nenhuma relação música-artista encontrada para remover";
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao remover relações música-artista: " + ex.getMessage());
            resultado = "Erro ao remover relações música-artista";
        }
        return resultado;
    }

    public void imprimirArtistas(ArrayList<Integer> artistas) {
        System.out.println("Artistas associados à música:");
        for (Integer codArtista : artistas) {
            System.out.println("- Código do artista: " + codArtista);
        }
    }
}
