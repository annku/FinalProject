package pl.coderslab.repository;

import java.util.Date;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import pl.coderslab.entity.Absence;



public interface AbsenceRepository extends JpaRepository<Absence,Long>{
	
	int countByChildId(Long id);
	List<Absence>findByChildId(Long id);
//	List<Absence>findByChildIdWhereDateBetweenStartAndEnd(Long id, Date start, Date end);
	@Query("select a from Absence a where a.child.id = :id	and a.date between :start and :end")
	List<Absence>findByChildIdWhereDateBetweenStartAndEnd(@Param("id") long id,	@Param("start")	Date start,@Param("end") Date end);


}
