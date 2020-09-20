package Model;

public class Product {
    private String nameProduct;
    private int idProduct;
    private int quantityProduct;

    public Product(String nameProduct, int idProduct, int quantityProduct) {
        this.nameProduct = nameProduct;
        this.idProduct = idProduct;
        this.quantityProduct = quantityProduct;
    }

    public Product() {
    }

    public String getNameProduct() {
        return nameProduct;
    }

    public void setNameProduct(String nameProduct) {
        this.nameProduct = nameProduct;
    }

    public int getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(int idProduct) {
        this.idProduct = idProduct;
    }

    public int getQuantityProduct() {
        return quantityProduct;
    }

    public void setQuantityProduct(int quantityProduct) {
        this.quantityProduct = quantityProduct;
    }
}
