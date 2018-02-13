package com.genericdao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.genericdao.api.GenericDao;
import com.genericdao.common.EntityNotFoundException;

/**
 * Classe de base pour tous les DAOs, elle implémente les méthodes CRUD
 * génériques définit par le contrat GenericDAO<T>. Cette implémentation est
 * basée sur HibernateTemplate de Spring
 * 
 * @author <a href="mailto:tarik.boudaa@gmail.com">T.BOUDAA Ecole Nationale des
 *         Sciences Appliquées </a>
 * 
 * @param <T>
 *            le type d'objet métier manipulé
 * @param <PK>
 *            le type utilisé pour l'indentifiant d'un objet métier
 */

public abstract class HibernateSpringGenericDaoImpl<T, PK extends Serializable> implements GenericDao<T, PK> {

	/** Utilisé par tous les DAOs pour tracer les événements */
	protected final Logger TRACER = Logger.getLogger(getClass());

	/** Représente la classe de l'objet métier manipulé */
	private Class<T> persistentClass;

	@Autowired
	private HibernateTemplate hibernateTemplate;

	/**
	 * Constructeur précisant la classe de l'objet métier manipulé
	 * 
	 * @param pPersistentClass
	 *            la classe de l'objet métier manipulé
	 */

	public HibernateSpringGenericDaoImpl(final Class<T> pPersistentClass) {
		TRACER.trace("a DAO has been initialised to handle objects of type  " + persistentClass);
		persistentClass = pPersistentClass;
	}

	public PK create(T pObject) {

		PK id = (PK) hibernateTemplate.save(pObject);
		return id;
	}

	public T createObj(T pObject) {

		getHibernateTemplate().save(pObject);
		return pObject;
	}
	public List<T> getAll(int maxResults) {
		HibernateTemplate ht = getHibernateTemplate();
		ht.setMaxResults(maxResults);

		return ht.loadAll(persistentClass);
	}
	public List<T> getAllDistinct(int maxResult) {
		Collection<T> result = new LinkedHashSet<T>(getAll(maxResult));
		return new ArrayList<T>(result);
	}


	public void update(T pObject) {

		hibernateTemplate.update(pObject);

	}

	public List<T> getAll() {
		return hibernateTemplate.loadAll(persistentClass);
	}

	public void delete(PK pId) throws EntityNotFoundException {

		T lEntity = null;

		lEntity = findById(pId);

		hibernateTemplate.delete(lEntity);
	}

	public boolean exists(PK id) {
		try {
			findById(id);
		} catch (EntityNotFoundException e) {
			return false;
		}

		return true;
	}

	public T findById(PK pId) throws EntityNotFoundException {
		T lEntity = (T) hibernateTemplate.get(this.persistentClass, pId);

		if (lEntity == null) {

			TRACER.trace("an exception EntityNotFoundException : No entity with ID  = " + pId + " is found");
			throw new EntityNotFoundException("The entity with ID  = " + pId + " is not found");
		}

		return lEntity;
	}

	public List<T> getAllDistinct() {

		Collection<T> result = new LinkedHashSet<T>(getAll());
		return new ArrayList<T>(result);

	}

	public List<T> getEntityByColValue(String ClassName, String pColumnName, String pValue) {

		// Une requete HQL simple pour faire la selection
		String HqlQuery = "from " + ClassName + " where " + pColumnName + " = ?";

		List l = hibernateTemplate.find(HqlQuery, pValue);

		// si aucun résultat trouvé
		if (l == null || l.size() == 0) {
			return new ArrayList<T>();
		}

		return l;

	}

	public List<T> getEntityByColValue(String ClassName, String pColumnName, Long pValue) {

		// Une requete HQL simple pour faire la selection
		String HqlQuery = "from " + ClassName + " where " + pColumnName + " = ?";

		List l = hibernateTemplate.find(HqlQuery, pValue);

		if (l == null || l.size() == 0) {
			return new ArrayList<T>();
		}

		return l;

	}
	public List<T> getEntityByColValue2(String ClassName, String pColumnName1, String pValue1, String pColumnName2, String pValue2) {

		// Une requete HQL simple pour faire la selection
		String HqlQuery = "from " + ClassName + " where " + pColumnName1 + " = ?"+ " and " +pColumnName2 + " = ?";

		List l = hibernateTemplate.find(HqlQuery, pValue1, pValue2);
		
		// si aucun résultat trouvé
		if (l == null || l.size() == 0) {
			return new ArrayList<T>();
		}

		return l;

	}
	public T getEntity(String ClassName, String pColumnName1, String pValue1, String pColumnName2, String pValue2) {

		// Une requete HQL simple pour faire la selection
		String HqlQuery = "from " + ClassName + " where " + pColumnName1 + " = ?"+ " and " +pColumnName2 + " = ?";

		T l = (T) hibernateTemplate.find(HqlQuery, pValue1, pValue2);
		
		// si aucun résultat trouvé
		if (l == null) {
			return null;
		}

		return l;

	}
	

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	

}
