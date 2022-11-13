package com.ncdweb.dao;
//import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.ncdweb.entity.Pat;


public interface Repo extends CrudRepository<Pat, Integer> {
	Pat findById(int id);
	Iterable<Pat> findAll();
}
