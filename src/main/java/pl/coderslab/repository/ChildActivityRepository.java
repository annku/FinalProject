package pl.coderslab.repository;


import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import pl.coderslab.entity.ChildActivity;

public interface ChildActivityRepository extends JpaRepository<ChildActivity,Long>{

	List<ChildActivity>findByChildId(Long id);
	List<ChildActivity> findByActivityId(Long id);
	@Query("select a from ChildActivity a where a.child.id = :id1 and a.activity.id= :id2 and a.endDate between :start and :end")
	List<ChildActivity> findByChildIdWhereActivityId(@Param("id1") long id1, @Param("id2") long id2, @Param("start") Date start,@Param("end") Date end);
	

}
