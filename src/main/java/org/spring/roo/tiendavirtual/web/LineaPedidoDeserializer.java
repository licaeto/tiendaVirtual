package org.spring.roo.tiendavirtual.web;
import org.spring.roo.tiendavirtual.domain.LineaPedido;
import org.spring.roo.tiendavirtual.service.api.LineaPedidoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = LineaPedidoDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = LineaPedido.class)
public class LineaPedidoDeserializer extends JsonObjectDeserializer<LineaPedido> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private LineaPedidoService lineaPedidoService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param lineaPedidoService
     * @param conversionService
     */
    @Autowired
    public LineaPedidoDeserializer(@Lazy LineaPedidoService lineaPedidoService, ConversionService conversionService) {
        this.lineaPedidoService = lineaPedidoService;
        this.conversionService = conversionService;
    }
}
