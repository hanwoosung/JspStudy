package D20241104.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductListDto {
    private String pCode;
    private String pName;
    private int cost;
    private String  discountTen;
    private String discountFifteen;
}
