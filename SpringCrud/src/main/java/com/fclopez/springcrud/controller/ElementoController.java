package com.fclopez.springcrud.controller;

import com.fclopez.springcrud.entities.Elemento2;
import com.fclopez.springcrud.repository.ElementoRepository;
import java.io.IOException;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class ElementoController {

    @Autowired
    private final ElementoRepository er = new ElementoRepository();

    @RequestMapping(value = {"/", "/Index"}, method = RequestMethod.GET)
    public String get(ModelMap model) throws IOException {
        List<?> lista = er.getElementos();
        model.addAttribute("listaElem", lista);
        return "Index";
    }

    @RequestMapping(value = {"/delete/{id}"}, method = RequestMethod.GET)
    public String delete(@PathVariable int id) throws IOException {
        boolean flag = er.eliminarElemento(id);
        return "redirect:/Index";
    }

    @RequestMapping(value = {"/create"}, method = RequestMethod.GET)
    public String getCreate(ModelMap model) throws IOException {
        Elemento2 modelo = new Elemento2();
        model.addAttribute("modelo", modelo);
        return "Create";
    }

    @RequestMapping(value = {"/create"}, method = RequestMethod.POST)
    public String postCreate(@Valid Elemento2 objeto, BindingResult result, ModelMap model) throws IOException {
        boolean flag = er.crearElemento(objeto);
        return "redirect:/Index";
    }

    @RequestMapping(value = {"/edit/{id}"}, method = RequestMethod.GET)
    public String getEdit(@PathVariable int id, ModelMap model) throws IOException {
        Elemento2 modelo = er.getElementoId(id);
        model.addAttribute("modelo", modelo);
        return "Edit";
    }

    @RequestMapping(value = {"/edit/{id}"}, method = RequestMethod.POST)
    public String postEdit(@Valid Elemento2 objeto, BindingResult result, ModelMap model, @PathVariable String id) throws IOException {
        boolean flag = er.actualizarElemento(objeto);
        return "redirect:/Index";
    }
}
