
package com.aplicacao.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import com.aplicacao.ConexaoMySQL;
import com.aplicacao.daos.Hist_avaliacao;

public class Hist_avaliacaoModelo {

    public static void main(String[] args) {
        Hist_avaliacaoModelo controle = new Hist_avaliacaoModelo();

        // Exemplo de consulta de histórico de avaliação por código
        Hist_avaliacao historico = controle.consultarHistoricoPorCodigo(1);
        controle.imprimirHistorico(historico);

        // Exemplo de consulta geral de históricos de avaliação
        ArrayList<Hist_avaliacao> historicos = controle.consultarHistoricos();
        controle.imprimirHistoricos(historicos);
    }

    public Hist_avaliacao consultarHistoricoPorCodigo(int codHistorico) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        Hist_avaliacao historico = new Hist_avaliacao();
        try {
            String consulta = "SELECT * FROM hist_avaliacao WHERE cod_hist_aval = " + codHistorico;

            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                historico.setCod_hist_aval(resultado.getInt("cod_hist_aval"));
                historico.setCod_usuario(resultado.getInt("cod_usuario"));
                historico.setCod_musica(resultado.getInt("cod_musica"));
                historico.setData_avaliacao(resultado.getDate("data_avaliacao"));
                historico.setNota(resultado.getInt("nota"));
                historico.setHorario_avaliacao(resultado.getDate("horario_avaliacao"));
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao consultar histórico de avaliação: " + ex.getMessage());
        }
        return historico;
    }

    public ArrayList<Hist_avaliacao> consultarHistoricos() {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        ArrayList<Hist_avaliacao> listaHistoricos = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM hist_avaliacao ORDER BY data_avaliacao DESC";
            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                Hist_avaliacao historico = new Hist_avaliacao();
                historico.setCod_hist_aval(resultado.getInt("cod_hist_aval"));
                historico.setCod_usuario(resultado.getInt("cod_usuario"));
                historico.setCod_musica(resultado.getInt("cod_musica"));
                historico.setData_avaliacao(resultado.getDate("data_avaliacao"));
                historico.setNota(resultado.getInt("nota"));
                historico.setHorario_avaliacao(resultado.getDate("horario_avaliacao"));
                listaHistoricos.add(historico);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Hist_avaliacaoModelo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaHistoricos;
    }

    public String inserirHistorico(Hist_avaliacao historico) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "INSERT INTO historico_avaliacao (cod_usuario, cod_musica, data_avaliacao, nota, horario_avaliacao) VALUES (?, ?, ?, ?, ?)";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, historico.getCod_usuario());
            stm.setInt(2, historico.getCod_musica());
            stm.setDate(3, new java.sql.Date(historico.getData_avaliacao().getTime()));
            stm.setInt(4, historico.getNota());
            stm.setDate(5, new java.sql.Date(historico.getHorario_avaliacao().getTime()));

            stm.executeUpdate();
            resultado = "Inserido com sucesso";
        } catch (SQLException ex) {
            System.out.println("Erro ao inserir histórico de avaliação: " + ex.getMessage());
            resultado = "Erro ao inserir histórico de avaliação";
        }
        return resultado;
    }

    public String alterarHistorico(Hist_avaliacao historico) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "UPDATE historico_avaliacao SET cod_usuario=?, cod_musica=?, data_avaliacao=?, nota=?, horario_avaliacao=? WHERE cod_hist_aval=?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, historico.getCod_usuario());
            stm.setInt(2, historico.getCod_musica());
            stm.setDate(3, new java.sql.Date(historico.getData_avaliacao().getTime()));
            stm.setInt(4, historico.getNota());
            stm.setDate(5, new java.sql.Date(historico.getHorario_avaliacao().getTime()));
            stm.setInt(6, historico.getCod_hist_aval());

            int rowsAffected = stm.executeUpdate();
            if (rowsAffected > 0) {
                resultado = "Histórico de avaliação atualizado com sucesso";
            } else {
                resultado = "Erro ao atualizar histórico de avaliação";
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao atualizar histórico de avaliação: " + ex.getMessage());
            resultado = "Erro ao atualizar histórico de avaliação";
        }
        return resultado;
    }

    public String removerHistorico(Hist_avaliacao historico) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "DELETE FROM historico_avaliacao WHERE cod_hist_aval=?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, historico.getCod_hist_aval());

            int rowsAffected = stm.executeUpdate();
            if (rowsAffected > 0) {
                resultado = "Histórico de avaliação removido com sucesso";
            } else {
                resultado = "Erro ao remover histórico de avaliação";
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao remover histórico de avaliação: " + ex.getMessage());
            resultado = "Erro ao remover histórico de avaliação";
        }
        return resultado;
    }

    public void imprimirHistorico(Hist_avaliacao historico) {
        System.out.println("Código do histórico de avaliação: " + historico.getCod_hist_aval());
        System.out.println("Código do usuário: " + historico.getCod_usuario());
        System.out.println("Código da música: " + historico.getCod_musica());
        System.out.println("Data de avaliação: " + historico.getData_avaliacao());
        System.out.println("Nota: " + historico.getNota());
        System.out.println("Horário de avaliação: " + historico.getHorario_avaliacao());
        System.out.println();
    }

    public void imprimirHistoricos(ArrayList<Hist_avaliacao> historicos) {
        for (Hist_avaliacao historico : historicos) {
            imprimirHistorico(historico);
        }
    }
}
