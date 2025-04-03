import java.util.ArrayList;
import java.util.Scanner;

public class ECommerceApplication {
    static ArrayList<Product> productList = new ArrayList<Product>();
    static ArrayList<CartItem> cart = new ArrayList<CartItem>();

    static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("E-Commerce Application");
        boolean check = true;
        while (check) {
            System.out.println(
                    "Please select\n1.Add Product\n2.View All Products\n3.Search Product By Id\n4.Add To Cart\n5.View cart\n6.Checkout\n7.Exit the application");
            int choice = scanner.nextInt();
            scanner.nextLine();
            switch (choice) {
                case 1:
                    Product product = createProductWithDetails();
                    productList.add(product);
                    System.out.println("Product added successfully");

                    break;
                case 2:
                    if (productList.isEmpty()) {
                        System.out.println("No Products Added. Please add Products");
                    } else {
                        for (int i = 0; i < productList.size(); i++) {
                            Product currentProduct = productList.get(i);
                            currentProduct.showProductDetails();
                        }
                    }
                    break;
                case 3:
                    System.out.println("Enter product id you are searching for");
                    int searchingProductId = scanner.nextInt();
                    scanner.nextLine();
                    int productIndex = searchProductByIdReturnIndex(searchingProductId);
                    if (productIndex == -1) {
                        System.out.println("There is no product with id " + searchingProductId);
                    } else {
                        productList.get(productIndex).showProductDetails();
                    }
                    break;
                case 4:
                    System.out.println("Enter Product Id you want to add");
                    int productId = scanner.nextInt();
                    scanner.nextLine();
                    int searchedProductIndex = searchProductByIdReturnIndex(productId);
                    if (searchedProductIndex != -1) {
                        Product cartProduct = productList.get(searchedProductIndex);
                        System.out.println("Enter quantity");
                        int quantity = scanner.nextInt();
                        scanner.nextLine();
                        cart.add(new CartItem(cartProduct, quantity));
                        System.out.println("Added to cart successfully");
                    } else {
                        System.out.println("There is no product matching with entered Id");
                    }
                    break;
                case 5:
                    if (cart.isEmpty()) {
                        System.out.println("No Products Added to Cart. Please add Products");
                    } else {
                        showCart();
                    }
                    break;
                case 6:
                    if (cart.isEmpty()) {
                        System.out.println("No Products Added to Cart.");
                    } else {
                        showCart();
                        double totalAmount = 0;
                        for (int i = 0; i < cart.size(); i++) {
                            totalAmount = totalAmount + (cart.get(i).getTotalPrice());
                        }
                        System.out.println("Total Amount : " + totalAmount);
                        cart.clear();
                    }
                    break;
                case 7:
                    check = false;
                    break;
                default:
                    System.out.println("Please enter a valid choice");
                    break;
            }
        }
    }

    static Product createProductWithDetails() {
        System.out.println("Enter Product Id");
        int productId = scanner.nextInt();
        scanner.nextLine();
        System.out.println("Enter Product Name");
        String productName = scanner.nextLine();
        System.out.println("Enter Category");
        String category = scanner.nextLine();
        System.out.println("Enter Product Price");
        double price = scanner.nextDouble();
        Product product = new Product(productId, productName, category, price);
        return product;
    }

    static int searchProductByIdReturnIndex(int id) {
        int productIndex = -1;
        for (int i = 0; i < productList.size(); i++) {
            Product currentProduct = productList.get(i);
            if (id == currentProduct.productId) {
                productIndex = i;
            }
        }
        return productIndex;
    }

    static void showCart() {
        for (int i = 0; i < cart.size(); i++) {
            CartItem cartItem = cart.get(i);
            cartItem.showCartItem();
        }
    }
}