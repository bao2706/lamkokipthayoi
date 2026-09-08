package Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import java.lang.String;
@Data
@NoArgsConstructor
@ToString
public class Product {
    private int id;
    private String name;
    private int price;
    private int discount;
    private int stock;

    public Product(int id, String name, int price, int discount, int stock) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.discount = discount;
        this.stock = stock;
    }
}
