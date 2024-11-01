/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.aplicacao.controllers;
import com.aplicacao.daos.Musica;

import com.aplicacao.models.MusicaModelo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;
/**
 *
 * @author aluno
 */
@Controller

public class MusicaControle {
    @RequestMapping(value = "/musica", method = RequestMethod.GET)
    public ModelAndView musica() {
        return new ModelAndView("musica", "command", new Musica());
    }
    
     @ModelAttribute("musica")
    public Musica criarMusicaModelo() {
        return new Musica();
    }
    
    @RequestMapping(value = "/musicar", method = RequestMethod.POST)
    public String musicar(@ModelAttribute("musica") Musica musi, BindingResult bindingResult, Model modelo) {
        if (bindingResult.hasErrors()) {
            return "musicar";
        }
        modelo.addAttribute("titulo", musi.getTitulo());
        
        modelo.addAttribute("genero", musi.getGenero());

        modelo.addAttribute("tempo_reproducao", musi.getTempo_reproducao());

        modelo.addAttribute("data_lancamento", musi.getData_lancamento());

        modelo.addAttribute("album", musi.getAlbum());

        MusicaModelo mm = new MusicaModelo();

        mm.inserirMusica(musi);

        return "login";
    }
}
