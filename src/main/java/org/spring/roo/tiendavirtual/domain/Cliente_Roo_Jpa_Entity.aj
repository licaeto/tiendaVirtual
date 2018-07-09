// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.spring.roo.tiendavirtual.domain;

import io.springlets.format.EntityFormat;
import javax.persistence.Entity;
import org.spring.roo.tiendavirtual.domain.Cliente;
import org.spring.roo.tiendavirtual.domain.Pedido;
import org.springframework.util.Assert;

privileged aspect Cliente_Roo_Jpa_Entity {
    
    declare @type: Cliente: @Entity;
    
    declare @type: Cliente: @EntityFormat;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Cliente.ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    public static final String Cliente.ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE = "The given Iterable of items to add can't be null!";
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedidosToAdd
     */
    public void Cliente.addToPedidos(Iterable<Pedido> pedidosToAdd) {
        Assert.notNull(pedidosToAdd, ITERABLE_TO_ADD_CANT_BE_NULL_MESSAGE);
        for (Pedido item : pedidosToAdd) {
            this.pedidos.add(item);
            item.setCliente(this);
        }
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedidosToRemove
     */
    public void Cliente.removeFromPedidos(Iterable<Pedido> pedidosToRemove) {
        Assert.notNull(pedidosToRemove, ITERABLE_TO_REMOVE_CANT_BE_NULL_MESSAGE);
        for (Pedido item : pedidosToRemove) {
            this.pedidos.remove(item);
            item.setCliente(null);
        }
    }
    
}
