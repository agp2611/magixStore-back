package finalproject.poo.controller;


import finalproject.poo.model.Cart;
import finalproject.poo.service.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/cart")
@RequiredArgsConstructor
public class CartController {

    private final CartService cartService;

    @PostMapping("/{clientId}/add/{productId}")
    public synchronized Cart addProduct(@PathVariable Long clientId, @PathVariable Long productId) {
        return cartService.addProductToCart(clientId, productId);
    }

    @GetMapping("/{clientId}")
    public synchronized Cart getCart(@PathVariable Long clientId) {
        return cartService.getOrCreateCart(clientId);
    }

    @PutMapping("/increase/{cartItemId}")
    public void increaseQuantity(@PathVariable Long cartItemId) {
        cartService.increaseQuantity(cartItemId);
    }

    @PutMapping("/decrease/{cartItemId}")
    public void decreaseQuantity(@PathVariable Long cartItemId) {
        cartService.decreaseQuantity(cartItemId);
    }

    @DeleteMapping("/item/{cartItemId}")
    public void deleteCartItem(@PathVariable Long cartItemId) {
        cartService.removeProductFromCart(cartItemId);
    }

    @DeleteMapping("/clear/{clientId}")
    public void clearCart(@PathVariable Long clientId){
        cartService.clearCart(clientId);
    }
}
