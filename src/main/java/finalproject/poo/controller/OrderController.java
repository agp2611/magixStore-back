package finalproject.poo.controller;


import finalproject.poo.model.Order;
import finalproject.poo.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/orders")
@RequiredArgsConstructor
public class OrderController {

    private final OrderService orderService;

    @PostMapping("/checkout/{clientId}")
    public Order checkout(@PathVariable Long clientId) {
        return orderService.checkout(clientId);
    }

    @GetMapping("/client/{clientId}")
    public List<Order> getOrders(@PathVariable Long clientId) {
        return orderService.findByClientId(clientId);
    }

    @GetMapping("/{id}")
    public Order getOrder(@PathVariable Long orderId) {
        return orderService.findById(orderId);
    }
}
