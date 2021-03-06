// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.spring.roo.tiendavirtual.service.api;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.spring.roo.tiendavirtual.domain.LineaPedido;
import org.spring.roo.tiendavirtual.domain.Pedido;
import org.spring.roo.tiendavirtual.domain.Producto;
import org.spring.roo.tiendavirtual.service.api.LineaPedidoService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect LineaPedidoService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return LineaPedido
     */
    public abstract LineaPedido LineaPedidoService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lineaPedido
     */
    public abstract void LineaPedidoService.delete(LineaPedido lineaPedido);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<LineaPedido> LineaPedidoService.save(Iterable<LineaPedido> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void LineaPedidoService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return LineaPedido
     */
    public abstract LineaPedido LineaPedidoService.save(LineaPedido entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return LineaPedido
     */
    public abstract LineaPedido LineaPedidoService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<LineaPedido> LineaPedidoService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<LineaPedido> LineaPedidoService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long LineaPedidoService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<LineaPedido> LineaPedidoService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<LineaPedido> LineaPedidoService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedido
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<LineaPedido> LineaPedidoService.findByPedido(Pedido pedido, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param producto
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<LineaPedido> LineaPedidoService.findByProducto(Producto producto, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedido
     * @return Long
     */
    public abstract long LineaPedidoService.countByPedido(Pedido pedido);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param producto
     * @return Long
     */
    public abstract long LineaPedidoService.countByProducto(Producto producto);
    
}
