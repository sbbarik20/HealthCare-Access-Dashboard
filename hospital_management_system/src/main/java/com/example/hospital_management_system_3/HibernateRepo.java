package com.example.hospital_management_system_3;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HibernateRepo extends JpaRepository<Hibernate, Integer>{
    
}
