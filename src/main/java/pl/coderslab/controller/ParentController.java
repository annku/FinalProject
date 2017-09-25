package pl.coderslab.controller;

import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	public String register(Model m, HttpServletRequest request) {
		Parent parent=new Parent();
	//	System.out.println("myInvoices");
		HttpSession sess = request.getSession();
	//	System.out.println(sess.getAttribute("parent"));
	
		if (session().getAttribute("parent") != null) {
			parent = (Parent) session().getAttribute("parent");
			List<Invoice> invoices = repoInvoice.findByParentId(parent.getId());
			m.addAttribute("invoices", invoices);
		}

	return "myInvoices";
	}

}
