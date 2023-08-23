<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>윜크루 되면</title>

    <%@ include file="../head.jsp" %>
    <!-- 스타일 초기화 : reset.css 또는 normalize.css -->
    <link href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css" rel="stylesheet">

    <!-- 필요한 폰트를 로딩 : 구글 웹 폰트에서 폰트를 선택하여 해당 내용을 붙여 넣기 -->
    <link rel="stylesheet" href="../google.css">
    <link rel="stylesheet" href="../fonts.css">

    <!-- 필요한 플러그인 연결 -->
    <script src="https://code.jquery.com/jquery-latest.js"></script>
    <link rel="stylesheet" href="../common.css">
    <link rel="stylesheet" href="../hd.css">

    <style>
        /* 본문 영역 스타일 */
        .wrap { background-color: #fffcf2; }
        .contents { clear:both; min-height:100vh;
            background-image: url("../weekcrew/images/library.jpg");
            background-repeat: no-repeat; background-position:center -250px; height: 1550px;}
        .contents::after { content:""; clear:both; display:block; width:100%; }

        .page { clear:both; width: 100vw; position:relative; }
        .page::after { content:""; display:block; width: 100%; clear:both; }

        .page_wrap { clear:both; width: 1200px; height: auto; margin:0 auto; }
        .page_tit { font-size:48px; text-align: center; padding-top:1em; color:#fff;
            padding-bottom: 2.4rem; }

        .breadcrumb { clear:both;
            width:1200px; margin: 0 auto; text-align: right; color:#fff;
            padding-top: 28px; padding-bottom: 28px; }
        .breadcrumb a { color:#fff; }
        .row { clear: both; height: 1500px; width: 1200px;}
        .container { clear: both; height: 250px; margin: 50px auto;}
        .container:first-child {padding-top: 50px;}
        .container:last-child {padding-bottom: 50px;}
        .container .img1 {  float: left; }
        .container .txt1 { float: right; width: 700px; padding-top: 30px; }
        .container .txt1 p { vertical-align: middle;}
        .img1_tit { margin-bottom: 20px; font-weight: bold; font-size: large;
        }
        .info_list {
            float: left;
            box-sizing: border-box;
            -webkit-box-sizing: border-box;
        }
        .info_wrap {font-size: 15px;
            line-height: 28px;
            letter-spacing: -0.3px;}
        .info_wrap .info_sub_title {
            font-weight: bold;
        }
        .info_wrap .info_sub_text {
            word-break: keep-all;
            word-wrap: break-word;
            overflow-wrap: break-word;
        }


    </style>

    <link rel="stylesheet" href="../ft.css">
    <style>
        .btn_group { clear:both; width:800px; margin:20px auto; }
        .btn_group:after { content:""; display:block; width:100%; clear: both; }
        .btn_group p {text-align: center;   line-height:3.6; }
    </style>
</head>
<body>
<div class="wrap">
    <header class="hd" id="hd">
        <%@ include file="../header.jsp"%>
    </header>
    <div class="contents" id="contents">
        <div class="breadcrumb">
            <p><a href="">HOME</a> &gt <span>인재채용</span> &gt <span>런크루 되면</span> </p>
        </div>
        <section class="page" id="page1">
            <div class="page_wrap">
                <h2 class="page_tit">런 크루가 되어주세요!</h2>
                <hr>
                <div class="row">
                    <section class="container">
                        <div class="img1">
                            <p class="img1_tit">Vacation</p>
                            <img src="/images/vacation.jpg" alt="" class="img2"/>
                        </div>
                        <div class="txt1">
                            <div class="info_list">
                                <dl class="info_wrap">
                                    <dt class="info_sub_title">휴가제도</dt>
                                    <dd class="info_sub_text">연차, 반차, 반반차 운영</dd>
                                    <dd class="info_sub_text">보건, 산전, 산후 병가</dd>
                                    <dd class="info_sub_text">육아휴직, 출산 휴가</dd>
                                    <dd class="info_sub_text">특별 휴가, 포상 휴가</dd>
                                </dl>
                            </div>
                        </div>
                    </section>
                    <section class="container">
                        <div class="img1">
                            <p class="img1_tit">Edu and Health</p>
                            <img src="/images/health.jpg" alt="" class="img2"/>
                        </div>
                        <div class="txt1">
                            <div class="info_list">
                                <dl class="info_wrap">
                                    <dt class="info_sub_title">교육 및 건강관리</dt>
                                    <dd class="info_sub_text">자녀 학자금 지원</dd>
                                    <dd class="info_sub_text">업무용 도서 지원</dd>
                                    <dd class="info_sub_text">임직원 정기 건강 검진</dd>
                                    <dd class="info_sub_text">보건 상담</dd>
                                </dl>
                            </div>
                        </div>
                    </section>
                    <section class="container">
                        <div class="img1">
                            <p class="img1_tit">Work</p>
                            <img src="/images/laptop.jpg" alt="" class="img2"/>
                        </div>
                        <div class="txt1">
                            <div class="info_list">
                                <dl class="info_wrap">
                                    <dt class="info_sub_title">업무지원</dt>
                                    <dd class="info_sub_text">차량 유지비, 통신비, 교통비, 주차비, 출장비 지원</dd>
                                    <dd class="info_sub_text">부서 운영비</dd>
                                    <dd class="info_sub_text">중식, 석식 제공, 사내 매점 운영</dd>
                                    <dd class="info_sub_text">통근 버스 운영</dd>
                                </dl>
                            </div>
                        </div>
                    </section>
                    <section class="container">
                        <div class="img1">
                            <p class="img1_tit">Group Life</p>
                            <img src="/images/group.jpg" alt="" class="img2"/>
                        </div>
                        <div class="txt1">
                            <div class="info_list">
                                <dl class="info_wrap">
                                    <dt class="info_sub_title">조직문화</dt>
                                    <dd class="info_sub_text">사내 동호회 지원</dd>
                                    <dd class="info_sub_text">워크샵 지원</dd>
                                    <dd class="info_sub_text">사우회 운영</dd>
                                    <dd class="info_sub_text">다양한 임직원 행사</dd>
                                </dl>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </section>
    </div>
    <footer class="ft" id="ft">
        <%@ include file="../footer.jsp" %>
    </footer>
</div>
</body>
</html>
