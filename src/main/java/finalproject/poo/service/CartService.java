package finalproject.poo.service;

import finalproject.poo.exception.*;
import finalproject.poo.model.*;
import finalproject.poo.repository.*;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
@Transactional
public class CartService {

    private final CartRepository cartRepository;
    private final UserRepository userRepository;
    private final ProductRepository productRepository;
    private final CartItemRepository cartItemRepository;

    public Cart getOrCreateCart(Long clientId) {
        return cartRepository.findByClientId(clientId).orElseGet(() -> {
            Client client = (Client) userRepository.findById(clientId)
                    .orElseThrow(() -> new UserNotFoundException());

            Cart cart = new Cart();
            cart.setId(clientId);

            return cartRepository.save(cart);
        });

    }

    public Cart addProductToCart(Long clientId, Long productId) {
        Cart cart = getOrCreateCart(clientId);
        Product product = productRepository.findById(productId)
                .orElseThrow(() -> new ProductNotFoundException());

        if(product.getStock() <= 0) {
            throw new RuntimeException(("Produto sem estoque"));
        }

        CartItem item = cartItemRepository.findByCartAndProduct(cart, product).orElse(null);

        if(item != null) {
            if(item.getQuantity() > product.getStock()) {
                throw new RuntimeException(("Estoque insuficiente"));
            }
            item.setQuantity(item.getQuantity() + 1);
        } else {
            CartItem newItem = new CartItem();
            newItem.setCart(cart);
            newItem.setProduct(product);
            newItem.setQuantity(1);
            cartItemRepository.save(newItem);

        }

        return cart;
    }

    public void removeProductFromCart(Long cartItemId) {
        if(!cartItemRepository.existsById(cartItemId)) {
            throw new CartItemNotFoundException();
        }
        cartItemRepository.deleteById(cartItemId);
    }

    public void clearCart(Long clientId) {
        Cart cart = cartRepository.findByClientId(clientId).orElseThrow(() -> new UserNotFoundException());
        cartRepository.deleteById(cart.getId());
    }

    public void increaseQuantity(Long cartItemId) {
        CartItem item =  cartItemRepository.findById(cartItemId).orElseThrow(() -> new CartItemNotFoundException());

        if(item.getQuantity() >= item.getProduct().getStock()) {
            throw new RuntimeException(("Estoque insuficiente"));
        }

        item.setQuantity(item.getQuantity() + 1);
        cartItemRepository.save(item);
    }

    public void decreaseQuantity(Long cartItemId) {
        CartItem item =  cartItemRepository.findById(cartItemId).orElseThrow(() -> new CartItemNotFoundException());

        if(item.getQuantity() < 1) {
            item.setQuantity(item.getQuantity() - 1);
        } else {
            cartItemRepository.deleteById(cartItemId);
        }

    }

}
