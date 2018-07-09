package org.spring.roo.tiendavirtual.repository;
import io.springlets.data.jpa.repository.DetachableJpaRepository;
import org.spring.roo.tiendavirtual.domain.Producto;
import org.springframework.roo.addon.layers.repository.jpa.annotations.RooJpaRepository;
import org.springframework.roo.addon.layers.repository.jpa.annotations.finder.RooFinder;

/**
 * = ProductoRepository
 TODO Auto-generated class documentation
 *
 */
@RooJpaRepository(entity = Producto.class, finders = { @RooFinder(value = "findByNombreOrPrecioGreaterThanOrDescripcionContains", returnType = Producto.class) })
public interface ProductoRepository extends DetachableJpaRepository<Producto, Long>, ProductoRepositoryCustom {
}
