// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.spring.roo.tiendavirtual.web;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.Set;
import org.spring.roo.tiendavirtual.domain.LineaPedido;
import org.spring.roo.tiendavirtual.web.ProductoJsonMixin;

privileged aspect ProductoJsonMixin_Roo_JSONMixin {
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    @JsonIgnore
    private Set<LineaPedido> ProductoJsonMixin.lineasPedido;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<LineaPedido> ProductoJsonMixin.getLineasPedido() {
        return lineasPedido;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lineasPedido
     */
    public void ProductoJsonMixin.setLineasPedido(Set<LineaPedido> lineasPedido) {
        this.lineasPedido = lineasPedido;
    }
    
}