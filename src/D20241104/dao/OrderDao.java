package D20241104.dao;


import D20241104.dto.OrderDto;
import D20241104.dto.OrderListDto;
import D20241104.dto.ProductListDto;
import D20241104.dto.ShopOrderListDto;

import java.util.List;

public interface OrderDao {
    public int order(OrderDto order);
    public List<OrderListDto> orderList ();
    public List<ShopOrderListDto> shopOrderList();
    public List<ProductListDto> productList();
}
