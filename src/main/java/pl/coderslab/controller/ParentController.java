package pl.coderslab.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.entity.Invoice;
import pl.coderslab.entity.Parent;
import pl.coderslab.repository.InvoiceRepository;
import pl.coderslab.repository.ParentRepository;

@Controller

public class ParentController extends SessionedController {

	@Autowired
	InvoiceRepository repoInvoice;
	@Autowired
	ParentRepository repoParent;

	/*
	 * action returns list of invoices of logged in user
	 */
	@RequestMapping("/myInvoices")
	public String register(Model m) {
		Parent parent = new Parent();
			if (session().getAttribute("parent") != null) {
			parent = (Parent) session().getAttribute("parent");
			List<Invoice> invoices = repoInvoice.findByParentId(parent.getId());
			m.addAttribute("invoices", invoices);
			return "myInvoices";
		} else {
			return "redirect:/login";
		}

	}
	@RequestMapping("/invoices/{id}")
	public String invoices(Model m, @PathVariable long id) {
		Parent parent = repoParent.getOne(id);
		List<Invoice> invoices = repoInvoice.findByParentId(parent.getId());

			m.addAttribute("invoices", invoices);
			return "invoices";
	

	}

}
