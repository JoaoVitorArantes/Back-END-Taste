package com.aplicacao.models;


import com.aplicacao.ConexaoMySQL;
import com.aplicacao.daos.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UsuarioModelo {

   
    public Usuario consultarUsuarioCodigo(int codUsuario) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        Usuario usuario = new Usuario();
        try {
            String consulta = "SELECT * FROM usuario WHERE cod_usuario = " + codUsuario;

            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                usuario.setCod_usuario(resultado.getInt("cod_usuario"));
                usuario.setNome_usuario(resultado.getString("nome_usuario"));
                usuario.setEmail(resultado.getString("email"));
                usuario.setSenha(resultado.getString("senha"));
                usuario.setGenero_usuario(resultado.getString("genero_usuario"));
                usuario.setDt_nasc(resultado.getDate("dt_nasc"));
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao consultar dados do usuário.");
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                System.out.println("Erro ao fechar conexão: " + e.getMessage());
            }
        }
        return usuario;
    }
    public Usuario buscarPorEmailSenha(String email, String senha) {
    ConexaoMySQL conexao = new ConexaoMySQL();
    Connection conn = conexao.conectar();
    Usuario usuario = null; // Inicializa como null
    try {
        String consulta = "SELECT * FROM usuario WHERE email = " + usuario.getEmail()+" senha = "+ usuario.getSenha();

        PreparedStatement stm = conn.prepareStatement(consulta);
        stm.setString(1, email);
        stm.setString(2, senha); // Aqui, idealmente você deve usar hash

        ResultSet resultado = stm.executeQuery();

        if (resultado.next()) {
            usuario = new Usuario(); // Se encontrado, cria um novo objeto Usuario
            usuario.setCod_usuario(resultado.getInt("cod_usuario"));
            usuario.setNome_usuario(resultado.getString("nome_usuario"));
            usuario.setEmail(resultado.getString("email"));
            usuario.setSenha(resultado.getString("senha")); // Aqui, idealmente você não deve armazenar a senha
            usuario.setGenero_usuario(resultado.getString("genero_usuario"));
            usuario.setDt_nasc(resultado.getDate("dt_nasc"));
            usuario.setPerfil(resultado.getString("perfil")); // Se existir no seu modelo
        }
    } catch (SQLException ex) {
        System.out.println("Erro ao consultar dados do usuário: " + ex.getMessage());
    } finally {
        try {
            conn.close();
        } catch (SQLException e) {
            System.out.println("Erro ao fechar conexão: " + e.getMessage());
        }
    }
    return usuario; // Retorna o usuário ou null se não encontrado
}


    public ArrayList<Usuario> consultarUsuarios(String email) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        ArrayList<Usuario> listaUsuarios = new ArrayList<>();
        try {
            //mudamos o select de ORDER BY nome_usuario para ORDER BY cod_usuario.
            String consulta = "SELECT * FROM usuario ORDER BY cod_usuario";
            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                Usuario usuario = new Usuario();
                usuario.setCod_usuario(resultado.getInt("cod_usuario"));
                usuario.setNome_usuario(resultado.getString("nome_usuario"));
                usuario.setEmail(resultado.getString("email"));
                usuario.setSenha(resultado.getString("senha"));
                usuario.setGenero_usuario(resultado.getString("genero_usuario"));
                usuario.setDt_nasc(resultado.getDate("dt_nasc"));
                usuario.setPerfil(resultado.getString("perfil"));
                listaUsuarios.add(usuario);
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioModelo.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                System.out.println("Erro ao fechar conexão: " + e.getMessage());
            }
        }
        return listaUsuarios;
    }

    public String inserirUsuario(Usuario usuario) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "INSERT INTO usuario (nome_usuario, email, senha, genero_usuario, dt_nasc) VALUES (?, ?, ?, ?, ?)";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setString(1, usuario.getNome_usuario());
            stm.setString(2, usuario.getEmail());
            stm.setString(3, usuario.getSenha());
            stm.setString(4, usuario.getGenero_usuario());
            stm.setDate(5, usuario.getDt_nasc());

            stm.executeUpdate();
            resultado = "Inserido com sucesso";
        } catch (SQLException ex) {
            System.out.println("Erro ao inserir usuário: " + ex.getMessage());
            resultado = "Erro ao inserir usuário";
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                System.out.println("Erro ao fechar conexão: " + e.getMessage());
            }
        }
        return resultado;
    }

    public String alterarUsuario(Usuario usuario) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "UPDATE usuario SET nome_usuario = ?, email = ?, senha = ?, genero_usuario = ?, dt_nasc = ? WHERE cod_usuario = ?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setString(1, usuario.getNome_usuario());
            stm.setString(2, usuario.getEmail());
            stm.setString(3, usuario.getSenha());
            stm.setString(4, usuario.getGenero_usuario());
            stm.setDate(5, usuario.getDt_nasc());
            stm.setInt(6, usuario.getCod_usuario());

            stm.executeUpdate();
            resultado = "Alterado com sucesso";
        } catch (SQLException ex) {
            System.out.println("Erro ao alterar usuário: " + ex.getMessage());
            resultado = "Erro ao alterar usuário";
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                System.out.println("Erro ao fechar conexão: " + e.getMessage());
            }
        }
        return resultado;
    }

    public String removerUsuario(Usuario usuario) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "DELETE FROM usuario WHERE cod_usuario = ?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, usuario.getCod_usuario());

            stm.executeUpdate();
            resultado = "Removido com sucesso";
        } catch (SQLException ex) {
            System.out.println("Erro ao remover usuário: " + ex.getMessage());
            resultado = "Erro ao remover usuário";
        } finally {
            try {
                conn.close();
            } catch (SQLException e) {
                System.out.println("Erro ao fechar conexão: " + e.getMessage());
            }
        }
        return resultado;
    }
}
