// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.spring.roo.tiendavirtual.web;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.ObjectCodec;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonNode;
import io.springlets.web.NotFoundException;
import java.io.IOException;
import org.spring.roo.tiendavirtual.domain.Pedido;
import org.spring.roo.tiendavirtual.service.api.PedidoService;
import org.spring.roo.tiendavirtual.web.PedidoDeserializer;
import org.springframework.boot.jackson.JsonComponent;
import org.springframework.core.convert.ConversionService;

privileged aspect PedidoDeserializer_Roo_EntityDeserializer {
    
    declare @type: PedidoDeserializer: @JsonComponent;
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return PedidoService
     */
    public PedidoService PedidoDeserializer.getPedidoService() {
        return pedidoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param pedidoService
     */
    public void PedidoDeserializer.setPedidoService(PedidoService pedidoService) {
        this.pedidoService = pedidoService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return ConversionService
     */
    public ConversionService PedidoDeserializer.getConversionService() {
        return conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param conversionService
     */
    public void PedidoDeserializer.setConversionService(ConversionService conversionService) {
        this.conversionService = conversionService;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param jsonParser
     * @param context
     * @param codec
     * @param tree
     * @return Pedido
     * @throws IOException
     */
    public Pedido PedidoDeserializer.deserializeObject(JsonParser jsonParser, DeserializationContext context, ObjectCodec codec, JsonNode tree) throws IOException {
        String idText = tree.asText();
        Long identificadorPedido = conversionService.convert(idText, Long.class);
        Pedido pedido = pedidoService.findOne(identificadorPedido);
        if (pedido == null) {
            throw new NotFoundException("Pedido not found");
        }
        return pedido;
    }
    
}