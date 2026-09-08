package Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Order {
    private int id;
    private int customer_Id;
    private int employee_id;
    private String payment_method;
    private String order_date;
    private String delivery_date;
    private String delivery_address;
    private int quantity;
}
