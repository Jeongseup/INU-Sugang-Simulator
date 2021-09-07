<script type="text/javascript">
    function on_sc_insert(haksuNo) {
        if (haksuNo != "") {
            NetFunnel_Action({
                //                 service_id:"service_1",
                action_id: "result_list",
                //                 use_fame_block:true,
                //                 popup_target:top
                user_data: "202001330"
            }, function (ev, ret) {
                var menuUrl = "SukangResultList.jsp";
                $("#resultList").load(menuUrl, {
                    par_haksuNo: haksuNo,
                    par_type: "insert"
                });
            });
        } else {
            alert("접속이 종료되었습니다.로그인페이지로 이동합니다. 이 메시지가 계속 뜰경우 PC를 재부팅한 후 다시 접속 하세요.");
            location.href = "/sukang_main.html";
        }
    }

    //푸른색 계열로 색상 변경
    function changeColor(abj) {
        abj.style.backgroundColor = '#e1f1ff';
    }

    // 흰색으로 색상 원복
    function returnColor(abj) {
        abj.style.backgroundColor = 'white';
    }

    function click() {
        if ((event.button == 2) || (event.button == 3)) {
            alert("오른쪽 마우스 사용할 수 없습니다.");
            return false;
        }
    }
    document.onmousedown = click;

    function on_ctrl_down() {
        //              if((event.ctrlKey) || (event.shiftKey)) {   2017-06-14  전산실 제외 요청.
        if ((event.ctrlKey)) {
            alert('키를 사용할 수 없습니다.');
            return false;
        }

        if (event.keyCode == "116") {
            event.keyCode = "2";
            alert("F5키는 사용할 수 없습니다.");
            return false;
        }
    }
    document.onkeydown = on_ctrl_down;

    $(document).ready(function () {
        NetFunnel_Complete();
    });
</script>

<link rel="stylesheet" type="text/css" href="../css/style.css">
<form name="mainFrom" action="" method="post">
    <input type="hidden" name="par_type"> <input type="hidden" name="par_haksuNo">
</form>
<div id="register">

    <div class="sch_areaT">
        <!-- 2017.03.21 추가 -->
        <table summary="검색결과" class="dataT" style="">
            <caption>검색결과</caption>
            <colgroup>
                <col width="60px" />
                <col width="80px" />
                <col width="100px" />
                <col width="" />
                <col width="60px" />
                <col width="60px" />
                <col width="250px" />
                <col width="80px" />
                <col width="80px" />
                <col width="60px" />
            </colgroup>
            <thead>
                <tr>
                    <th scope="col" class="first">학년</th>
                    <th scope="col">이수구분</th>
                    <th scope="col">학수번호</th>
                    <th scope="col">교과목명</th>
                    <th scope="col">학점</th>
                    <th scope="col">원어여부</th>
                    <th scope="col">요일 및 교시(강의실)</th>
                    <th scope="col">개설학과</th>
                    <th scope="col">교강사</th>
                    <th scope="col" class="last">신청</th>
                </tr>
            </thead>
            <tbody>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">전학년</td>
                    <td>전공선택</td>
                    <td>0000700001</td>
                    <td class="ltf"><b>현장교육실습(Ⅳ-1)</b><br /> (INTERNSHIP(Ⅳ-1))</td>
                    <td>8</td>
                    <td></td>
                    <td class="timeInfo">월 1 2 3 4 5 6 7 8 9 (ZZ102) 화 1 2 3 4 5 6 7 8 9 (ZZ102) 수 1 2 3 4 5 6 7 8 9
                        (ZZ102) 목 1 2 3 4 5 6 7 8 9 (ZZ102) 금 1 2 3 4 5 6 7 8 9 (ZZ102)</td>
                    <td>컴퓨터공학부</td>
                    <td>최승식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">전학년</td>
                    <td>전공선택</td>
                    <td>0000736002</td>
                    <td class="ltf"><b>현장교육실습(Ⅴ)</b><br /> (INTERNSHIP(Ⅴ))</td>
                    <td>8</td>
                    <td></td>
                    <td class="timeInfo">월 1 2 3 4 5 6 7 8 9 (ZZ102) 화 1 2 3 4 5 6 7 8 9 (ZZ102) 수 1 2 3 4 5 6 7 8 9
                        (ZZ102) 목 1 2 3 4 5 6 7 8 9 (ZZ102) 금 1 2 3 4 5 6 7 8 9 (ZZ102)</td>
                    <td>컴퓨터공학부</td>
                    <td>백형부</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">전학년</td>
                    <td>전공선택</td>
                    <td>0000736003</td>
                    <td class="ltf"><b>현장교육실습(Ⅴ)</b><br /> (INTERNSHIP(Ⅴ))</td>
                    <td>8</td>
                    <td></td>
                    <td class="timeInfo">월 1 2 3 4 5 6 7 8 9 (ZZ102) 화 1 2 3 4 5 6 7 8 9 (ZZ102) 수 1 2 3 4 5 6 7 8 9
                        (ZZ102) 목 1 2 3 4 5 6 7 8 9 (ZZ102) 금 1 2 3 4 5 6 7 8 9 (ZZ102)</td>
                    <td>컴퓨터공학부</td>
                    <td>최승식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">전학년</td>
                    <td>전공선택</td>
                    <td>0000736004</td>
                    <td class="ltf"><b>현장교육실습(Ⅴ)</b><br /> (INTERNSHIP(Ⅴ))</td>
                    <td>8</td>
                    <td></td>
                    <td class="timeInfo">월 1 2 3 4 5 6 7 8 9 (ZZ102) 화 1 2 3 4 5 6 7 8 9 (ZZ102) 수 1 2 3 4 5 6 7 8 9
                        (ZZ102) 목 1 2 3 4 5 6 7 8 9 (ZZ102) 금 1 2 3 4 5 6 7 8 9 (ZZ102)</td>
                    <td>컴퓨터공학부</td>
                    <td>최대진</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">전학년</td>
                    <td>전공선택</td>
                    <td>0000736005</td>
                    <td class="ltf"><b>현장교육실습(Ⅴ)</b><br /> (INTERNSHIP(Ⅴ))</td>
                    <td>8</td>
                    <td></td>
                    <td class="timeInfo">월 1 2 3 4 5 6 7 8 9 (ZZ102) 화 1 2 3 4 5 6 7 8 9 (ZZ102) 수 1 2 3 4 5 6 7 8 9
                        (ZZ102) 목 1 2 3 4 5 6 7 8 9 (ZZ102) 금 1 2 3 4 5 6 7 8 9 (ZZ102)</td>
                    <td>컴퓨터공학부</td>
                    <td>김지범</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">전학년</td>
                    <td>전공선택</td>
                    <td>0000736006</td>
                    <td class="ltf"><b>현장교육실습(Ⅴ)</b><br /> (INTERNSHIP(Ⅴ))</td>
                    <td>8</td>
                    <td></td>
                    <td class="timeInfo">월 1 2 3 4 5 6 7 8 9 (ZZ102) 화 1 2 3 4 5 6 7 8 9 (ZZ102) 수 1 2 3 4 5 6 7 8 9
                        (ZZ102) 목 1 2 3 4 5 6 7 8 9 (ZZ102) 금 1 2 3 4 5 6 7 8 9 (ZZ102)</td>
                    <td>컴퓨터공학부</td>
                    <td>이면섭</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">전학년</td>
                    <td>전공선택</td>
                    <td>0000736007</td>
                    <td class="ltf"><b>현장교육실습(Ⅴ)</b><br /> (INTERNSHIP(Ⅴ))</td>
                    <td>8</td>
                    <td></td>
                    <td class="timeInfo">월 1 2 3 4 5 6 7 8 9 (ZZ102) 화 1 2 3 4 5 6 7 8 9 (ZZ102) 수 1 2 3 4 5 6 7 8 9
                        (ZZ102) 목 1 2 3 4 5 6 7 8 9 (ZZ102) 금 1 2 3 4 5 6 7 8 9 (ZZ102)</td>
                    <td>컴퓨터공학부</td>
                    <td>최승식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">전학년</td>
                    <td>전공선택</td>
                    <td>0000736008</td>
                    <td class="ltf"><b>현장교육실습(Ⅴ)</b><br /> (INTERNSHIP(Ⅴ))</td>
                    <td>8</td>
                    <td></td>
                    <td class="timeInfo">월 1 2 3 4 5 6 7 8 9 (ZZ102) 화 1 2 3 4 5 6 7 8 9 (ZZ102) 수 1 2 3 4 5 6 7 8 9
                        (ZZ102) 목 1 2 3 4 5 6 7 8 9 (ZZ102) 금 1 2 3 4 5 6 7 8 9 (ZZ102)</td>
                    <td>컴퓨터공학부</td>
                    <td>성미영</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">전학년</td>
                    <td>전공선택</td>
                    <td>0006155010</td>
                    <td class="ltf"><b>현장교육.실습(Ⅵ-1)</b><br /> (INTERNSHIP(Ⅵ-1))</td>
                    <td>10</td>
                    <td></td>
                    <td class="timeInfo">월 1 2 3 4 5 6 7 8 9 (ZZ102) 화 1 2 3 4 5 6 7 8 9 (ZZ102) 수 1 2 3 4 5 6 7 8 9
                        (ZZ102) 목 1 2 3 4 5 6 7 8 9 (ZZ102) 금 1 2 3 4 5 6 7 8 9 (ZZ102)</td>
                    <td>컴퓨터공학부</td>
                    <td>최승식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>교양필수</td>
                    <td>XAA1359017</td>
                    <td class="ltf"><b>대학수학(2)</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (CALCULUS(2))
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 7-8A 8B-9 (SH505)</td>
                    <td>컴퓨터공학부</td>
                    <td>박성화</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>교양필수</td>
                    <td>XAA1359018</td>
                    <td class="ltf"><b>대학수학(2)</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (CALCULUS(2))
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 7-8A 8B-9 (SH505)</td>
                    <td>컴퓨터공학부</td>
                    <td>박성화</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>전공기초</td>
                    <td>0010086001</td>
                    <td class="ltf"><b>C언어</b><br /> (C language)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 5 6 (SH511) 목 5 6 (SH511)</td>
                    <td>컴퓨터공학부</td>
                    <td>백형부</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr onclick="javascript:on_sc_insert('0010086002')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>전공기초</td>
                    <td>0010086002</td>
                    <td class="ltf"><b>C언어</b><br /> (C language)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 2 3 (SH505) 수 2 3 (SH511)</td>
                    <td>컴퓨터공학부</td>
                    <td>허혜선</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>전공기초</td>
                    <td>0010086003</td>
                    <td class="ltf"><b>C언어</b><br /> (C language)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 5 6 (SH505) 수 5 6 (SH511)</td>
                    <td>컴퓨터공학부</td>
                    <td>허혜선</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>전공선택</td>
                    <td>0010462001</td>
                    <td class="ltf"><b>파이썬을이용한데이터과학입문</b><br /> (Introduction to data science using Python)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 3 (SH501) 목 7 8 (SH501)</td>
                    <td>컴퓨터공학부</td>
                    <td>구민석</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>전공선택</td>
                    <td>0010462002</td>
                    <td class="ltf"><b>파이썬을이용한데이터과학입문</b><br /> (Introduction to data science using Python)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">수 7 (SH501) 금 5 6 (SH501)</td>
                    <td>컴퓨터공학부</td>
                    <td>구민석</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>전공선택</td>
                    <td>IAA6068001</td>
                    <td class="ltf"><b>확률및통계</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (PROBABILITY AND STATISTICS)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">금 1-2A 2B-3 (SH504)</td>
                    <td>컴퓨터공학부</td>
                    <td>민만식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>전공선택</td>
                    <td>IAA6068002</td>
                    <td class="ltf"><b>확률및통계</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (PROBABILITY AND STATISTICS)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">금 7-8A 8B-9 (SH504)</td>
                    <td>컴퓨터공학부</td>
                    <td>민만식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공필수</td>
                    <td>0001765001</td>
                    <td class="ltf"><b>C++언어</b><br /> (C++ Language)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 5 6 (SH501) 화 5 6 (SH501)</td>
                    <td>컴퓨터공학부</td>
                    <td>전혜경</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공필수</td>
                    <td>0001765002</td>
                    <td class="ltf"><b>C++언어</b><br /> (C++ Language)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 7 8 (SH501) 화 8 9 (SH501)</td>
                    <td>컴퓨터공학부</td>
                    <td>전혜경</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공필수</td>
                    <td>IAA6007001</td>
                    <td class="ltf"><b>컴퓨터구조</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (COMPUTER ARCHITECTURE)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 1-2A (SH407) 금 2B-3 (SH407)</td>
                    <td>컴퓨터공학부</td>
                    <td>김우일</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공필수</td>
                    <td>IAA6007002</td>
                    <td class="ltf"><b>컴퓨터구조</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (COMPUTER ARCHITECTURE)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 2B-3 (SH407) 금 5B-6 (SH407)</td>
                    <td>컴퓨터공학부</td>
                    <td>김우일</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공선택</td>
                    <td>0001767001</td>
                    <td class="ltf"><b>윈도우즈프로그래밍</b><br /> (Windows Programming)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">수 1 (SH504) 목 6 7 (SH504)</td>
                    <td>컴퓨터공학부</td>
                    <td>이면섭</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공선택</td>
                    <td>0001767002</td>
                    <td class="ltf"><b>윈도우즈프로그래밍</b><br /> (Windows Programming)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">수 9 (SH504) 목 2 3 (SH504)</td>
                    <td>컴퓨터공학부</td>
                    <td>이면섭</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공선택</td>
                    <td>0001780001</td>
                    <td class="ltf"><b>모바일소프트웨어</b><br /> (Mobile Software)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">수 2 3 (SH408) 목 2 3 (SH408)</td>
                    <td>컴퓨터공학부</td>
                    <td>홍윤식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공선택</td>
                    <td>0001780002</td>
                    <td class="ltf"><b>모바일소프트웨어</b><br /> (Mobile Software)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">수 5 6 (SH408) 목 6 7 (SH408)</td>
                    <td>컴퓨터공학부</td>
                    <td>홍윤식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공선택</td>
                    <td>0010087001</td>
                    <td class="ltf"><b>LINUX시스템</b><br /> (Linux System)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 5 6 (SH415) 화 5 6 (SH415)</td>
                    <td>컴퓨터공학부</td>
                    <td>성미영</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공선택</td>
                    <td>0010087002</td>
                    <td class="ltf"><b>LINUX시스템</b><br /> (Linux System)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 7 8 (SH415) 금 7 8 (SH415)</td>
                    <td>컴퓨터공학부</td>
                    <td>이승수</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공선택</td>
                    <td>IAA6020001</td>
                    <td class="ltf"><b>수치해석</b><br /> (NUMERICAL ANALYSIS)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 9 (SH407) 수 7 8 (SH407)</td>
                    <td>컴퓨터공학부</td>
                    <td>김지범</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>0001772001</td>
                    <td class="ltf"><b>알고리즘</b><br /> (Algorithm)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 5 6 (SH407) 목 5 6 (SH407)</td>
                    <td>컴퓨터공학부</td>
                    <td>채진석</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>0006819001</td>
                    <td class="ltf"><b>캡스톤디자인(1)</b><br /> (Capstone Design (1))</td>
                    <td>2</td>
                    <td></td>
                    <td class="timeInfo">목 1 2 3 (SH501)</td>
                    <td>컴퓨터공학부</td>
                    <td>민병준</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr onclick="javascript:on_sc_insert('0006819002')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>0006819002</td>
                    <td class="ltf"><b>캡스톤디자인(1)</b><br /> (Capstone Design (1))</td>
                    <td>2</td>
                    <td></td>
                    <td class="timeInfo">목 1 2 3 (SH415)</td>
                    <td>컴퓨터공학부</td>
                    <td>박종승</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr onclick="javascript:on_sc_insert('0006819003')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>0006819003</td>
                    <td class="ltf"><b>캡스톤디자인(1)</b><br /> (Capstone Design (1))</td>
                    <td>2</td>
                    <td></td>
                    <td class="timeInfo">목 1 2 3 (SH502)</td>
                    <td>컴퓨터공학부</td>
                    <td>이승수</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>0006819004</td>
                    <td class="ltf"><b>캡스톤디자인(1)</b><br /> (Capstone Design (1))</td>
                    <td>2</td>
                    <td></td>
                    <td class="timeInfo">목 1 2 3 (SH511)</td>
                    <td>컴퓨터공학부</td>
                    <td>최승식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>0006819005</td>
                    <td class="ltf"><b>캡스톤디자인(1)</b><br /> (Capstone Design (1))</td>
                    <td>2</td>
                    <td></td>
                    <td class="timeInfo">목 1 2 3 (SH407)</td>
                    <td>컴퓨터공학부</td>
                    <td>김지범</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>0006819006</td>
                    <td class="ltf"><b>캡스톤디자인(1)</b><br /> (Capstone Design (1))</td>
                    <td>2</td>
                    <td></td>
                    <td class="timeInfo">목 1 2 3 (SH505)</td>
                    <td>컴퓨터공학부</td>
                    <td>최대진</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr onclick="javascript:on_sc_insert('IAA6021001')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>IAA6021001</td>
                    <td class="ltf"><b>컴퓨터네트워크</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (COMPUTER NETWORK)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 1-2A (SH304) 목 7-8A (SH304)</td>
                    <td>컴퓨터공학부</td>
                    <td>최승식</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr onclick="javascript:on_sc_insert('IAA6021002')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>IAA6021002</td>
                    <td class="ltf"><b>컴퓨터네트워크</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (COMPUTER NETWORK)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 2B-3 (SH304) 목 8B-9 (SH304)</td>
                    <td>컴퓨터공학부</td>
                    <td>최승식</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr onclick="javascript:on_sc_insert('0001423001')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공선택</td>
                    <td>0001423001</td>
                    <td class="ltf"><b>컴퓨터그래픽스</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (Computer Graphics)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 5B-6 (SH504) 수 2B-3 (SH504)</td>
                    <td>컴퓨터공학부</td>
                    <td>김지범</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공선택</td>
                    <td>0004199001</td>
                    <td class="ltf"><b>서버관리</b><br /> (Server Management)</td>
                    <td>2</td>
                    <td></td>
                    <td class="timeInfo">화 7 8 9 (SH408)</td>
                    <td>컴퓨터공학부</td>
                    <td>성민경</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공선택</td>
                    <td>0006699001</td>
                    <td class="ltf"><b>소프트웨어 모델링</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (Software Modeling)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 7-8A 8B-9 (SH504)</td>
                    <td>컴퓨터공학부</td>
                    <td>최성욱</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공선택</td>
                    <td>0009484001</td>
                    <td class="ltf"><b>지능정보시스템</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (Intelligent Information Systems)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 2B-3 (SH504) 수 5B-6 (SH504)</td>
                    <td>컴퓨터공학부</td>
                    <td>신유현</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr onclick="javascript:on_sc_insert('0006021001')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">4</td>
                    <td>전공선택</td>
                    <td>0006021001</td>
                    <td class="ltf"><b>정보보호론</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (Topics on Information Security)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 5B-6 (SH505) 수 5B-6 (SH505)</td>
                    <td>컴퓨터공학부</td>
                    <td>민병준</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr onclick="javascript:on_sc_insert('0006683001')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">4</td>
                    <td>전공선택</td>
                    <td>0006683001</td>
                    <td class="ltf"><b>엔터테인먼트소프트웨어</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (Entertainment Software)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">수 2B-3 (SH505) 목 7-8A (SH505)</td>
                    <td>컴퓨터공학부</td>
                    <td>박종승</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr onclick="javascript:on_sc_insert('0007853001')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">4</td>
                    <td>전공선택</td>
                    <td>0007853001</td>
                    <td class="ltf"><b>빅데이터 입문</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (Intorduction to Bigdata)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 2B-3 (SH505) 목 5B-6 (SH505)</td>
                    <td>컴퓨터공학부</td>
                    <td>최대진</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>교양필수</td>
                    <td>XAA1359019</td>
                    <td class="ltf"><b>대학수학(2)</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (CALCULUS(2))
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 야1-2A 야2B-3 (SH407)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>박성화</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>전공기초</td>
                    <td>0010086004</td>
                    <td class="ltf"><b>C언어</b><br /> (C language)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 야1 야2 야3 야4 (SH511)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>백형부</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>전공선택</td>
                    <td>0010462003</td>
                    <td class="ltf"><b>파이썬을이용한데이터과학입문</b><br /> (Introduction to data science using Python)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">목 야1 야2 야3 (SH501)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>구민석</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>전공선택</td>
                    <td>IAA6068003</td>
                    <td class="ltf"><b>확률및통계</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (PROBABILITY AND STATISTICS)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">금 야1-2A 야2B-3 (SH504)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>민만식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공필수</td>
                    <td>0001765003</td>
                    <td class="ltf"><b>C++언어</b><br /> (C++ Language)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 야2 야3 야4 야5 (SH501)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>전혜경</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="brown" onclick="javascript:on_sc_insert('IAA6007003')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공필수</td>
                    <td>IAA6007003</td>
                    <td class="ltf"><b>컴퓨터구조</b><br /> (COMPUTER ARCHITECTURE)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 야3 야4 야5 (SH407)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>김우일</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공선택</td>
                    <td>0001767003</td>
                    <td class="ltf"><b>윈도우즈프로그래밍</b><br /> (Windows Programming)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">목 야3 야4 야5 (SH407)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>이면섭</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="brown" onclick="javascript:on_sc_insert('0001780003')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공선택</td>
                    <td>0001780003</td>
                    <td class="ltf"><b>모바일소프트웨어</b><br /> (Mobile Software)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">금 야1 야2 야3 야4 (SH408)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>허혜선</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr class="brown" onclick="javascript:on_sc_insert('0010087003')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공선택</td>
                    <td>0010087003</td>
                    <td class="ltf"><b>LINUX시스템</b><br /> (Linux System)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">수 야1 야2 야3 야4 (SH415)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>성미영</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr class="brown" onclick="javascript:on_sc_insert('0001772003')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>0001772003</td>
                    <td class="ltf"><b>알고리즘</b><br /> (Algorithm)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 야1 야2 (SH407) 목 야1 야2 (SH407)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>채진석</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>0006819007</td>
                    <td class="ltf"><b>캡스톤디자인(1)</b><br /> (Capstone Design (1))</td>
                    <td>2</td>
                    <td></td>
                    <td class="timeInfo">수 야1 야2 야3 (SH408)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>홍윤식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>0006819008</td>
                    <td class="ltf"><b>캡스톤디자인(1)</b><br /> (Capstone Design (1))</td>
                    <td>2</td>
                    <td></td>
                    <td class="timeInfo">수 야1 야2 야3 (SH511)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>백형부</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="brown" onclick="javascript:on_sc_insert('IAA6021003')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공필수</td>
                    <td>IAA6021003</td>
                    <td class="ltf"><b>컴퓨터네트워크</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (COMPUTER NETWORK)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">월 야1-2A 야2B-3 (SH304)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>최승식</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공선택</td>
                    <td>0001423002</td>
                    <td class="ltf"><b>컴퓨터그래픽스</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (Computer Graphics)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">금 야1-2A 야2B-3 (SH505)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>김지범</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공선택</td>
                    <td>0006699002</td>
                    <td class="ltf"><b>소프트웨어 모델링</b><br /> (Software Modeling)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 야3 야4 야5 (SH504)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>최성욱</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">3</td>
                    <td>전공선택</td>
                    <td>0009484002</td>
                    <td class="ltf"><b>지능정보시스템</b><br /> (Intelligent Information Systems)</td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">목 야3 야4 야5 (SH504)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>신유현</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="brown" onclick="javascript:on_sc_insert('0006021002')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">4</td>
                    <td>전공선택</td>
                    <td>0006021002</td>
                    <td class="ltf"><b>정보보호론</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (Topics on Information Security)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">목 야1-2A 야2B-3 (SH505)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>민병준</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr class="brown" onclick="javascript:on_sc_insert('0006683002')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">4</td>
                    <td>전공선택</td>
                    <td>0006683002</td>
                    <td class="ltf"><b>엔터테인먼트소프트웨어</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (Entertainment Software)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">화 야1-2A 야2B-3 (SH505)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>박종승</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

                <tr class="brown" onclick="javascript:on_sc_insert('0007853002')" style="cursor: pointer;"
                    onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                    <td class="first">4</td>
                    <td>전공선택</td>
                    <td>0007853002</td>
                    <td class="ltf"><b>빅데이터 입문</b>
                        <font color=blue><b> [75분수업]</b></font><br /> (Intorduction to Bigdata)
                    </td>
                    <td>3</td>
                    <td></td>
                    <td class="timeInfo">수 야1-2A 야2B-3 (SH505)</td>
                    <td>컴퓨터공학부(야)</td>
                    <td>최대진</td>
                    <td class="last"><a class="btn_blue">신청</a></td>
                </tr>

            </tbody>
        </table>
    </div>
</div>