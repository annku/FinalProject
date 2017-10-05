package pl.coderslab.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import pl.coderslab.entity.Activity;



public interface ActivityRepository extends JpaRepository<Activity,Long>{
	
	List<Activity>findByChildrenId(Long Id);
	



	
}
