package dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderDto {
    private String orderNo;
    private String shopNo;
    private String orderDate;
    private String pCode;
    private int amount;
}
