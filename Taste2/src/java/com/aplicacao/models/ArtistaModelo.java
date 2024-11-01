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
import com.aplicacao.daos.Artista;

public class ArtistaModelo {

    public static void main(String[] args) {
        ArtistaModelo teste = new ArtistaModelo();

        // Exemplo de consulta de artista por código
        Artista artistaConsultado = teste.consultarArtistaCodigo(1);
        teste.imprimirArtista(artistaConsultado);

        // Exemplo de consulta geral de artistas
        ArrayList<Artista> artistas = teste.consultarArtistas();
        teste.imprimirArtistas(artistas);
    }

    public Artista consultarArtistaCodigo(int codArtista) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        Artista artista = new Artista();
        try {
            String consulta = "SELECT * FROM artista WHERE cod_artista = ?";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, codArtista);
            ResultSet resultado = stm.executeQuery();

            if (resultado.next()) {
                artista.setCod_artista(resultado.getInt("cod_artista"));
                artista.setNome(resultado.getString("nome"));
                artista.setGenero_musical_artista(resultado.getString("genero_musical_artista"));
                artista.setNro_seguidores(resultado.getInt("nro_seguidores"));
                artista.setAno_estreia(resultado.getString("ano_estreia"));
                artista.setBiografia(resultado.getString("biografia"));
             
                // Consultar e atribuir as músicas associadas ao artista, se necessário
                // artista.setMusicas(consultarMusicasArtista(artista.getCod_artista()));
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao consultar artista: " + ex.getMessage());
        } 
        return artista;
    }

    public ArrayList<Artista> consultarArtistas() {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        ArrayList<Artista> artistas = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM artista ORDER BY nome";
            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                Artista artista = new Artista();
                artista.setCod_artista(resultado.getInt("cod_artista"));
                artista.setNome(resultado.getString("nome"));
                artista.setGenero_musical_artista(resultado.getString("genero_musical_artista"));
                artista.setNro_seguidores(resultado.getInt("nro_seguidores"));
                artista.setAno_estreia(resultado.getString("ano_estreia"));
                artista.setBiografia(resultado.getString("biografia"));
               
                // Consultar e atribuir as músicas associadas ao artista, se necessário
                // artista.setMusicas(consultarMusicasArtista(artista.getCod_artista()));
                artistas.add(artista);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ArtistaModelo.class.getName()).log(Level.SEVERE, null, ex);
        } 
        return artistas;
    }

    public String inserirArtista(Artista artista) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "INSERT INTO artista (nome, genero_musical_artista, nro_seguidores, ano_estreia, biografia) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setString(1, artista.getNome());
            stm.setString(2, artista.getGenero_musical_artista());
            stm.setInt(3, artista.getNro_seguidores());
            stm.setString(4, artista.getAno_estreia());
            stm.setString(5, artista.getBiografia());
           

            stm.executeUpdate();
            resultado = "Artista inserido com sucesso.";
        } catch (SQLException ex) {
            resultado = "Erro ao inserir artista: " + ex.getMessage();
        } 
        return resultado;
    }

    public String alterarArtista(Artista artista) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "UPDATE artista SET nome=?, genero_musical_artista=?, nro_seguidores=?, ano_estreia=?, biografia=?, cod_usuario=? WHERE cod_artista=?";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setString(1, artista.getNome());
            stm.setString(2, artista.getGenero_musical_artista());
            stm.setInt(3, artista.getNro_seguidores());
            stm.setString(4, artista.getAno_estreia());
            stm.setString(5, artista.getBiografia());
            stm.setInt(6, artista.getCod_artista());

            int linhasAfetadas = stm.executeUpdate();
            if (linhasAfetadas > 0) {
                resultado = "Artista alterado com sucesso.";
            } else {
                resultado = "Artista não encontrado para alteração.";
            }
        } catch (SQLException ex) {
            resultado = "Erro ao alterar artista: " + ex.getMessage();
        } 
        return resultado;
    }

    public String removerArtista(int codArtista) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "DELETE FROM artista WHERE cod_artista=?";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, codArtista);

            int linhasAfetadas = stm.executeUpdate();
            if (linhasAfetadas > 0) {
                resultado = "Artista removido com sucesso.";
            } else {
                resultado = "Artista não encontrado para remoção.";
            }
        } catch (SQLException ex) {
            resultado = "Erro ao remover artista: " + ex.getMessage();
        } 
        return resultado;
    }

    public void imprimirArtista(Artista artista) {
        System.out.println("Código do Artista: " + artista.getCod_artista());
        System.out.println("Nome: " + artista.getNome());
        System.out.println("Gênero Musical: " + artista.getGenero_musical_artista());
        System.out.println("Número de Seguidores: " + artista.getNro_seguidores());
        System.out.println("Ano de Estreia: " + artista.getAno_estreia());
        System.out.println("Biografia: " + artista.getBiografia());
  
        // Imprimir músicas associadas, se necessário
        // imprimirMusicas(artista.getMusicas());
        System.out.println();
    }

    public void imprimirArtistas(ArrayList<Artista> artistas) {
        for (Artista artista : artistas) {
            imprimirArtista(artista);
        }
    }
}
