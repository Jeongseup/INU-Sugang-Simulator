<script type="text/javascript">
    function on_sc_insert(haksuNo) {
        if (haksuNo != "") {
            NetFunnel_Action({
                // 		           service_id:"service_1",
                action_id: "result_list",
                // 		           use_fame_block:true,
                // 		           popup_target:top
                user_data: "202001330"
            }, function (ev, ret) {
                var menuUrl = "SukangResultList.jsp";
                $("#resultList").load(menuUrl, {
                    par_haksuNo: haksuNo,
                    par_type: "insert"
                });
            });
        } else {
            alert("ERROR_CODE(ST01_" + haksuNo + ") : 접속이 종료되었습니다. 로그인페이지로 이동합니다. 이 메시지가 계속 뜰경우 PC를 재부팅한 후 다시 접속 하세요");
            location.href = "/sukang_main.html";
        }
    }

    $(document).ready(function () {
        NetFunnel_Complete();
    });


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
</script>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<form name="mainFrom" action="" method="post">
    <input type="hidden" name="par_type"> <input type="hidden" name="par_haksuNo">
</form>
<div id="register">

    <div class="sch_areaT">
        <!-- 2017.03.21 추가 -->
        <table summary="검색결과" class="dataT">
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
                    <td>교양필수</td>
                    <td>0006433003</td>
                    <td class="ltf"><b>현대사회와빅데이터</b><br /> (The Modern Society and Big Data Analysis)</td>
                    <td>3</td>
                    <td> </td>
                    <td class="timeInfo">화 야1 야2 야3 (SM302)</td>
                    <td>교양</td>
                    <td>양태연</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">1</td>
                    <td>전공기초</td>
                    <td>0010086003</td>
                    <td class="ltf"><b>C언어</b><br /> (C language)</td>
                    <td>3</td>
                    <td> </td>
                    <td class="timeInfo">월 5 6 (SH505) 수 5 6 (SH511)</td>
                    <td>컴퓨터공학부</td>
                    <td>허혜선</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공필수</td>
                    <td>0001765002</td>
                    <td class="ltf"><b>C++언어</b><br /> (C++ Language)</td>
                    <td>3</td>
                    <td> </td>
                    <td class="timeInfo">월 7 8 (SH501) 화 8 9 (SH501)</td>
                    <td>컴퓨터공학부</td>
                    <td>전혜경</td>
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
                    <td> </td>
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
                    <td> </td>
                    <td class="timeInfo">수 1 (SH504) 목 6 7 (SH504)</td>
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
                    <td> </td>
                    <td class="timeInfo">수 2 3 (SH408) 목 2 3 (SH408)</td>
                    <td>컴퓨터공학부</td>
                    <td>홍윤식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

                <tr class="grey" onmouseover="javascript: changeColor(this);"
                    onmouseout="javascript:returnColor(this);">
                    <td class="first">2</td>
                    <td>전공선택</td>
                    <td>IAA6020001</td>
                    <td class="ltf"><b>수치해석</b><br /> (NUMERICAL ANALYSIS)</td>
                    <td>3</td>
                    <td> </td>
                    <td class="timeInfo">월 9 (SH407) 수 7 8 (SH407)</td>
                    <td>컴퓨터공학부</td>
                    <td>김지범</td>
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
                    <td> </td>
                    <td class="timeInfo">금 7-8A 8B-9 (SH504)</td>
                    <td>컴퓨터공학부</td>
                    <td>민만식</td>
                    <td class="last"><a class="btn_grey2">마감</a></td>
                </tr>

            </tbody>
        </table>
    </div>
    <!-- 2017.03.21 추가 -->
</div>