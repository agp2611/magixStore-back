package finalproject.poo.service;

import finalproject.poo.exception.ProductNotFoundException;
import finalproject.poo.model.Product;
import finalproject.poo.repository.ProductRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ProductService {

    public final ProductRepository productRepository;

    public Product create(Product product) {
        return productRepository.save(product);
    }

    public List<Product> findAll(){
        return productRepository.findByActiveTrue();
    }

    public Product findById(Long id){
        return productRepository.findById(id).orElseThrow(() -> new ProductNotFoundException());
    }

    public Product update(Long id ,Product updateProduct){
        Product product = findById(id);

        product.setName(updateProduct.getName());
        product.setDescription(updateProduct.getDescription());
        product.setStock(updateProduct.getStock());
        product.setImageUrl(updateProduct.getImageUrl());
        product.setPrice(updateProduct.getPrice());

        return productRepository.save(product);
    }

    public void delete(Long id) {
        Product product = productRepository.findById(id)
                .orElseThrow(() -> new ProductNotFoundException());

        product.setActive(false);
        productRepository.save(product);
    }
}