package org.spring.roo.tiendavirtual.web;
import org.spring.roo.tiendavirtual.domain.Producto;
import org.spring.roo.tiendavirtual.service.api.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.jackson.JsonObjectDeserializer;
import org.springframework.context.annotation.Lazy;
import org.springframework.core.convert.ConversionService;
import org.springframework.roo.addon.web.mvc.controller.annotations.config.RooDeserializer;

/**
 * = ProductoDeserializer
 TODO Auto-generated class documentation
 *
 */
@RooDeserializer(entity = Producto.class)
public class ProductoDeserializer extends JsonObjectDeserializer<Producto> {

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ProductoService productoService;

    /**
     * TODO Auto-generated attribute documentation
     *
     */
    private ConversionService conversionService;

    /**
     * TODO Auto-generated constructor documentation
     *
     * @param productoService
     * @param conversionService
     */
    @Autowired
    public ProductoDeserializer(@Lazy ProductoService productoService, ConversionService conversionService) {
        this.productoService = productoService;
        this.conversionService = conversionService;
    }
}
