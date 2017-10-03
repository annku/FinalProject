package pl.coderslab.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import pl.coderslab.entity.Absence;



public interface AbsenceRepository extends JpaRepository<Absence,Long>{
	
	int countByChildId(Long id);
	List<Absence>findByChildId(Long id);
	


}
