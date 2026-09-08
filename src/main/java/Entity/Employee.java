package Entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@ToString
public class Employee {
    private int id;
    private String name;
    private String dob;
    private String address;

    public Employee(int id, String name, String dob, String address) {
        this.id = id;
        this.name = name;
        this.dob = dob;
        this.address = address;
    }
}
