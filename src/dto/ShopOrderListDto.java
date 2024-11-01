package dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShopOrderListDto {
    private String shopNo;
    private String pCode;
    private String pName;
    private int amount;

}
