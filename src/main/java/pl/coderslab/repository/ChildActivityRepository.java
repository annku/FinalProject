package pl.coderslab.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entity.Activity;
import pl.coderslab.entity.ChildActivity;

public interface ChildActivityRepository extends JpaRepository<ChildActivity,Long>{

	List<ChildActivity>findByChildId(Long id);
	ChildActivity findByActivityId(Long id);

}
