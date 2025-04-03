public class CartItem {
    Product product;
    int quantity;

    public CartItem(Product product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public Product getProduct() {
        return product;
    }

    public int getQuantity() {
        return quantity;
    }

    public double getTotalPrice() {
        return (product.price) * quantity;
    }

    public void showCartItem() {
        product.showProductDetails();
        System.out.println("quantity : " + quantity + " TotalPrice : " + getTotalPrice());
    }
}
