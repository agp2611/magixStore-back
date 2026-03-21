package finalproject.poo.service;

import finalproject.poo.exception.*;
import finalproject.poo.model.*;
import finalproject.poo.repository.*;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Service
@RequiredArgsConstructor
public class OrderService {

    private final OrderRepository orderRepository;
    private final ProductRepository productRepository;
    private final CartRepository cartRepository;
    private final CartItemRepository cartItemRepository;

    public List<Order> findByClientId(Long clientId) {
        return orderRepository.findByClientId(clientId);
    }

    public Order findById(Long id) {
        return orderRepository.findById(id).orElseThrow(() -> new OrderNotFoundException());
    }

    public Order checkout(Long clientId) {
        Cart cart = cartRepository.findByClientId(clientId).orElseThrow(() -> new UserNotFoundException());

        if(cart.getItems().isEmpty()) {
            throw new RuntimeException("O carrinho está vazio!");
        }

        Order order = new Order();
        order.setClient(cart.getClient());
        order.setOrderDate(LocalDateTime.now());

        BigDecimal total = BigDecimal.ZERO;

        for(CartItem cartItem : cart.getItems()) {
            Product product = cartItem.getProduct();

            if(product.getStock() < cartItem.getQuantity()) {
                throw new RuntimeException("Produto fora de estoque: " + product.getName());
            }

            product.setStock(product.getStock() - cartItem.getQuantity());
            productRepository.save(product);

            OrderItem orderItem = OrderItem.builder()
                    .order(order)
                    .product(cartItem.getProduct())
                    .quantity(cartItem.getQuantity())
                    .price((cartItem.getProduct().getPrice()))
                    .build();

            order.getItems().add(orderItem);

            BigDecimal itemTotal = cartItem.getProduct()
                    .getPrice()
                    .multiply(BigDecimal.valueOf(cartItem.getQuantity()));

            total = total.add(itemTotal);
        }

        order.setTotal(total);
        Order savedOrder = orderRepository.save(order);
        cartItemRepository.deleteByCart(cart);
        return savedOrder;
    }

}
