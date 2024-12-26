package com.mig.blb.order.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mig.blb.cart.model.service.CartService;
import com.mig.blb.cart.model.vo.Cart;
import com.mig.blb.member.model.service.MemberService;
import com.mig.blb.member.model.vo.Delivery;
import com.mig.blb.member.model.vo.Member;
import com.mig.blb.order.model.service.OrderService;
import com.mig.blb.order.model.vo.Order;
import com.mig.blb.order.model.vo.ProductOrder;


@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private CartService cartService;
	
	@Autowired
	private MemberService memberService;

	/**
	 * 주문서 폼 화면 조회
	 * - 예원 24.12.20
	 * @param checkedCartNos
	 * @param session
	 * @param model
	 * @return
	 */
	@PostMapping("orderEnrollForm.or")
	public String orderForm(@RequestParam("checkedCartNos") List<Integer> checkedCartNos,
							HttpSession session,
							Model model) {
		
	    String memberId = ((Member)session.getAttribute("loginUser")).getMemberId();
	    
	    session.setAttribute("checkedCartNos", checkedCartNos);
	    
	    // 장바구니에서 선택된 상품 정보 조회
	    List<Cart> selectedCartList = cartService.getSelectedCartItems(memberId, checkedCartNos);

	    // 저장된 배송 정보 조회
	    List<Delivery> deliveryList = memberService.selectDeliveryList(memberId);
	    
	    Delivery selectedDelivery = null;
	    
	    for (Delivery d : deliveryList) {
	    	
	        if (d.getDeliDefault().equals("Y")) {
	        	
	            selectedDelivery = d; // 기본배송지를 저장
	        } else {
	        	
	            d.setDeliDefault("");
	        }
	    }
	    
	    // 상품 정보와 배송 정보를 모델에 추가
	    model.addAttribute("selectedCartList", selectedCartList);
	    model.addAttribute("deliveryList", deliveryList);
	    model.addAttribute("selectedDelivery", selectedDelivery);

	    return "order/orderEnrollForm"; // 주문서 화면 JSP 경로
	}
	
	/**
	 * 주문서 배송지 선택
	 * - 예원_24.12.20
	 * @param deliCode
	 * @param session
	 * @return
	 */
	@PostMapping("selectDelivery.or")
	@ResponseBody
	public Delivery selectDelivery(@RequestParam("deliCode") int deliCode,
								   HttpSession session) {
		
        // 선택된 배송지 정보 조회
        Delivery selectedDelivery = memberService.selectMemberDelivery(deliCode);
        
        return selectedDelivery;
	}
	
	/**
	 * 주문서 작성/결제
	 * - 예원_24.12.25
	 * @return
	 */
	@ResponseBody
	@PostMapping("payment.or")
	public Map<String, String> orderEnrollForm(@RequestBody Map<String, Object> paymentData,
								  			   HttpSession session) {
		
		// 로그인된 회원아이디 가져오기
		String memberId = ((Member)session.getAttribute("loginUser")).getMemberId();
		
		// 0. 총 상품 가격은 따로 세션에 저장
		session.setAttribute("totalAmt", (String) paymentData.get("totalAmt"));
		session.setAttribute("merchantUid",(String) paymentData.get("merchant_uid"));
		
		// 세션에서 전달받은 checkedCartNos
//	    List<Integer> checkedCartNos = (List<Integer>) paymentData.get("checkedCartNos");

	    // 기타 처리 로직...
//	    System.out.println("Checked Cart Nos: " + checkedCartNos);
		
		// 1. ORDER 테이블에 데이터 넣기
		Order order = new Order();
	    order.setRcvrName((String) paymentData.get("rcvrName"));
	    order.setRcvrPhone((String) paymentData.get("rcvrPhone"));
	    order.setRcvrAddress((String) paymentData.get("rcvrAddress"));
	    order.setDlvrFee((Integer) paymentData.get("dlvrFee"));
	    order.setDlvrReqMessage((String) paymentData.get("dlvrReqMessage"));
	    order.setPaymentMethod((String) paymentData.get("paymentMethod"));
	    order.setOrderTotalAmt((Integer) paymentData.get("orderTotalAmt"));
	    order.setMemberId(memberId);
	    
		int result1 = orderService.insertOrder(order);
		
		Map<String, String> response = new HashMap<>();
		if(result1 < 1) {
			
			response.put("message", "주문 실패.");
		}
		
		// 2. TB_ORDER 테이블에서 채번한 ORDER_NO 가져오기
		int orderNo = orderService.selectOrderNo();
		order.setOrderNo(String.valueOf(orderNo));  // String으로 변환 후 Order 객체에 설정
		
		// 3. PRODUCT_ORDER에 데이터 넣기
	    List<Map<String, Object>> productList = (List<Map<String, Object>>) paymentData.get("products");
	    // > products 데이터 추출
	    List<ProductOrder> productOrders = new ArrayList<>();

	    for (Map<String, Object> product : productList) {
	        
	        ProductOrder productOrder = new ProductOrder();
	        productOrder.setOrderQty((Integer)product.get("orderQty"));
	        productOrder.setTotalAmt((Integer)product.get("totalAmt"));
	        productOrder.setOptNo((Integer)product.get("optNo"));
	        productOrder.setOrderNo(orderNo); // String 타입
	        
	        // productOrder 추가
	        productOrders.add(productOrder);
	    }
	    
	    int result2 = orderService.insertProductOrder(productOrders);
	        
        if (result2 < productOrders.size()) {	// 삽입된 행 수와 리스트 크기 비교
        	
            response.put("message", "상품 데이터 삽입 실패.");
            return response;
        }
        
	    response.put("status", "success");
	    return response;
	}
	
	// 결제 완료
	@GetMapping("orderComplete.or")
	public String updateOrderSuccess(@RequestParam("paymentCode") String merchantUid,
									 HttpSession session,
									 Model model,
									 Order order) {
		
		// 1. TB_ORDER 테이블에서 채번한 ORDER_NO 가져오기
	    int orderNoInt = orderService.selectOrderNo(); // selectOrderNo()는 int 반환
	    String orderNo = String.valueOf(orderNoInt);  // int를 String으로 변환
		
	    // 2. 결제 코드 업데이트
	    int result1 = orderService.updateOrderStatus(merchantUid, orderNo);
	    
	    if(result1 < 1) {
	    	
	    	model.addAttribute("errorMsg", "주문 상태 업데이트 실패");
	    	model.addAttribute("merchantUid", merchantUid);
	        return "common/errorPage";
	    }

	    // 3. 장바구니에서 결제된 상품 삭제
//	    session.getAttribute(checkedCartNos);
//	    int result2 = cartService.deleteSelectedCartItems(checkedCartNos);
//
//	    Map<String, String> response = new HashMap<>();
//	    if (updateResult && deleteCartResult) {
//	        response.put("status", "success");
//	        response.put("message", "주문이 완료되었습니다.");
//	    } else {
//	        response.put("status", "fail");
//	        response.put("message", "주문 완료 처리 중 오류가 발생했습니다.");
//	    }
	    
	    
	    // 마지막. order 객체에 담아서 조회
	    Order o = orderService.selectOrderComplete(orderNo);
	    
	    model.addAttribute("order", o);
	    
	    return "order/orderCompleteView";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 4. ORDER, PRODUCT_ORDER에서 주문 정보 가져오기
	//	order = orderService.selectOrder(orderNo);
	//	
	//	if(order == null) {
	//		
	//		model.addAttribute("errorMsg", "주문 정보를 찾을 수 없습니다.");
	//		return "common/errorPage";
	//	}
	//	
	//	List<ProductOrder> productOrderList = orderService.selectProductOrderList(orderNo);
	//	
	//	System.out.println(productOrderList);
	//	
	//	// 4. 조회된 정보를 뷰로 전달
	//    model.addAttribute("order", order);
	//    model.addAttribute("productOrderList", productOrderList);
		
		// 결제 확인 로직 추가 (예: 아임포트 서버와 통신)
	
	
}
