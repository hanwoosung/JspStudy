package dao;

import dto.CustmerDto;
import dto.CustmerSalesDto;

import java.util.List;

public interface CustmerDao {
    public int getLastCustNo();
    public Boolean setCust(CustmerDto cust);
    public CustmerDto getCustmer(int custNo);
    public List<CustmerDto> getCustmerList();
    public boolean ModifyCustmer(CustmerDto custmerDto);
    public List<CustmerSalesDto> getCustmerSales();
    public boolean phoneCheck(String phone,int custno);
}
