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
import com.aplicacao.daos.HistoricoReproducao;

public class HistoricoReproducaoModelo {

    public static void main(String[] args) {
        HistoricoReproducaoModelo controle = new HistoricoReproducaoModelo();

        // Exemplo de consulta de histórico de reprodução por código
        HistoricoReproducao historico = controle.consultarHistoricoPorCodigo(1);
        controle.imprimirHistorico(historico);

        // Exemplo de consulta geral de históricos de reprodução
        ArrayList<HistoricoReproducao> historicos = controle.consultarHistoricos();
        controle.imprimirHistoricos(historicos);
    }

    public HistoricoReproducao consultarHistoricoPorCodigo(int codHistorico) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        HistoricoReproducao historico = new HistoricoReproducao();
        try {
            String consulta = "SELECT * FROM hist_reproducao WHERE cod_hist_repr = " + codHistorico;

            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                historico.setCod_hist_repr(resultado.getInt("cod_hist_repr"));
                historico.setCod_usuario(resultado.getInt("cod_usuario"));
                historico.setCod_musica(resultado.getInt("cod_musica"));
                historico.setData_reproducao(resultado.getDate("data_reproducao"));
                historico.setHorario_reproducao(resultado.getDate("horario_reproducao"));
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao consultar histórico de reprodução: " + ex.getMessage());
        }
        return historico;
    }

    public ArrayList<HistoricoReproducao> consultarHistoricos() {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        ArrayList<HistoricoReproducao> listaHistoricos = new ArrayList<>();
        try {
            String consulta = "SELECT * FROM hist_reproducao ORDER BY data_reproducao DESC";
            Statement stm = conn.createStatement();
            ResultSet resultado = stm.executeQuery(consulta);

            while (resultado.next()) {
                HistoricoReproducao historico = new HistoricoReproducao();
                historico.setCod_hist_repr(resultado.getInt("cod_hist_repr"));
                historico.setCod_usuario(resultado.getInt("cod_usuario"));
                historico.setCod_musica(resultado.getInt("cod_musica"));
                historico.setData_reproducao(resultado.getDate("data_reproducao"));
                historico.setHorario_reproducao(resultado.getDate("horario_reproducao"));
                listaHistoricos.add(historico);
            }
        } catch (SQLException ex) {
            Logger.getLogger(HistoricoReproducaoModelo.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listaHistoricos;
    }

    public String inserirHistorico(HistoricoReproducao historico) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "INSERT INTO hist_reproducao (cod_usuario, cod_musica, data_reproducao, horario_reproducao) VALUES (?, ?, ?, ?)";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, historico.getCod_usuario());
            stm.setInt(2, historico.getCod_musica());
            stm.setDate(3, new java.sql.Date(historico.getData_reproducao().getTime()));
            stm.setDate(4, new java.sql.Date(historico.getHorario_reproducao().getTime()));

            stm.executeUpdate();
            resultado = "Inserido com sucesso";
        } catch (SQLException ex) {
            System.out.println("Erro ao inserir histórico de reprodução: " + ex.getMessage());
            resultado = "Erro ao inserir histórico de reprodução";
        }
        return resultado;
    }

    public String alterarHistorico(HistoricoReproducao historico) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "UPDATE hist_reproducao SET cod_usuario=?, cod_musica=?, data_reproducao=?, horario_reproducao=? WHERE cod_hist_repr=?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, historico.getCod_usuario());
            stm.setInt(2, historico.getCod_musica());
            stm.setDate(3, new java.sql.Date(historico.getData_reproducao().getTime()));
            stm.setDate(4, new java.sql.Date(historico.getHorario_reproducao().getTime()));
            stm.setInt(5, historico.getCod_hist_repr());

            int rowsAffected = stm.executeUpdate();
            if (rowsAffected > 0) {
                resultado = "Histórico de reprodução atualizado com sucesso";
            } else {
                resultado = "Erro ao atualizar histórico de reprodução";
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao atualizar histórico de reprodução: " + ex.getMessage());
            resultado = "Erro ao atualizar histórico de reprodução";
        }
        return resultado;
    }

    public String removerHistorico(HistoricoReproducao historico) {
        ConexaoMySQL conexao = new ConexaoMySQL();
        Connection conn = conexao.conectar();
        String resultado = "";
        try {
            String consulta = "DELETE FROM historico_reproducao WHERE cod_hist_repr=?";

            PreparedStatement stm = conn.prepareStatement(consulta);
            stm.setInt(1, historico.getCod_hist_repr());

            int rowsAffected = stm.executeUpdate();
            if (rowsAffected > 0) {
                resultado = "Histórico de reprodução removido com sucesso";
            } else {
                resultado = "Erro ao remover histórico de reprodução";
            }
        } catch (SQLException ex) {
            System.out.println("Erro ao remover histórico de reprodução: " + ex.getMessage());
            resultado = "Erro ao remover histórico de reprodução";
        }
        return resultado;
    }

    public void imprimirHistorico(HistoricoReproducao historico) {
        System.out.println("Código do histórico de reprodução: " + historico.getCod_hist_repr());
        System.out.println("Código do usuário: " + historico.getCod_usuario());
        System.out.println("Código da música: " + historico.getCod_musica());
        System.out.println("Data de reprodução: " + historico.getData_reproducao());
        System.out.println("Horário de reprodução: " + historico.getHorario_reproducao());
        System.out.println();
    }

    public void imprimirHistoricos(ArrayList<HistoricoReproducao> historicos) {
        for (HistoricoReproducao historico : historicos) {
            imprimirHistorico(historico);
        }
    }
}
