package pl.coderslab.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import pl.coderslab.entity.Invoice;


public interface InvoiceRepository extends JpaRepository<Invoice,Long>{
	
	List<Invoice>findByParentId(Long id);
}
