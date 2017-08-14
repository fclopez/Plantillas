/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fclopez.springcrud.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author flopez
 */
@Entity
@Table(name = "elemento2", catalog = "testmvc", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Elemento2.findAll", query = "SELECT e FROM Elemento2 e")
    , @NamedQuery(name = "Elemento2.findByIdElemento2", query = "SELECT e FROM Elemento2 e WHERE e.idElemento2 = :idElemento2")
    , @NamedQuery(name = "Elemento2.findByNombreElemento", query = "SELECT e FROM Elemento2 e WHERE e.nombreElemento = :nombreElemento")
    , @NamedQuery(name = "Elemento2.findByDetalleElemento", query = "SELECT e FROM Elemento2 e WHERE e.detalleElemento = :detalleElemento")
    , @NamedQuery(name = "Elemento2.findByCantidad", query = "SELECT e FROM Elemento2 e WHERE e.cantidad = :cantidad")})
public class Elemento2 implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idElemento2")
    private Integer idElemento2;
    @Size(max = 45)
    @Column(name = "NombreElemento")
    private String nombreElemento;
    @Size(max = 45)
    @Column(name = "DetalleElemento")
    private String detalleElemento;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Cantidad")
    private int cantidad;

    public Elemento2() {
    }

    public Elemento2(Integer idElemento2) {
        this.idElemento2 = idElemento2;
    }

    public Elemento2(Integer idElemento2, int cantidad) {
        this.idElemento2 = idElemento2;
        this.cantidad = cantidad;
    }

    public Integer getIdElemento2() {
        return idElemento2;
    }

    public void setIdElemento2(Integer idElemento2) {
        this.idElemento2 = idElemento2;
    }

    public String getNombreElemento() {
        return nombreElemento;
    }

    public void setNombreElemento(String nombreElemento) {
        this.nombreElemento = nombreElemento;
    }

    public String getDetalleElemento() {
        return detalleElemento;
    }

    public void setDetalleElemento(String detalleElemento) {
        this.detalleElemento = detalleElemento;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idElemento2 != null ? idElemento2.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Elemento2)) {
            return false;
        }
        Elemento2 other = (Elemento2) object;
        if ((this.idElemento2 == null && other.idElemento2 != null) || (this.idElemento2 != null && !this.idElemento2.equals(other.idElemento2))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.fclopez.springcrud.entities.Elemento2[ idElemento2=" + idElemento2 + " ]";
    }
    
}
