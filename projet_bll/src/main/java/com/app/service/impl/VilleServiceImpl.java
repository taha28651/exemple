package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.VilleDao;
import com.app.service.VilleService;
import com.bo.Ville;
@Service
@Transactional
public class VilleServiceImpl implements VilleService{
	@Autowired
	private VilleDao villeDao;

	public List<Ville> findAll() {
		return villeDao.getAll();
	}

	public Ville findVille(Long id) {
		
		return villeDao.findById(id);
	}
	
	

}
