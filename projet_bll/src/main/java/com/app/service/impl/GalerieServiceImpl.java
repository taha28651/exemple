package com.app.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.app.dao.GalerieDao;
import com.app.service.GalerieService;
import com.bo.Galerie;
@Service
@Transactional
public class GalerieServiceImpl implements GalerieService{
	
	@Autowired
	private GalerieDao galerieDao;

	public List<Galerie> findByVille(Long id) {
		List<Galerie> list=galerieDao.getEntityByColValue("Galerie", "ville", id);
		if (list == null || list.size()==0)
		{
			return null;
		}
		
		return list;
	}

	

	
	

}
