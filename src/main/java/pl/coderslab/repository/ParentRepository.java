package pl.coderslab.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.coderslab.entity.Child;
import pl.coderslab.entity.Parent;

public interface ParentRepository extends JpaRepository<Parent,Long>{

	Parent findByLogin(String login);
	

}
