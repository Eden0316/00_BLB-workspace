<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
        
                <div id="faq" class="tab-content active">
                    <div class="sub-tabs">
                        <button class="sub-tab-button active" data-category="all">��ü</button>
                        <button class="sub-tab-button" data-category="product">��ǰ</button>
                        <button class="sub-tab-button" data-category="delivery">���</button>
                        <button class="sub-tab-button" data-category="order">�ֹ�</button>
                        <button class="sub-tab-button" data-category="payment">����/ȯ��</button>
                    </div>
                    <div class="faq-list">
                        <!-- FAQ �׸���� ���⿡ �������� �߰��˴ϴ� -->
                    </div>
                </div>
        
                <div id="inquiry" class="tab-content">
                    <div class="header">
                        BLB �������Դϴ�!
                        <br />
                        ������ ���͵帱���?
                    </div>
                    <div class="form-container">
                        <div class="form-group">
                            <label for="category">��������</label>
                            <select id="category">
                                <option>ī�װ��� �������ּ���</option>
                                <option>��ǰ</option>
                                <option>���</option>
                                <option>�ֹ�</option>
                                <option>����/ȯ��</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="content">����</label>
                            <textarea id="content" placeholder="���ǳ����� �Է����ּ���. (2000�� �̳�)"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="file-upload">÷������</label>
                            <button type="button" id="file-upload-btn" class="file-upload-btn">+</button>
                            <span id="file-count">0/3</span>
                            <p id="file-info" style="font-size: 12px; color: #7AB2D3;">10MB ���� �̹��� ���� (JPG, PNG, GIF) 3���� ÷���� �� �ֽ��ϴ�.</p>
                            <div class="file-list" id="file-list"></div>
                        </div>
                
                        <div class="form-group">
                            <label for="receive-email">
                                <input type="checkbox" id="receive-email"> �亯 �Ϸ� �� �̸��Ϸ� �˸� �ޱ�
                            </label>
                        </div>
                
                        <div class="form-group" id="email-group">
                            <label for="email">�亯 ���� �̸���</label>
                            <div>
                                <input type="text" id="email" placeholder="�亯 ���� �̸����� �Է��ϼ���." style="width: 55%;" disabled/>
                            </div>
                        </div>
                
                        <div class="form-buttons">
                            <button type="button" class="cancel" onclick="resetForm()">���</button>
                            <button type="button" class="submit" onclick="submitForm()">���</button>
                        </div>
                    </div>
            </div>
    
            <div id="notice" class="tab-content">
                <div class="sub-tabs">
                    <button class="sub-tab-button active" data-category="all">��ü</button>
                    <button class="sub-tab-button" data-category="general">�Ϲ�</button>
                    <button class="sub-tab-button" data-category="store">����</button>
                    <button class="sub-tab-button" data-category="event">�̺�Ʈ</button>
                </div>
                
                <!-- �˻� ��� �߰� -->
                <div class="notice-search">
                    <input type="text" id="notice-search-input" placeholder="�˻�� �Է��ϼ���.">
                    <button type="button" id="notice-search-btn">�˻�</button>
                </div>
                
                <table id="notice-table">
                    <colgroup>
                        <col style="width: 10%;"> <!-- �۹�ȣ -->
                        <col style="width: 20%;"> <!-- �з� -->
                        <col style="width: 50%;"> <!-- ���� -->
                        <col style="width: 20%;"> <!-- �ۼ��� -->
                    </colgroup>
                    <thead>
                        <tr>
                            <th>�۹�ȣ</th>
                            <th></th>
                            <th>����</th>
                            <th>�ۼ���</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="n" items="${requestScope.list }">
                        	<tr>
                        		<td class="nno">${n.noticeNo }</td>
                        		<td>${ n.noticeTitle }</td>
                        		<td>${ n.noticeContent }</td>
                        		<td>${ n.noticeRegDate }</td>
                        	</tr>
                        </c:forEach>
                    </tbody>
                </table>
                <div id="pagingArea">
                <ul class="pagination">	          
	                <c:choose>
	                	<c:when test="${ requestScope.pi.currentPage eq 1 }">
		                    <li class="page-item disabled">
		                    	<a class="page-link" href="#">
		                    		����
		                    	</a>
		                    </li>
		                </c:when>
		                <c:otherwise>
		                	<li class="page-item">
		                    	<a class="page-link" href="list.no?cpage=${ requestScope.pi.currentPage - 1 }">
		                    		����
		                    	</a>
		                    </li>
		                </c:otherwise>
	                </c:choose>
                    
                    <c:forEach var="p" begin="${ requestScope.pi.startPage }"
                    				   end="${ requestScope.pi.endPage }" 
                    				   step="1">
                    	<c:choose>
                    		<c:when test="${ p ne requestScope.pi.currentPage }">			   
			                    <li class="page-item">
			                    	<a class="page-link" href="list.no?cpage=${ p }">
			                    		${ p }
			                    	</a>
			                    </li>
		                    </c:when>
		                    <c:otherwise>
		                    	<li class="page-item disabled">
			                    	<a class="page-link" href="list.no?cpage=${ p }">
			                    		${ p }
			                    	</a>
			                    </li>
	                    	</c:otherwise>
	                    </c:choose>
                    </c:forEach>
                    
                    <c:choose>
                    	<c:when test="${ requestScope.pi.currentPage ne requestScope.pi.maxPage }">
                   			<li class="page-item">
                   				<a class="page-link" href="list.no?cpage=${ requestScope.pi.currentPage + 1 }">
                   					����
                   				</a>
                   			</li>
                   		</c:when>
                   		<c:otherwise>
                   			<li class="page-item disabled">
                   				<a class="page-link" href="#">
                   					����
                   				</a>
                   			</li>
                   		</c:otherwise>
                   	</c:choose>
                </ul>
            </div>
            </div>
            
        </div>
    </div>
</body>
</html>