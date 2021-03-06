// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.spring.roo.tiendavirtual.service.impl;

import io.springlets.data.domain.GlobalSearch;
import io.springlets.data.web.validation.MessageI18n;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.spring.roo.tiendavirtual.domain.Cliente;
import org.spring.roo.tiendavirtual.domain.LineaPedido;
import org.spring.roo.tiendavirtual.domain.Pedido;
import org.spring.roo.tiendavirtual.repository.PedidoRepository;
import org.spring.roo.tiendavirtual.service.api.LineaPedidoService;
import org.spring.roo.tiendavirtual.service.impl.PedidoServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PedidoServiceImpl_Roo_Service_Impl {
    
    declare @type: PedidoServiceImpl: @Service;
    
    declare @type: PedidoServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PedidoRepository PedidoServiceImpl.pedidoRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private LineaPedidoService PedidoServiceImpl.lineaPedidoService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param pedidoRepository
     * @param lineaPedidoService
     */
    @Autowired
    public PedidoServiceImpl.new(PedidoRepository pedidoRepository, @Lazy LineaPedidoService lineaPedidoService) {
        setPedidoRepository(pedidoRepository);
        setLineaPedidoService(lineaPedidoService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return PedidoRepository
     */
    public PedidoRepository PedidoServiceImpl.getPedidoRepository() {
        return pedidoRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedidoRepository
     */
    public void PedidoServiceImpl.setPedidoRepository(PedidoRepository pedidoRepository) {
        this.pedidoRepository = pedidoRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return LineaPedidoService
     */
    public LineaPedidoService PedidoServiceImpl.getLineaPedidoService() {
        return lineaPedidoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param lineaPedidoService
     */
    public void PedidoServiceImpl.setLineaPedidoService(LineaPedidoService lineaPedidoService) {
        this.lineaPedidoService = lineaPedidoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedido
     * @return Map
     */
    public Map<String, List<MessageI18n>> PedidoServiceImpl.validate(Pedido pedido) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedido
     * @param lineasPedidoToAdd
     * @return Pedido
     */
    @Transactional
    public Pedido PedidoServiceImpl.addToLineasPedido(Pedido pedido, Iterable<Long> lineasPedidoToAdd) {
        List<LineaPedido> lineasPedido = getLineaPedidoService().findAll(lineasPedidoToAdd);
        pedido.addToLineasPedido(lineasPedido);
        return getPedidoRepository().save(pedido);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedido
     * @param lineasPedidoToRemove
     * @return Pedido
     */
    @Transactional
    public Pedido PedidoServiceImpl.removeFromLineasPedido(Pedido pedido, Iterable<Long> lineasPedidoToRemove) {
        List<LineaPedido> lineasPedido = getLineaPedidoService().findAll(lineasPedidoToRemove);
        pedido.removeFromLineasPedido(lineasPedido);
        return getPedidoRepository().save(pedido);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedido
     * @param lineasPedido
     * @return Pedido
     */
    @Transactional
    public Pedido PedidoServiceImpl.setLineasPedido(Pedido pedido, Iterable<Long> lineasPedido) {
        List<LineaPedido> items = getLineaPedidoService().findAll(lineasPedido);
        Set<LineaPedido> currents = pedido.getLineasPedido();
        Set<LineaPedido> toRemove = new HashSet<LineaPedido>();
        for (Iterator<LineaPedido> iterator = currents.iterator(); iterator.hasNext();) {
            LineaPedido nextLineaPedido = iterator.next();
            if (items.contains(nextLineaPedido)) {
                items.remove(nextLineaPedido);
            } else {
                toRemove.add(nextLineaPedido);
            }
        }
        pedido.removeFromLineasPedido(toRemove);
        pedido.addToLineasPedido(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        pedido.setVersion(pedido.getVersion() + 1);
        return getPedidoRepository().save(pedido);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedido
     */
    @Transactional
    public void PedidoServiceImpl.delete(Pedido pedido) {
        // Clear bidirectional many-to-one child relationship with Cliente
        if (pedido.getCliente() != null) {
            pedido.getCliente().getPedidos().remove(pedido);
        }
        
        // Clear bidirectional one-to-many parent relationship with LineaPedido
        for (LineaPedido item : pedido.getLineasPedido()) {
            item.setPedido(null);
        }
        
        getPedidoRepository().delete(pedido);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Pedido> PedidoServiceImpl.save(Iterable<Pedido> entities) {
        return getPedidoRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void PedidoServiceImpl.delete(Iterable<Long> ids) {
        List<Pedido> toDelete = getPedidoRepository().findAll(ids);
        getPedidoRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Pedido
     */
    @Transactional
    public Pedido PedidoServiceImpl.save(Pedido entity) {
        return getPedidoRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param identificadorPedido
     * @return Pedido
     */
    public Pedido PedidoServiceImpl.findOne(Long identificadorPedido) {
        return getPedidoRepository().findOne(identificadorPedido);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param identificadorPedido
     * @return Pedido
     */
    public Pedido PedidoServiceImpl.findOneForUpdate(Long identificadorPedido) {
        return getPedidoRepository().findOneDetached(identificadorPedido);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Pedido> PedidoServiceImpl.findAll(Iterable<Long> ids) {
        return getPedidoRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Pedido> PedidoServiceImpl.findAll() {
        return getPedidoRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long PedidoServiceImpl.count() {
        return getPedidoRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Pedido> PedidoServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getPedidoRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Pedido> PedidoServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getPedidoRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Pedido> PedidoServiceImpl.findByCliente(Cliente cliente, GlobalSearch globalSearch, Pageable pageable) {
        return getPedidoRepository().findByCliente(cliente, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @return Long
     */
    public long PedidoServiceImpl.countByCliente(Cliente cliente) {
        return getPedidoRepository().countByCliente(cliente);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Pedido> PedidoServiceImpl.getEntityType() {
        return Pedido.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> PedidoServiceImpl.getIdType() {
        return Long.class;
    }
    
}
