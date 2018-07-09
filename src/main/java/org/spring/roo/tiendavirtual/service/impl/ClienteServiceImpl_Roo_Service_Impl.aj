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
import org.spring.roo.tiendavirtual.domain.Pedido;
import org.spring.roo.tiendavirtual.repository.ClienteRepository;
import org.spring.roo.tiendavirtual.service.api.PedidoService;
import org.spring.roo.tiendavirtual.service.impl.ClienteServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ClienteServiceImpl_Roo_Service_Impl {
    
    declare @type: ClienteServiceImpl: @Service;
    
    declare @type: ClienteServiceImpl: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private ClienteRepository ClienteServiceImpl.clienteRepository;
    
    /**
     * TODO Auto-generated attribute documentation
     * 
     */
    private PedidoService ClienteServiceImpl.pedidoService;
    
    /**
     * TODO Auto-generated constructor documentation
     * 
     * @param clienteRepository
     * @param pedidoService
     */
    @Autowired
    public ClienteServiceImpl.new(ClienteRepository clienteRepository, @Lazy PedidoService pedidoService) {
        setClienteRepository(clienteRepository);
        setPedidoService(pedidoService);
    }

    /**
     * TODO Auto-generated method documentation
     * 
     * @return ClienteRepository
     */
    public ClienteRepository ClienteServiceImpl.getClienteRepository() {
        return clienteRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param clienteRepository
     */
    public void ClienteServiceImpl.setClienteRepository(ClienteRepository clienteRepository) {
        this.clienteRepository = clienteRepository;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PedidoService
     */
    public PedidoService ClienteServiceImpl.getPedidoService() {
        return pedidoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedidoService
     */
    public void ClienteServiceImpl.setPedidoService(PedidoService pedidoService) {
        this.pedidoService = pedidoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @return Map
     */
    public Map<String, List<MessageI18n>> ClienteServiceImpl.validate(Cliente cliente) {
        Map<String, List<MessageI18n>> messages = new java.util.HashMap<String, List<MessageI18n>>();
        
        // TODO: IMPLEMENT HERE THE VALIDATION OF YOUR ENTITY
        
        return messages;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param pedidosToAdd
     * @return Cliente
     */
    @Transactional
    public Cliente ClienteServiceImpl.addToPedidos(Cliente cliente, Iterable<Long> pedidosToAdd) {
        List<Pedido> pedidos = getPedidoService().findAll(pedidosToAdd);
        cliente.addToPedidos(pedidos);
        return getClienteRepository().save(cliente);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param pedidosToRemove
     * @return Cliente
     */
    @Transactional
    public Cliente ClienteServiceImpl.removeFromPedidos(Cliente cliente, Iterable<Long> pedidosToRemove) {
        List<Pedido> pedidos = getPedidoService().findAll(pedidosToRemove);
        cliente.removeFromPedidos(pedidos);
        return getClienteRepository().save(cliente);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param pedidos
     * @return Cliente
     */
    @Transactional
    public Cliente ClienteServiceImpl.setPedidos(Cliente cliente, Iterable<Long> pedidos) {
        List<Pedido> items = getPedidoService().findAll(pedidos);
        Set<Pedido> currents = cliente.getPedidos();
        Set<Pedido> toRemove = new HashSet<Pedido>();
        for (Iterator<Pedido> iterator = currents.iterator(); iterator.hasNext();) {
            Pedido nextPedido = iterator.next();
            if (items.contains(nextPedido)) {
                items.remove(nextPedido);
            } else {
                toRemove.add(nextPedido);
            }
        }
        cliente.removeFromPedidos(toRemove);
        cliente.addToPedidos(items);
        // Force the version update of the parent side to know that the parent has changed
        // because it has new books assigned
        cliente.setVersion(cliente.getVersion() + 1);
        return getClienteRepository().save(cliente);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     */
    @Transactional
    public void ClienteServiceImpl.delete(Cliente cliente) {
        // Clear bidirectional one-to-many parent relationship with Pedido
        for (Pedido item : cliente.getPedidos()) {
            item.setCliente(null);
        }
        
        getClienteRepository().delete(cliente);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    @Transactional
    public List<Cliente> ClienteServiceImpl.save(Iterable<Cliente> entities) {
        return getClienteRepository().save(entities);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    @Transactional
    public void ClienteServiceImpl.delete(Iterable<Long> ids) {
        List<Cliente> toDelete = getClienteRepository().findAll(ids);
        getClienteRepository().deleteInBatch(toDelete);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Cliente
     */
    @Transactional
    public Cliente ClienteServiceImpl.save(Cliente entity) {
        return getClienteRepository().save(entity);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cliente
     */
    public Cliente ClienteServiceImpl.findOne(Long id) {
        return getClienteRepository().findOne(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cliente
     */
    public Cliente ClienteServiceImpl.findOneForUpdate(Long id) {
        return getClienteRepository().findOneDetached(id);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public List<Cliente> ClienteServiceImpl.findAll(Iterable<Long> ids) {
        return getClienteRepository().findAll(ids);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public List<Cliente> ClienteServiceImpl.findAll() {
        return getClienteRepository().findAll();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public long ClienteServiceImpl.count() {
        return getClienteRepository().count();
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cliente> ClienteServiceImpl.findAll(GlobalSearch globalSearch, Pageable pageable) {
        return getClienteRepository().findAll(globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public Page<Cliente> ClienteServiceImpl.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable) {
        return getClienteRepository().findAllByIdsIn(ids, globalSearch, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param username
     * @param email
     * @param pageable
     * @return Page
     */
    public Page<Cliente> ClienteServiceImpl.findByUsernameOrEmail(String username, String email, Pageable pageable) {
        return getClienteRepository().findByUsernameOrEmail(username, email, pageable);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param username
     * @param email
     * @return Long
     */
    public long ClienteServiceImpl.countByUsernameOrEmail(String username, String email) {
        return getClienteRepository().countByUsernameOrEmail(username, email);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Cliente> ClienteServiceImpl.getEntityType() {
        return Cliente.class;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Class
     */
    public Class<Long> ClienteServiceImpl.getIdType() {
        return Long.class;
    }
    
}