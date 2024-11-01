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
import com.aplicacao.daos.ArtistaAlbum;

public class ArtistaAlbumModelo {

    public static void main(String[] args) {
        ArtistaAlbumModelo controle = new ArtistaAlbumModelo();

        // Exemplo de consulta de artista por álbum
        ArrayList<Integer> artistas = controle.consultarArtistasPorAlbum(1);
        controle.imprimirArtistas(artistas);
    }

    public ArrayList<Integer> consultarArtistasPorAlbum(int codAlbum) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        ArrayList<Integer> artistas = new ArrayList<>();
        try {
            String consulta = "SELECT cod_artista FROM artista_album WHERE cod_album = ?";
            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, codAlbum);

            ResultSet resultado = stm.executeQuery();

            while (resultado.next()) {
                artistas.add(resultado.getInt("cod_artista"));
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao consultar artistas por álbum: " + ex.getMessage());
        }
        return artistas;
    }

    public String inserirArtistaAlbum(ArtistaAlbum artistaAlbum) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "INSERT INTO artista_album (cod_album, cod_artista) VALUES (?, ?)";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, artistaAlbum.getCod_album());
            stm.setInt(2, artistaAlbum.getCod_artista());

            stm.executeUpdate();
            resultado = "Relação artista-álbum inserida com sucesso";
        } catch (SQLException ex) {
            System.out.println("Erro ao inserir relação artista-álbum: " + ex.getMessage());
            resultado = "Erro ao inserir relação artista-álbum";
        }
        return resultado;
    }

    public String removerArtistasPorAlbum(int codAlbum) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "DELETE FROM artista_album WHERE cod_album = ?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, codAlbum);

            int rowsAffected = stm.executeUpdate();
            if (rowsAffected > 0) {
                resultado = "Relações artista-álbum removidas com sucesso";
            } else {
                resultado = "Nenhuma relação artista-álbum encontrada para remover";
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao remover relações artista-álbum: " + ex.getMessage());
            resultado = "Erro ao remover relações artista-álbum";
        }
        return resultado;
    }

    /**
     *
     * @param artistas
     */
    public void imprimirArtistas(ArrayList<Integer> artistas) {
        System.out.println("Artistas associados ao álbum:");
        for (int codArtista : artistas) {
            System.out.println("- Código do artista: " + codArtista);
        }
    }
}
