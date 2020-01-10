package com.helloflea.helloflea.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.helloflea.helloflea.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer>{

}
