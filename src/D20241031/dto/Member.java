package D20241031.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Member {
    private int mno;
    private String name;
    private String phone;
    private String addr;
    private LocalDate birth;

    public Member(String name, String phone, String addr, LocalDate birth) {
        this.name = name;
        this.phone = phone;
        this.addr = addr;
        this.birth = birth;
    }
}
