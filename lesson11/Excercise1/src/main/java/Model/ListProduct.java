package Model;

import java.util.ArrayList;

import java.util.List;

public class ListProduct {
    public static ArrayList<Product> products;

    static {
        products = new ArrayList<Product>();
        products.add(new Product("xeng",1));
        products.add(new Product("cuoc",2));
        products.add(new Product("bua",3));
    }
    public  List<Product> showAll(){
        return products;
    }
    public Product add( Product product){
        return product;
    }
    public static Product findByID (int idFind){
        for (Product pr: products) {
            if (pr.getIdProduct() == idFind){
                return pr;
            }
        }
        return null;
    }
    public static void remove(int idRemove){
        for (Product pr : products) {
            if (pr.getIdProduct()==idRemove){
                products.remove(pr);
                return;
            }
        }
    }
    public static void update(int idProduct,String newName){
        for (Product pr : products) {
            if (pr.getIdProduct()==idProduct){
                pr.setNameProduct(newName);
            }
        }
    }
}
