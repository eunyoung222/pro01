<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    String path1 = request.getContextPath();
    String sid = (String) session.getAttribute("id");
%>
<div class="hd_wrap">
    <nav class="tnb">
        <ul class="menu">
            <% if(sid!=null) { %>
                <li><a href="<%=path1 %>/member/logout.jsp">로그아웃</a></li>
                <li><a href="<%=path1 %>/member/mypage.jsp">마이페이지</a></li>
                <li><a href="/map.jsp">오시는길</a></li>
                    <% if(sid.equals("admin")) { %>
                    <li><a href="<%=path1 %>/member/admin.jsp">관리자페이지로</a></li>
                    <% } %>
            <% } else { %>
                <li><a href="<%=path1 %>/member/login.jsp">로그인</a></li>
                <li><a href="<%=path1 %>/member/term.jsp">회원가입</a></li>
                <li><a href="/map.jsp">오시는길</a></li>
            <% } %>
        </ul>
    </nav>
</div>
<div class="hd_wrap">
    <a href="<%=path1 %>" class="logo">
        <img src="<%=path1 %>/images/smartrunlogo.png" alt="스마트런 로고타입">
    </a>
    <nav class="gnb">
        <ul class="menu">
            <li class="item1">
                <a href="company.html" class="dp1">회사소개</a>
                <ul class="sub">
                    <li><a href="company.html#com">회사개요</a></li>
                    <li><a href="/company/hi.jsp">인사말</a></li>
                    <li><a href="/company/contribution.jsp">사회공헌</a></li>
                    <li><a href="/map.jsp">오시는길</a></li>
                </ul>
            </li>
            <li class="item2">
                <a href="biz.html" class="dp1">사업영역</a>
                <ul class="sub">
                    <li><a href="biz.html#text">교과서</a></li>
                    <li><a href="biz.html#ref">참고서</a></li>
                    <li><a href="biz.html#smart">스마트교육</a></li>
                    <li><a href="biz.html#edu">에듀테크</a></li>
                </ul>
            </li>
            <li class="item4">
                <a href="promotion.html" class="dp1">홍보</a>
                <ul class="sub">
                    <li><a href="/board/boardList.jsp">공지사항</a></li>
                    <li><a href="/qna/qnaList.jsp">묻고 답하기</a></li>
                    <li><a href="/faq/faqList.jsp">자주 묻는 질문</a></li>
                    <li><a href="/faq/online.jsp">온라인 상담</a></li>
                </ul>
            </li>
            <li class="item5">
                <a href="brand.html" class="dp1">인재채용</a>
                <ul class="sub">
                    <li><a href="/crew/runcrew.jsp">런 크루 되면</a></li>
                </ul>
            </li>
        </ul>
    </nav>
</div>