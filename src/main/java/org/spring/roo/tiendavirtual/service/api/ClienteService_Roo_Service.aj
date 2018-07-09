// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.spring.roo.tiendavirtual.service.api;

import io.springlets.data.domain.GlobalSearch;
import java.util.List;
import org.spring.roo.tiendavirtual.domain.Cliente;
import org.spring.roo.tiendavirtual.service.api.ClienteService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

privileged aspect ClienteService_Roo_Service {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cliente
     */
    public abstract Cliente ClienteService.findOne(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     */
    public abstract void ClienteService.delete(Cliente cliente);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entities
     * @return List
     */
    public abstract List<Cliente> ClienteService.save(Iterable<Cliente> entities);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     */
    public abstract void ClienteService.delete(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param entity
     * @return Cliente
     */
    public abstract Cliente ClienteService.save(Cliente entity);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param id
     * @return Cliente
     */
    public abstract Cliente ClienteService.findOneForUpdate(Long id);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @return List
     */
    public abstract List<Cliente> ClienteService.findAll(Iterable<Long> ids);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return List
     */
    public abstract List<Cliente> ClienteService.findAll();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public abstract long ClienteService.count();
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Cliente> ClienteService.findAll(GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param ids
     * @param globalSearch
     * @param pageable
     * @return Page
     */
    public abstract Page<Cliente> ClienteService.findAllByIdsIn(List<Long> ids, GlobalSearch globalSearch, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param pedidosToAdd
     * @return Cliente
     */
    public abstract Cliente ClienteService.addToPedidos(Cliente cliente, Iterable<Long> pedidosToAdd);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param pedidosToRemove
     * @return Cliente
     */
    public abstract Cliente ClienteService.removeFromPedidos(Cliente cliente, Iterable<Long> pedidosToRemove);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param cliente
     * @param pedidos
     * @return Cliente
     */
    public abstract Cliente ClienteService.setPedidos(Cliente cliente, Iterable<Long> pedidos);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param username
     * @param email
     * @param pageable
     * @return Page
     */
    public abstract Page<Cliente> ClienteService.findByUsernameOrEmail(String username, String email, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param username
     * @param email
     * @return Long
     */
    public abstract long ClienteService.countByUsernameOrEmail(String username, String email);
    
}
