package org.spring.roo.tiendavirtual.web;
import org.spring.roo.tiendavirtual.domain.Cliente;
import org.springframework.roo.addon.web.mvc.controller.annotations.ControllerType;
import org.springframework.roo.addon.web.mvc.controller.annotations.RooController;
import org.springframework.roo.addon.web.mvc.thymeleaf.annotations.RooThymeleaf;

/**
 * = ClientesCollectionThymeleafController
 TODO Auto-generated class documentation
 *
 */
@RooController(entity = Cliente.class, type = ControllerType.COLLECTION)
@RooThymeleaf
public class ClientesCollectionThymeleafController {
}
