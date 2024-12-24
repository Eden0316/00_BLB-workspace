$(function() {

    // 모든 select 요소에 대해 처리
    $("#deliSelect").each(function() {
        
        // 선택된 배송지 배송코드드
        const deliCode = parseInt($(this).val());

        // select 내부의 모든 option 요소 탐색
        $(this).find("option").each(function() {

            const $option = $(this); // 현재 option 요소
            const optionValue = parseInt($option.val()); // option의 value 값
    
            // cart-optno와 option의 value가 같으면 selected 속성 추가
            if (deliCode === optionValue) {

                $option.prop("selected", true); // 선택 처리
                $option.css("background-color", "#e0e0e0")
            }
        });

        // deliCode가 비어있으면 경고 메시지
        if (!deliCode) {
            alert('배송지를 선택해주세요.');
            return;
        }

        // 드롭다운 변경 시 이벤트 처리
        $('#deliSelect').on('change', function () {
            const deliCode = $(this).val();

            $.ajax({
                url: 'selectDelivery.or', // 컨트롤러 매핑 주소
                type: 'POST',
                data: { deliCode: deliCode },
                success: function (response) {
                    if (response) {
                        // 값 업데이트
                        $('#deliCode').val(response.deliCode);
                        $('#rcvrName').val(response.deliName);
                        $('#dlvrPostCode').val(response.postcode);
                        $('#rcvrAddress').val(response.deliAddress);
                        $('#rcvrDetailAddress').val(response.detailAddress);
    
                        const phone = response.deliPhone;
                        if (phone) {
                            $('#phone-prefix').val(phone.substring(0, 3));
                            $('#phone-middle').val(phone.substring(3, 7));
                            $('#phone-last').val(phone.substring(7));
                        }
    
                        $('#additionalInfo').val(response.deliComment);
                    } else {
                        alert('배송지 정보를 가져오는 데 실패했습니다.');
                    }
                },
                error: function () {
                    alert('배송지 정보를 가져오는 중 오류가 발생했습니다.');
                }
            });
        });
    });

    // 배송 상세 요청 시 textarea
    // 새로고침 시 기본 상태에서도 숨겨지게 설정
    if ($("#delivery-message").val() !== "custom") {
        $("#custom-comment").hide(); // 기본 옵션 또는 다른 옵션 선택 시 textarea 숨김
    }
    
    // select 요소의 change 이벤트 처리
    $("#delivery-message").on("change", function () {

        // 선택된 값이 "custom"인지 확인
        if ($(this).val() === "custom") {
            $("#custom-comment").show(); // 직접 입력 시 textarea 표시
        } else {
            $("#custom-comment").hide(); // 다른 옵션 선택 시 숨김
        }
    });

    // 결제 수단 전역 변수로 쓰기 위함함
    let payOption;

    // 결제 옵션 선택 이벤트
    $(".payment-option").on("click", function () {
        
        $(".payment-option").removeClass("selected");   // 모든 옵션에서 selected 제거
        $(this).addClass("selected");   // 클릭된 옵션에 seleceted 클래스 추가가

        payOption = $(this).data("value");  // 클릭된 옵션의 value
    
        // 결제수단 선택 시 나오는 안내 문구 세팅
        const payComment = {
            "무통장입금": "현금 영수증 발생 여부를 선택해 주세요.",
            "신용카드": "소액 결제의 경우 PG사 정책에 따라 결제 금액 제한이 있을 수 있습니다.",
            "카카오페이": "카카오톡 앱을 설치한 후, 최초 1회 카드정보를 등록하셔야 사용 가능합니다. <br> 인터넷 익스플로러는 8 이상에서만 결제 가능합니다. <br> 카카오머니로 결제 시, 현금영수증 발급은 ㈜카카오페이에서 발급 가능합니다."
        };
    
        $("#payment-comment").html(payComment[payOption] || "결제 수단을 선택해주세요.");
            
        if (payOption === "무통장입금") {
            $("#bank-info").show(); // 무통장입금 입력 필드 표시
        } else {
            $("#bank-info").hide(); // 무통장입금 입력 필드 숨기기
        }
    });

    // 약관 동의 체크박스
    // 모든 약관 동의
    $("#check-all").on("change", function () {

        const isChecked = $(this).is(":checked");
        $(".check-term").prop("checked", isChecked); // 모든 개별 체크박스 체크/해제
    });

    // 개별 약관 체크박스 클릭 이벤트
    $(".check-term").on("change", function () {
        
        const total = $(".check-term").length; // 전체 약관 개수
        const checked = $(".check-term:checked").length; // 체크된 약관 개수

        // 모든 약관이 체크되면 "모든 약관 동의"도 체크, 아니면 해제
        $("#check-all").prop("checked", total === checked);
    });

    // 전화번호 분리해서 출력하기
    // > 숨겨진 전체 전화번호에서 값 가져오기
    const phoneNumber = $("#hidden-phone-number").val(); // 숨겨진 input에서 값 가져오기

    if (phoneNumber) {
        // 전화번호를 직접 분리
        const phonePrefix = phoneNumber.substring(0, 3); // 앞자리
        const middle = phoneNumber.substring(3, 7); // 중간 4자리
        const last = phoneNumber.substring(7); // 마지막 4자리

        // select 및 input 요소에 값 설정
        $("#phone-prefix").val(phonePrefix); // 앞자리 설정
        $("#phone-middle").val(middle); // 중간자리 설정
        $("#phone-last").val(last); // 마지막자리 설정
    }

    // 최종 총합 가격 계산
    function calculateTotalPrice() {
        let totalPrice = 0; // 모든 상품 가격의 총합을 저장할 변수

        // 판매가 계산을 위한 상품 가격
        $('.order-product').each(function () {
            // 장바구니 번호
            const cartNo = $(this).data('cart-no');

            // 상품 가격 텍스트에서 숫자만 추출
            let prodPriceText = $(`.product-price-${cartNo}`).text().replace(/[^0-9]/g, ""); // 숫자가 아닌 모든 문자를 제거
            let prodPrice = parseInt(prodPriceText, 10); // 숫자로 변환

            // 수량 가져오기
            let cartQtyText = $(`.product-quantity-${cartNo}`).text().replace(/[^0-9]/g, "");
            let cartQty = parseInt(cartQtyText, 10);

            // 구매가 계산
            let prodOrderPrice = prodPrice * cartQty;

            // 구매가 DOM 업데이트
            $(`.product-order-price-${cartNo}`)
                .text(`구매가: ${prodOrderPrice.toLocaleString()}원`)
                .css({
                    "font-size": "16px",  // 텍스트 크기
                    "font-weight": "bold" // 텍스트 굵기
                });

            // 총 가격에 추가
            totalPrice += prodOrderPrice;
        });

        // 최종 총합 가격 DOM 업데이트
        $('.final-order-price').text(`총 합계 ${totalPrice.toLocaleString()}원`);
    }

    // 초기 계산 수행
    calculateTotalPrice();

    // 이벤트로 다시 계산 (예: 삭제 버튼 클릭 시)
    $('.delete-button').on('click', function () {
        
        // 다음 hr 요소 삭제
        $(this).closest('.order-product').next('hr').remove(); // 다음 hr 요소 삭제
        // 해당 상품 삭제 처리
        $(this).closest('.order-product').remove();

        // 총합 다시 계산
        calculateTotalPrice();
    });




    // 배송비
    // let dlvrFee = totalAmt <= 50000 ? 3000 : 0;

    // $("#dlvr-fee").text(`${dlvrFee.toLocaleString()}원`);

    // 결제 예상 금액
    // let finalTotal = (totalAmt + dlvrFee);

    // console.log("결제 예상 금액 : " + finalTotal);

    // $('.final-price span').text(`${finalTotal.toLocaleString()}`);
    // $('.final-order-price').text(`${finalTotal.toLocaleString()}`);
    

    // 배송지 요청 사항
    $('input[name="entry"]').on('change', function() {

        var selectedValue = $(this).val();
        
        switch (selectedValue) {

            case '비밀번호':
                placeholderText = "공동현관 비밀번호를 입력하세요";
                break;
            case '경비실호출':
                placeholderText = "경비실 호출 방법을 입력하세요";
                break;
            case '자유출입가능':
                placeholderText = "추가 요청사항을 입력하세요";
                break;
            case '기타사항':
                placeholderText = "기타 상세 내용을 입력하세요";
                break;
        }

        $('#additionalInfo').attr('placeholder', placeholderText);
    });

    // 입력 받은 배송 요청들 하나로 합치기
    $('#enrollDeliForm').on('submit', function(event) {
        var entryInfo1 = $('input[name="entry"]:checked').val();
        var entryInfo2 = $('#additionalInfo').val();
        var fullComment = entryInfo1 + '/' + entryInfo2;
        
        $('#deliComment').val(fullComment);
    });

    // 결제하기 버튼 클릭 이벤트
    $('.payment-button').on('click', function(event) {

        event.preventDefault(); // 폼 기본 제출 동작 방지

        const orderNo = $("#orderNo").val(); // 주문 No
        const totalAmount = $("#total-amt").text().replace(/[^0-9]/g, ""); // 결제 금액

        var productData = [];
    
        // 각 상품의 데이터를 배열에 저장
        $('.order-product').each(function() {
            var productName = $(this).find('.product-title').text().trim();
            var productOption = $(this).find('.product-option').text().trim();
            var productQuantity = $(this).find('.product-quantity').text().replace(/[^0-9]/g, "");
            var productPrice = $(this).find('.product-price').text().replace(/[^0-9]/g, "");
    
            // 상품 데이터를 객체로 저장
            productData.push({
                name: productName,
                option: productOption,
                quantity: parseInt(productQuantity),
                price: parseInt(productPrice)
            });
        });

        // if (payOption === '카카오페이') {
        //     // 카카오페이 결제 요청
        //     $.ajax({
        //         url: 'v1/payment/ready', // 서버의 카카오페이 결제 준비 API 엔드포인트
        //         method: 'POST',
        //         contentType: 'application/json',
        //         headers: {
        //             'Authorization': 'DEV7F8D16F135E2B2B199BDF7E690CB3BF9CC676' // 적절한 토큰 추가
        //         },
        //         data: JSON.stringify({
        //             orderId: $('#orderId').val(), // 예: hidden 필드에서 가져오는 주문 ID
        //             totalAmount: $('#total-amt').text().replace(',', ''), // 총 금액
        //             items: productData // 상품 데이터
        //         }),
        //         success: function(response) {
        //             if (response && response.next_redirect_pc_url) {
        //                 // 카카오페이 결제 페이지로 이동
        //                 window.location.href = response.next_redirect_pc_url;
        //             } else {
        //                 alert('카카오페이 결제를 준비하는 중 오류가 발생했습니다.');
        //             }
        //         },
        //         error: function(xhr, status, error) {
        //             console.error('카카오페이 API 요청 오류:', error);
        //             alert('결제 요청 중 오류가 발생했습니다. 다시 시도해주세요.');
        //         }
        //     });
        // } else 
        if(payOption === '신용카드') {
            // 나이스페이 결제 요청

            console.log("넘어가냐?");

            // NicePay Server Auth Payment
            AUTHNICE.requestPay({
                clientId: 'S2_af4543a0be4d49a98122e01ec2059a56',
                method: 'card',
                orderId: '634d6c22-9aff-43cb-b9b0-d56ce72484be',
                amount: 1004,
                goodsName: '나이스페이-상품',
                returnUrl: 'http://localhost:3000/serverAuth', // API를 호출할 Endpoint 입력
                fnError: function (result) {
                    alert('개발자확인용 : ' + result.errorMsg);
                }
            });
        } else if (payOption) {
            alert(`${payOption} 결제는 아직 구현되지 않았습니다.`);
        } else {
            alert('결제 수단을 선택해주세요.');
        }
    });

    // 페이지 로딩 시에도 결제하기 버튼 비활성화
    const allChecked = $('.check-term').length === $('.check-term:checked').length;
    $('.payment-button').prop('disabled', !allChecked);

    // 약관 동의 체크박스 관련 이벤트
    $('#check-all, .check-term').on('change', function () {
        const allChecked = $('.check-term').length === $('.check-term:checked').length;
        const isCheckAll = $('#check-all').prop('checked', allChecked);

        // "결제하기" 버튼 활성화/비활성화
        $('.payment-button').prop('disabled', !allChecked);
    });

    // "결제하기" 버튼 클릭 시 조건 확인
    $('.payment-button').on('click', function (event) {
        const allChecked = $('.check-term').length === $('.check-term:checked').length;

        if (!allChecked) {
            event.preventDefault(); // 기본 제출 동작 방지
            alert('모든 약관에 동의해야 결제가 가능합니다.');
        }
    });



});



