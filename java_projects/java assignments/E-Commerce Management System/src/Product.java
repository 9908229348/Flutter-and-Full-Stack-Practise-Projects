public class Product {
    int productId;
    String name;
    String category;
    double price;

    Product(int productId, String name, String category, double price) {
        this.productId = productId;
        this.name = name;
        this.category = category;
        this.price = price;
    }

    public int getProductId() {
        return productId;
    }

    public String getName() {
        return name;
    }

    public String getCategory() {
        return category;
    }

    public double getPrice() {
        return price;
    }

    public void showProductDetails() {
        System.out.println(
                "Product [productId=" + productId + ", name=" + name + ", category=" + category + ", price=" + price
                        + "]");
    }
}
