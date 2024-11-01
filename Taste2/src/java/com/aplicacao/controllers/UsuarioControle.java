package com.aplicacao.controllers;

import com.aplicacao.daos.Usuario;
import com.aplicacao.models.UsuarioModelo;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import java.util.List;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.request;

/**
 *
 * @author aluno
 */
@Controller
public class UsuarioControle {

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView cliente() {
        return new ModelAndView("login", "command", new Usuario());
    }

    @RequestMapping(value = "/adm", method = RequestMethod.GET)
    public ModelAndView adm() {
        return new ModelAndView("adm", "command", new Usuario());
    }

    @ModelAttribute("usuario")
    public Usuario criarClienteModelo() {
        return new Usuario();
    }

   /*@RequestMapping(value = "/logar", method = RequestMethod.POST)
public String logar(@ModelAttribute("usuario") Usuario est, BindingResult bindingResult, Model modelo) {
    if (bindingResult.hasErrors()) {
        return "logar";
    }
    modelo.addAttribute("email", est.getEmail());
    modelo.addAttribute("senha", est.getSenha());

    boolean res = verificarLogin(est);
    if (!res) {
        return "adicionarUsuario"; // Redirecionar para adicionar usuário ou outra ação
    } else {
        return "login"; // Redirecionar para a página de login
    }
}*/

@RequestMapping(value = "/logar", method = RequestMethod.POST)
public String logar(@ModelAttribute("usuario") Usuario est, BindingResult bindingResult, Model modelo, HttpServletRequest request) {
    if (bindingResult.hasErrors()) {
        return "logar"; // Retorna para a página de login em caso de erro
    }

    Usuario usuario = login(est.getEmail(), est.getSenha(), request);
    if (usuario == null) {
        return "adicionarUsuario"; // Redirecionar para adicionar usuário ou outra ação
    } else {
        // Armazena o usuário logado na sessão
        HttpSession session = request.getSession();
        session.setAttribute("usuarioLogado", usuario);
        return "login"; // Redirecionar para a página de login
    }
}

// Método que verifica as credenciais do usuário e armazena o papel na sessão
public Usuario login(String email, String senha, HttpServletRequest request) {
    Usuario usuario = new UsuarioModelo().buscarPorEmailSenha(email, senha);
    if (usuario != null) {
        // Armazena o papel do usuário na sessão
        HttpSession session = request.getSession();
        session.setAttribute("usuarioPerfil", usuario.getPerfil());
    }
    return usuario; // Retorna o usuário, ou null se não encontrado
}


    @RequestMapping(value = "/cadastrar", method = RequestMethod.POST)
    public String cadastrar(@ModelAttribute("usuario") Usuario tng, BindingResult bindingResult, Model modelo) {
        if (bindingResult.hasErrors()) {
            return "cadastrar";
        }
        modelo.addAttribute("nome_usuario", tng.getNome_usuario());
        modelo.addAttribute("email", tng.getEmail());
        modelo.addAttribute("senha", tng.getSenha());
        modelo.addAttribute("genero_usuario", tng.getGenero_usuario());
        modelo.addAttribute("dt_nasc", tng.getDt_nasc());

        UsuarioModelo um = new UsuarioModelo();
        um.inserirUsuario(tng);

        return "login";
    }

    
}
