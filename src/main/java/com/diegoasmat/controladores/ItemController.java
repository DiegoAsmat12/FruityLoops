package com.diegoasmat.controladores;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.diegoasmat.modelos.Item;

@Controller
public class ItemController {
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String index(Model model) {
		ArrayList<Item> fruits = new ArrayList<Item>();
		fruits.add(new Item("Kiwi",1.5));
		fruits.add(new Item("Mango",2.0));
		fruits.add(new Item("Bayas de Goyi",4.0));
		fruits.add(new Item("Guayava",.75));
		
		model.addAttribute("frutas",fruits);
		
		return "index.jsp";
	}
	
}
