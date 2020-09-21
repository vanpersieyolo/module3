package Model;

public class Product {
    private String nameProduct;
    private int idProduct;

    public Product(String nameProduct, int idProduct) {
        this.nameProduct = nameProduct;
        this.idProduct = idProduct;
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
}
