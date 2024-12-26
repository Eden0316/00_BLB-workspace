package com.mig.blb.order.model.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestParam;

import com.mig.blb.common.model.vo.PageInfo;
import com.mig.blb.order.model.vo.Order;
import com.mig.blb.order.model.vo.ProductOrder;

public interface OrderService {

	// 주문서 작성/결제
	int insertOrder(Order o);
	
	// 마이페이지용 주문, 배송 게시글 수
	int myOrderListCount(HashMap<String, Object> dateMap);
	
	// 마이페이지용 주문,배송상태 갯수 조회
	HashMap<String, Integer> myOrderCounts(String memberId);
	
	// 마이페이지용 내 주문,배송 목록조회 
	ArrayList<Order> selectAllMyOrders(HashMap<String, Object> dateMap);

	// TB_ORDER 테이블에서 채번한 ORDER_NO 조회
	int selectOrderNo();

	// PRODUCT_ORDER 테이블에 데이터 넣기
	int insertProductOrder(List<ProductOrder> productOrders);

	// ORDER, PRODUCT_ORDER에서 주문 정보 가져오기
	// ORDER
	Order selectOrder(int orderNo);
	// PRODUCT_ORDER
	List<ProductOrder> selectProductOrderList(int orderNo);

	// 내 주문,배송 상세조회
	ArrayList<Order> selectMyOrder(String orderNo);

	// 결제 완료
	// 결제 고유 번호 업데이트
	int updateOrderStatus(String merchantUid, String orderNo);

	// 주문 성공 조회
	Order selectOrderComplete(String orderNo);
	
	
}
