package com.CaseStudyTemplate.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.CaseStudyTemplate.models.Login;



@Repository
public interface LoginRepository extends JpaRepository<Login, String>{

		Login getLoginByUsername(String username);
}
