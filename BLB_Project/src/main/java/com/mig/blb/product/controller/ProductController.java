package com.mig.blb.product.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mig.blb.common.model.vo.PageInfo;
import com.mig.blb.common.template.Pagination;
import com.mig.blb.product.model.service.ProductService;
import com.mig.blb.product.model.vo.Product;
import com.mig.blb.product.model.vo.ProductAtt;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;

	// 상품 목록보기 요청
	@GetMapping("list.pr")
	public String selectProductList(@RequestParam(value="ppage", defaultValue="1")int currentPage,
									@RequestParam(value="category", defaultValue="전체제품")String category,
									@RequestParam(value="subcategories", required=false) List<String> subcategories,
									@RequestParam(value="sortBy", defaultValue="recent") String sortBy,
							        @RequestParam(value="boardLimit", defaultValue="12") int boardLimit,
									Model model) {
		// params를 생성하여 전달
        Map<String, Object> params = new HashMap<>();
        params.put("category", category);
        params.put("subcategories", subcategories);
		
		int listCount = productService.selectProductCount(params);
		
		int pageLimit = 5;
		
		PageInfo pi = Pagination.getPageInfo(listCount, currentPage, 
											 pageLimit, boardLimit);
		
		ArrayList<Product> pList = productService.selectProductList(pi, params);
		
		model.addAttribute("pList", pList);
		model.addAttribute("pi", pi);
		model.addAttribute("category", category);
		model.addAttribute("subcategories", subcategories);
	    model.addAttribute("sortBy", sortBy);
	    model.addAttribute("boardLimit", boardLimit);
		
		return "product/productListView";
	}
	
	// 상품 상세보기 요청
	@GetMapping("detail.pr")
	public String selectProduct(@RequestParam(value="pno", defaultValue="1")int pno,
								Model model) {
		
		int count = productService.increaseViewCount(pno);
		
		if(count > 0) {
			
			// 상품정보 상세조회
			Product p = productService.selectProduct(pno);
			
			// 상품 첨부이미지 조회
			ArrayList<ProductAtt> paList = productService.selectProductAtt(pno);
			
			model.addAttribute("p", p);
			model.addAttribute("paList", paList);
			
			return "product/productDetailView";
		} else {
			
			model.addAttribute("errorMsg", "게시글 조회 실패");
			
			return "common/errorPage";
		}
	}
}
