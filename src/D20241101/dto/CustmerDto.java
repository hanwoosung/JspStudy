package D20241101.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CustmerDto {
    private int custno;
    private String custname;
    private String phone;
    private String address;
    private LocalDate joinDate;
    private char grade;
    private char city;

}
