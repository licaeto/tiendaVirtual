package org.spring.roo.tiendavirtual.web;
import io.springlets.web.mvc.util.concurrency.ConcurrencyManager;
import org.spring.roo.tiendavirtual.domain.Producto;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ProductoesItemThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Producto.class, type = ControllerType.ITEM)
@RooThymeleaf
public class ProductoesItemThymeleafController implements ConcurrencyManager<Producto> {
}
