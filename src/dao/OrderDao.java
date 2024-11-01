package dao;


import dto.OrderDto;
import dto.OrderListDto;
import dto.ProductListDto;
import dto.ShopOrderListDto;

import java.util.List;

public interface OrderDao {
    public int order(OrderDto order);
    public List<OrderListDto> orderList ();
    public List<ShopOrderListDto> shopOrderList();
    public List<ProductListDto> productList();
}
