package D20241101.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustmerSalesDto {
    private int custno;
    private String custname;
    private char grade;
    private int sales;
}
