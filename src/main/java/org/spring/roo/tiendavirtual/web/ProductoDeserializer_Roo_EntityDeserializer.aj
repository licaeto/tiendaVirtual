// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.spring.roo.tiendavirtual.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.spring.roo.tiendavirtual.domain.Producto;
import org.spring.roo.tiendavirtual.service.api.ProductoService;
import org.spring.roo.tiendavirtual.web.ProductoDeserializer;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect ProductoDeserializer_Roo_EntityDeserializer {
    
    declare @type: ProductoDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ProductoService
     */
    public ProductoService ProductoDeserializer.getProductoService() {
        return productoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param productoService
     */
    public void ProductoDeserializer.setProductoService(ProductoService productoService) {
        this.productoService = productoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService ProductoDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void ProductoDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Producto
     * @throws IOException
     */
    public Producto ProductoDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long id = conversionService.convert(idText, Long.class);
        Producto producto = productoService.findOne(id);
        if (producto == null) {
            throw new NotFoundException("Producto not found");
        }
        return producto;
    }
    
}
