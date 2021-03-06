// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.spring.roo.tiendavirtual.repository;

import org.spring.roo.tiendavirtual.domain.Producto;
import org.spring.roo.tiendavirtual.repository.ProductoRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ProductoRepository_Roo_Jpa_Repository {
    
    declare @type: ProductoRepository: @Transactional(readOnly = true);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param nombre
     * @param precio
     * @param descripcion
     * @param pageable
     * @return Page
     */
    public abstract Page<Producto> ProductoRepository.findByNombreOrPrecioGreaterThanOrDescripcionContains(String nombre, Float precio, String descripcion, Pageable pageable);
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param nombre
     * @param precio
     * @param descripcion
     * @return Long
     */
    public abstract long ProductoRepository.countByNombreOrPrecioGreaterThanOrDescripcionContains(String nombre, Float precio, String descripcion);
    
}
