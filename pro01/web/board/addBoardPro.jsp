<%--
  Created by IntelliJ IDEA.
  User: db400tea
  Date: 2023-08-07
  Time: 오후 3:05
  To change this template use File | Settings | File Templates.
--%>

<%--
    공지사항 글쓰기
    _ 공지사항 글쓰기 폼 화면(addBoard.jsp)
    1. 글 제목, 글내용, 작성자(admin)을 입력 후 submit(전송)하면
        addBoardPro.jsp로 전송

    _ 공지사항 글쓰기 처리(addBoardPro.jsp)
    1. 필요한 sql, db, dto 패키지 임포트
    2. 공지사항 글쓰기 폼화면에서
    2. db 연결하기
    3. sql 실행하여 처리된 건수 반환하기
    4. 처리된 건수가 0보다 크면(성공처리가 되었으면) 목록페이지로 이동
        아니면(실패처리가 되었으면) 해당 글 상세보기로 이동
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.chunjae.db.*" %>
<%
    request.setCharacterEncoding("UTF-8");
    response.setContentType("text/html; UTF-8");
    response.setCharacterEncoding("UTF-8");

    String title = request.getParameter("title");
    String content = request.getParameter("content");
    String author = request.getParameter("author");

    Connection conn = null;
    PreparedStatement pstmt = null;

    DBC con = new MariaDBCon();
    conn = con.connect();
    String sql = "insert into board(title, content, author) values (?, ?, ?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, title);
    pstmt.setString(2, content);
    pstmt.setString(3, author);

    int cnt = pstmt.executeUpdate();
    String script = "<script>";
    script += "history.go(-1);";
    script += "</script>";
    if (cnt>0) {
        response.sendRedirect("boardList.jsp");
    } else {
        // response.sendRedirect("addBoard.jsp");
        out.println(script);
    }
    con.close(pstmt, conn);
%>