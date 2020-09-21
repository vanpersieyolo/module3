package Service;

import Model.Product;

import java.util.ArrayList;

public class ProductService implements IProduct {
    public static ArrayList<Product> products ;

    static {
        products = new ArrayList<Product>();
        products.add(new Product(1,"Pickup Truck",null));
        products.add(new Product(2,"sedan",null));
        products.add(new Product(3,"hatback",null));
        products.add(new Product(4,"Couple",null));
        products.add(new Product(5,"SUV",null));
    }
    @Override
    public ArrayList<Product> findAll() {
        return products;
    }

    @Override
    public void add(Product product) {
        products.add(product);
    }

    @Override
    public Product findById(int id) {
        for (Product product : products) {
            if (product.getId() == id){
                return product;
            }
        }
        return null;
    }

    @Override
    public void edit(int id, int newID, String newName,String newDescription) {
        for (Product product: products) {
            if (product.getId()==id){
                product.setId(newID);
                product.setName(newName);
                product.setDescription(newDescription);
            }
        }
    }

    @Override
    public void remove(int id) {
        for (Product product : products) {
            if (product.getId()==id){
                products.remove(product);
                return;
            }
        }
    }
}
