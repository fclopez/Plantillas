/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fclopez.springcrud.repository;

import com.fclopez.springcrud.entities.Elemento2;
import com.fclopez.springcrud.entities.Elemento2_;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.PersistenceContextType;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author flopez
 */
@Repository
@Transactional
public class ElementoRepository {

    @PersistenceContext(type = PersistenceContextType.TRANSACTION)
    private EntityManager em;

    public EntityManager getEm() {
        return em;
    }

    public List<Elemento2> getElementos() {
        CriteriaBuilder cb = getEm().getCriteriaBuilder();
        CriteriaQuery cq = cb.createQuery();
        Root<Elemento2> obj = cq.from(Elemento2.class);

        cq.select(obj);
        List<Elemento2> listaElementos = getEm().createQuery(cq).getResultList();
        return listaElementos;
    }
    
    public Elemento2 getElementoId(int id){
        return getEm().find(Elemento2.class, id); 
    }
    
    public boolean eliminarElemento(int id) {
        try {
            Elemento2 elm = getEm().find(Elemento2.class, id);
            getEm().remove(elm);
            return true;
        } catch (Exception e) {
            return false;
        }
    }
    
    public boolean crearElemento(Elemento2 e){
        try {
            getEm().persist(e); 
            return true;
        } catch (Exception ex) {
            return false;
        }
    
    }
    
    public boolean actualizarElemento(Elemento2 e){
        try {
            getEm().merge(e);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
            

}
