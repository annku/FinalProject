package pl.coderslab.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;


import pl.coderslab.entity.Child;


public interface ChildRepository extends JpaRepository<Child,Long>{
	
	
List<Child> findByParentId(Long id);
List<Child> findByActivitiesId(Long id);
}
