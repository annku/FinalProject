package pl.coderslab.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entity.Absence;
import pl.coderslab.entity.Activity;
import pl.coderslab.entity.Child;


public interface ActivityRepository extends JpaRepository<Activity,Long>{
	
	List<Activity>findByChildrenId(Long Id);
	



	
}
