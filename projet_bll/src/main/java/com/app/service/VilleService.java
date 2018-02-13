package com.app.service;

import java.util.List;

import com.bo.Ville;

public interface VilleService {
	public List<Ville> findAll();
	public Ville findVille(Long id);
	

}
