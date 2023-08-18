<%--
  Created by IntelliJ IDEA.
  User: db400tea
  Date: 2023-08-09
  Time: 오전 9:18
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%-- 1. 필요한 라이브러리 로딩 --%>
<%@ page import="java.sql.*" %>
<%@ page import="com.chunjae.db.*" %>

<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; charset=UTF-8");
    response.setCharacterEncoding("UTF-8");

    //2. 보내온 데이터 받기
    int lev = Integer.parseInt(request.getParameter("lev"));
    int par = Integer.parseInt(request.getParameter("par"));
    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String author = request.getParameter("author");

    //3. DB 연결
    Connection conn = null;
    PreparedStatement pstmt = null;

    DBC con = new MariaDBCon();
    conn = con.connect();

    //4. sql 실행 및 실행결과 리턴
    String sql ="insert into qna(title, content, author, lev, par) values(?, ?, ?, ?, ?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, title);
    pstmt.setString(2, content);
    pstmt.setString(3, author);
    pstmt.setInt(4, lev);
    pstmt.setInt(5, par);


    int cnt = pstmt.executeUpdate();


    if(lev==0) {
        pstmt.close();
        sql = "update qna set par=qno where qno=0 and lev=0";
        pstmt = conn.prepareStatement(sql);
        pstmt.executeUpdate();
        cnt++;
    }

    if(cnt==2){
        System.out.println("질문 글이 등록되었습니다.");
        response.sendRedirect("/qna/qnaList.jsp");
    } else if(cnt==1) {
        System.out.println("답변 글이 등록되었습니다.");
        response.sendRedirect("/qna/qnaList.jsp");
    } else {
        System.out.println("질문 및 답변 등록이 실패하였습니다.");
        response.sendRedirect("/qna/addQuestion.jsp?lev="+lev+"&par="+par);

        //작성한 내용 없어짐 -> 잘 쓰지 않음, 되도록 사용하지 말기!!!
        //response.sendRedirect("/qna/addQuestion.jsp?lev="lev+"&par="+par);

        //작성한 내용 그대로 페이지로 -> 이거 사용하기!!!
        //out.print("<script>alert('글 수정 실패')</script>");
        //out.print("<script>history.go(-1);</script>");
    }

    con.close(pstmt, conn);

%>