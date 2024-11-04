package D20241104.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class OrderListDto {
    private String shopNo;
    private String shopName;
    private String orderNo;
    private String orderDate;
    private String pCode;
    private String pName;
    private int amount;
    private int cost;
    private int consumerPrice;
    private int discountPrice;

}
