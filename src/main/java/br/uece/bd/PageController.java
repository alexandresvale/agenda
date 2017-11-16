package br.uece.bd;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import br.uece.bd.model.Contato;
import br.uece.bd.service.ContatoService;

@Controller
@RequestMapping("/")
public class PageController {
	@Autowired
	ContatoService service;

	private final Logger LOGGER = Logger.getLogger(this.getClass());

	@GetMapping(value = "new")
	public String newContato(ModelMap model) {
		Contato contato = getEntity();
		model.addAttribute("contato", contato);
		this.LOGGER.debug(String.format("Request to create a new contato [%s].", contato.toString()));
		return getPath("new");
	}

	@PostMapping(value = "new")
	public String saveContato(@ModelAttribute("contato") @Valid Contato contato, BindingResult result,
			HttpServletRequest request, ModelMap model) {
		if (result.hasErrors()) {
			this.LOGGER.debug(String.format("Validation error: [%s]. [%s]", contato.toString(), result.toString()));
			return getPath("new");
		} else {
			this.LOGGER.debug(String.format("Saving the contato [%s].", contato.toString()));
			service.addContact(contato);
			return "redirect:/";
		}
	}

	@GetMapping(value = { "", "list" })
	public String listContato(ModelMap model) {
		List<Contato> contatos = service.getAll();
		Contato contato = getEntity();
		model.addAttribute("contato", contato);
		model.addAttribute("contatos", contatos);
		this.LOGGER.debug(String.format("Requesting all the records[%s].", contatos.toString()));
		return getPath("list");
	}
	
	@PostMapping(value = { "", "list" })
	public String listContatoResult(@ModelAttribute("contato")  Contato contato, BindingResult result,
			HttpServletRequest request, ModelMap model) {
		List<Contato> contatos = service.getByNomeEmailTelefoneEndereco(contato);
		model.addAttribute("contato", contato);
		model.addAttribute("contatos", contatos);
		this.LOGGER.debug(String.format("Requesting all the records[%s].", contatos.toString()));
		return getPath("list");
	}

	@GetMapping("get/{id}")
	public String getContato(@PathVariable("id") Integer id, ModelMap model) {
		Contato contato = service.getById(id);
		model.addAttribute("contato", contato);
		this.LOGGER.debug(String.format("Requesting the contato [%s].", contato.toString()));
		return getPath("get");
	}
	
	@GetMapping("advanced-search")
	public String advancedSearch(ModelMap model) {
		Contato contato = getEntity();
		model.addAttribute("contato", contato);
		this.LOGGER.debug(String.format("Initializing advanced search."));
		return getPath("advanced-search");
		
	}
	@PostMapping("advanced-search")
	public String advancedSearchResult(@ModelAttribute("contato")  Contato contato, BindingResult result,
			HttpServletRequest request, ModelMap model) {
		List<Contato> contatos = service.getByNomeEmailTelefoneEndereco(contato);
		model.addAttribute("contatos", contatos);
		this.LOGGER.debug(String.format("Initializing advanced search."));
		return getPath("advanced-search-result");
		
	}

	@GetMapping(value = "delete/{id}")
	public String deleteContato(@PathVariable("id") Integer id, ModelMap model) {
		Contato contato;
		if ((contato = service.getById(id)) != null) {
			service.deleteContact(contato);
		}
		return "redirect:/";
	}

	@GetMapping(value="update/{id}")
	public String editContato(@PathVariable("id") Integer id, Contato contato, ModelMap model) {
		contato = service.getById(id);
		model.addAttribute("contato", contato);
		return getPath("edit");
	}
	@PostMapping(value = "update")
	public String updateContato(@ModelAttribute("contato") @Valid Contato contato, BindingResult result,
			HttpServletRequest request, ModelMap model) {
		if (result.hasErrors()) {
			model.addAttribute("contato", contato);
			return "new";
		} else {
			service.updateContact(contato);
			return "redirect:/";
		}
	}

	private String getPath(String page) {
		return new StringBuilder().append("contato/").append(page).toString();
	}

	private Contato getEntity() {
		return new Contato();
	}

}
