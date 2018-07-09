// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.spring.roo.tiendavirtual.domain;

import java.util.Objects;
import org.spring.roo.tiendavirtual.domain.LineaPedido;
import org.spring.roo.tiendavirtual.domain.Pedido;
import org.spring.roo.tiendavirtual.domain.Producto;

privileged aspect LineaPedido_Roo_JavaBean {
    
    /**
     * Gets id value
     * 
     * @return Long
     */
    public Long LineaPedido.getId() {
        return this.id;
    }
    
    /**
     * Sets id value
     * 
     * @param id
     * @return LineaPedido
     */
    public LineaPedido LineaPedido.setId(Long id) {
        this.id = id;
        return this;
    }
    
    /**
     * Gets version value
     * 
     * @return Integer
     */
    public Integer LineaPedido.getVersion() {
        return this.version;
    }
    
    /**
     * Sets version value
     * 
     * @param version
     * @return LineaPedido
     */
    public LineaPedido LineaPedido.setVersion(Integer version) {
        this.version = version;
        return this;
    }
    
    /**
     * Gets pedido value
     * 
     * @return Pedido
     */
    public Pedido LineaPedido.getPedido() {
        return this.pedido;
    }
    
    /**
     * Sets pedido value
     * 
     * @param pedido
     * @return LineaPedido
     */
    public LineaPedido LineaPedido.setPedido(Pedido pedido) {
        this.pedido = pedido;
        return this;
    }
    
    /**
     * Gets cantidad value
     * 
     * @return Integer
     */
    public int LineaPedido.getCantidad() {
        return this.cantidad;
    }
    
    /**
     * Sets cantidad value
     * 
     * @param cantidad
     * @return LineaPedido
     */
    public LineaPedido LineaPedido.setCantidad(int cantidad) {
        this.cantidad = cantidad;
        return this;
    }
    
    /**
     * Gets precio value
     * 
     * @return Float
     */
    public Float LineaPedido.getPrecio() {
        return this.precio;
    }
    
    /**
     * Sets precio value
     * 
     * @param precio
     * @return LineaPedido
     */
    public LineaPedido LineaPedido.setPrecio(Float precio) {
        this.precio = precio;
        return this;
    }
    
    /**
     * Gets producto value
     * 
     * @return Producto
     */
    public Producto LineaPedido.getProducto() {
        return this.producto;
    }
    
    /**
     * Sets producto value
     * 
     * @param producto
     * @return LineaPedido
     */
    public LineaPedido LineaPedido.setProducto(Producto producto) {
        this.producto = producto;
        return this;
    }
    
    /**
     * This `equals` implementation is specific for JPA entities and uses 
     * the entity identifier for it, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @param obj
     * @return Boolean
     */
    public boolean LineaPedido.equals(Object obj) {
        if (this == obj) {
            return true;
        }
        // instanceof is false if the instance is null
        if (!(obj instanceof LineaPedido)) {
            return false;
        }
        return getId() != null && Objects.equals(getId(), ((LineaPedido) obj).getId());
    }
    
    /**
     * This `hashCode` implementation is specific for JPA entities and uses a fixed `int` value to be able 
     * to identify the entity in collections after a new id is assigned to the entity, following the article in 
     * https://vladmihalcea.com/2016/06/06/how-to-implement-equals-and-hashcode-using-the-jpa-entity-identifier/
     * 
     * @return Integer
     */
    public int LineaPedido.hashCode() {
        return 31;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String LineaPedido.toString() {
        return "LineaPedido {" + 
                "id='" + id + '\'' + 
                ", version='" + version + '\'' + 
                ", cantidad='" + cantidad + '\'' + 
                ", precio='" + precio + '\'' + "}" + super.toString();
    }
    
}
