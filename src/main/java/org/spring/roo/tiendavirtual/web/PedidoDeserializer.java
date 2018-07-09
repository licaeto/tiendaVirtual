package org.spring.roo.tiendavirtual.web;
import org.spring.roo.tiendavirtual.domain.Pedido;
import org.spring.roo.tiendavirtual.service.api.PedidoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = PedidoDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Pedido.class)
public class PedidoDeserializer extends JsonObjectDeserializer<Pedido> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private PedidoService pedidoService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param pedidoService
     * @param conversionService
     */
    @Autowired
    public PedidoDeserializer(@Lazy PedidoService pedidoService, ConversionService conversionService) {
        this.pedidoService = pedidoService;
        this.conversionService = conversionService;
    }
}
