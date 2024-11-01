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
import com.aplicacao.daos.Album;

public class AlbumModelo {

    public static void main(String[] args) {
        AlbumModelo teste = new AlbumModelo();

        // Exemplo de consulta de álbum por código
        Album albumConsultado = teste.consultarAlbumCodigo(1);
        teste.imprimirAlbum(albumConsultado);

        // Exemplo de consulta geral de álbuns
        ArrayList<Album> albuns = teste.consultarAlbuns();
        teste.imprimirAlbuns(albuns);
    }

    public Album consultarAlbumCodigo(int codAlbum) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        Album album = new Album();
        try {
            String consulta = "SELECT * FROM album WHERE cod_album = " + codAlbum;

            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                album.setCod_album(resultado.getInt("cod_album"));
                album.setTitulo_album(resultado.getString("titulo_album"));
                album.setAno_lancamento(resultado.getString("ano_lancamento"));
                album.setGenero_musical(resultado.getString("genero_musical"));
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao consultar dados do álbum.");
        }
        return album;
    }

    public ArrayList<Album> consultarAlbuns() {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        ArrayList<Album> listaAlbuns = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM album ORDER BY titulo_album";
            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                Album album = new Album();
                album.setCod_album(resultado.getInt("cod_album"));
                album.setTitulo_album(resultado.getString("titulo_album"));
                album.setAno_lancamento(resultado.getString("ano_lancamento"));
                album.setGenero_musical(resultado.getString("genero_musical"));
                listaAlbuns.add(album);
            }
        } catch (SQLException ex) {
            Logger.getLogger(AlbumModelo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaAlbuns;
    }

    public String inserirAlbum(Album album) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "INSERT INTO album (cod_album, titulo_album, ano_lancamento, genero_musical) VALUES (?, ?, ?, ?)";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, album.getCod_album());
            stm.setString(2, album.getTitulo_album());
            stm.setString(3, album.getAno_lancamento());
            stm.setString(4, album.getGenero_musical());

            stm.executeUpdate();
            resultado = "Inserido com sucesso";
        } catch (SQLException ex) {
            System.out.println("Erro ao inserir álbum: " + ex.getMessage());
            resultado = "Erro ao inserir álbum";
        }
        return resultado;
    }

    public String alterarAlbum(Album album) {
        // Implemente aqui a lógica para alterar um álbum no banco de dados
        return "";
    }

    public String removerAlbum(Album album) {
        // Implemente aqui a lógica para remover um álbum do banco de dados
        return "";
    }

    public void imprimirAlbum(Album album) {
        System.out.println("Código do álbum: " + album.getCod_album());
        System.out.println("Título do álbum: " + album.getTitulo_album());
        System.out.println("Ano de lançamento: " + album.getAno_lancamento());
        System.out.println("Gênero musical: " + album.getGenero_musical());
        System.out.println();
    }

    public void imprimirAlbuns(ArrayList<Album> albuns) {
        for (Album album : albuns) {
            imprimirAlbum(album);
        }
    }
}
