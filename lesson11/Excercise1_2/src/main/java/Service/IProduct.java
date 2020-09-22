package Service;

import Model.Product;

import java.util.ArrayList;

public interface IProduct {
    ArrayList<Product> findAll();
    void add(Product product);
    Product findById(int id);
    void edit(int id, String newName, String description);
    void remove(int id);
}
