<script type="text/javascript">
    function on_subject_delete(haksuNo) {
        if (haksuNo != "") {
            if (confirm("신청하신 과목을 취소하시겠습니까?")) {
                NetFunnel_Action({
                    //                          service_id:"service_1",
                    action_id: "result_list",
                    //                          use_fame_block:true,
                    //                          popup_target:top
                    user_data: "202001330"
                }, function (ev, ret) {
                    var menuUrl = "SukangResultList.jsp";
                    $("#resultList").load(menuUrl, {
                        par_haksuNo: haksuNo,
                        par_type: "delete"
                    });
                });
            }
        }
    }

    $(document).ready(function () {
        NetFunnel_Complete();
    });


    function goPrintCheck() {
        var parameter = {
            DEPT_CLSF_GBN: '0000587',
            COLG_CD: '%',
            HG_CD: '%',
            YY: '2021',
            TM_GBN: '20',
            HY_SEQ_GBN: '%',
            STUNO: '202001330',
        };

        var reportParams = JSON.stringify(parameter);
        reportParams = window.btoa(unescape(encodeURIComponent(reportParams)));
        var cnt = 0;

        var params = {
            reportParams: reportParams,
            paramType: "query",
            filePath: "uni/cour/cors/cors0010_prn02.crf"
        };

        var reportWinPopup = window.open("/callReport.html", '_blank');
        //        var reportWinPopup = window.open("https://erp.inu.ac.kr:8443/callReport.html", '_blank');

        var interval = setInterval(function () {
            cnt++;
            if (typeof reportWinPopup.callReport === "function" || typeof reportWinPopup.callReport ===
                "object") {
                clearInterval(interval);
                reportWinPopup.callReport("https://erp.inu.ac.kr:8443/ClipReport4/callReport.jsp", params);
            } else if (cnt > 1000) {
                clearInterval(interval);
            }
        }, 50);
    }

    // 시간표 출력
    function goPrintHourCheck(typeGbn) {
        var parameter = {
            DEPTCLSFCD: '0000587',
            COLG_CD: 'I000',
            HG_CD: '0000077',
            YY: '2021',
            TMGBN: '20',
            HY_SEQ_GBN: '재학',
            STUNO: '202001330'
        };

        var reportParams = JSON.stringify(parameter);
        reportParams = window.btoa(unescape(encodeURIComponent(reportParams)));
        var cnt = 0;

        if (typeGbn == 'apply') {
            var params = {
                reportParams: reportParams,
                paramType: "query",
                filePath: "uni/cour/ttmt/ttmt0070_prn.crf"
            };
        } else {
            var params = {
                reportParams: reportParams,
                paramType: "query",
                filePath: "uni/cour/ttmt/ttmt0070_prn_basket.crf"
            };
        }

        var reportWinPopup = window.open("/callReport.html", '_blank');
        //           var reportWinPopup = window.open("https://erp.inu.ac.kr:8443/callReport.html", '_blank');


        var interval = setInterval(function () {
            cnt++;
            if (typeof reportWinPopup.callReport === "function" || typeof reportWinPopup.callReport ===
                "object") {
                clearInterval(interval);
                reportWinPopup.callReport("https://erp.inu.ac.kr:8443/ClipReport4/callReport.jsp", params);
            } else if (cnt > 1000) {
                clearInterval(interval);
            }
        }, 50);
    }

    //푸른색 계열로 색상 변경
    function changeColor(obj) {
        obj.style.backgroundColor = '#e1f1ff';
    }

    // 흰색으로 색상 원복
    function returnColor(obj) {
        obj.style.backgroundColor = 'white';
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

<form name="resultForm" action="" method="post">
    <input type="hidden" name="par_type"> <input type="hidden" name="par_haksuNo">
</form>

<form name="reportForm" action="" method="post">
    <input type="hidden" name="checkSearchParam" value="true">
    <input type="hidden" name="params">
    <input type="hidden" name="useGlio" value="false">
    <input type="hidden" name="type" value="query">
    <input type="hidden" name="reportObj">
    <input type="hidden" name="filePath">
    <input type="hidden" name="paramType">
</form>

<!--    <div id="register"> -->
<div>
    <p class="tit_sub">

        수강신청내역

    </p>
    <div class="regi_area">
        <div class="regi_top">
            <p class="noti_blue">

                (*수강신청 내역 (※삭제시 삭제할 과목의 취소버튼을 클릭하세요))

            </p>
            <p>

                <a class="btn_regiP" onclick="javascript:goPrintCheck();">확인서출력</a> <a class="btn_scheP"
                    onclick="javascript:goPrintHourCheck('apply');">시간표출력</a>

            </p>
        </div>
        <div>
            <!-- 2017.03.21 수정 -->
            <div class="leftT">
                <table summary="수강신청내역" class="dataT theadT">
                    <caption>수강신청내역</caption>
                    <colgroup>
                        <col width="35px" />
                        <col width="60px" />
                        <col width="80px" />
                        <col width="" />
                        <col width="35px" />
                        <col width="70px" />
                        <col width="200px" />
                        <col width="100px" />

                        <col width="80px" />

                        <col width="60px" />
                        <col width="60px" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th scope="col" class="first">순번</th>
                            <th scope="col">이수구분</th>
                            <th scope="col">학수번호</th>
                            <th scope="col">교과목명</th>
                            <th scope="col">학점</th>
                            <th scope="col">원어여부</th>
                            <th scope="col">요일 및 교시(강의실)</th>
                            <th scope="col">개설학과(부)</th>

                            <th scope="col">재수강 구분</th>


                            <th scope="col">교강사</th>
                            <th scope="col" class="last">취소</th>
                        </tr>
                    </thead>
                    <tbody>



                        <tr onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                            <td class="first">1</td>
                            <td>교양필수</td>
                            <td>0006433003</td>
                            <td class="ltf"><b>현대사회와빅데이터</b><br /> (The Modern Society and Big Data Analysis)</td>
                            <td>3</td>
                            <td> </td>
                            <td class="timeInfo">화 야1 야2 야3 (SM302)</td>
                            <td>[대학]교양</td>
                            <td></td>
                            <td>양태연</td>
                            <td class="last">
                                <a onclick="javascript:on_subject_delete('0006433003')" class="btn_red"
                                    style="cursor: pointer;">취소</a>
                            </td>
                        </tr>


                        <tr onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                            <td class="first">2</td>
                            <td>전공기초</td>
                            <td>0010086003</td>
                            <td class="ltf"><b>C언어</b><br /> (C language)</td>
                            <td>3</td>
                            <td> </td>
                            <td class="timeInfo">월 5 6 (SH505) 수 5 6 (SH511)</td>
                            <td>[대학]컴퓨터공학부</td>
                            <td></td>
                            <td>허혜선</td>
                            <td class="last">
                                <a onclick="javascript:on_subject_delete('0010086003')" class="btn_red"
                                    style="cursor: pointer;">취소</a>
                            </td>
                        </tr>


                        <tr onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                            <td class="first">3</td>
                            <td>전공필수</td>
                            <td>0001765002</td>
                            <td class="ltf"><b>C++언어</b><br /> (C++ Language)</td>
                            <td>3</td>
                            <td> </td>
                            <td class="timeInfo">월 7 8 (SH501) 화 8 9 (SH501)</td>
                            <td>[대학]컴퓨터공학부</td>
                            <td></td>
                            <td>전혜경</td>
                            <td class="last">
                                <a onclick="javascript:on_subject_delete('0001765002')" class="btn_red"
                                    style="cursor: pointer;">취소</a>
                            </td>
                        </tr>


                        <tr onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                            <td class="first">4</td>
                            <td>전공필수</td>
                            <td>IAA6007002</td>
                            <td class="ltf"><b>컴퓨터구조</b>
                                <font color=blue><b> [75분수업]</b></font><br /> (COMPUTER ARCHITECTURE)
                            </td>
                            <td>3</td>
                            <td> </td>
                            <td class="timeInfo">화 2B-3 (SH407) 금 5B-6 (SH407)</td>
                            <td>[대학]컴퓨터공학부</td>
                            <td></td>
                            <td>김우일</td>
                            <td class="last">
                                <a onclick="javascript:on_subject_delete('IAA6007002')" class="btn_red"
                                    style="cursor: pointer;">취소</a>
                            </td>
                        </tr>


                        <tr onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                            <td class="first">5</td>
                            <td>전공선택</td>
                            <td>0001767001</td>
                            <td class="ltf"><b>윈도우즈프로그래밍</b><br /> (Windows Programming)</td>
                            <td>3</td>
                            <td> </td>
                            <td class="timeInfo">수 1 (SH504) 목 6 7 (SH504)</td>
                            <td>[대학]컴퓨터공학부</td>
                            <td></td>
                            <td>이면섭</td>
                            <td class="last">
                                <a onclick="javascript:on_subject_delete('0001767001')" class="btn_red"
                                    style="cursor: pointer;">취소</a>
                            </td>
                        </tr>


                        <tr onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                            <td class="first">6</td>
                            <td>전공선택</td>
                            <td>0001780001</td>
                            <td class="ltf"><b>모바일소프트웨어</b><br /> (Mobile Software)</td>
                            <td>3</td>
                            <td> </td>
                            <td class="timeInfo">수 2 3 (SH408) 목 2 3 (SH408)</td>
                            <td>[대학]컴퓨터공학부</td>
                            <td></td>
                            <td>홍윤식</td>
                            <td class="last">
                                <a onclick="javascript:on_subject_delete('0001780001')" class="btn_red"
                                    style="cursor: pointer;">취소</a>
                            </td>
                        </tr>


                        <tr onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                            <td class="first">7</td>
                            <td>전공선택</td>
                            <td>IAA6020001</td>
                            <td class="ltf"><b>수치해석</b><br /> (NUMERICAL ANALYSIS)</td>
                            <td>3</td>
                            <td> </td>
                            <td class="timeInfo">월 9 (SH407) 수 7 8 (SH407)</td>
                            <td>[대학]컴퓨터공학부</td>
                            <td></td>
                            <td>김지범</td>
                            <td class="last">
                                <a onclick="javascript:on_subject_delete('IAA6020001')" class="btn_red"
                                    style="cursor: pointer;">취소</a>
                            </td>
                        </tr>


                        <tr onmouseover="javascript: changeColor(this);" onmouseout="javascript:returnColor(this);">
                            <td class="first">8</td>
                            <td>전공선택</td>
                            <td>IAA6068002</td>
                            <td class="ltf"><b>확률및통계</b>
                                <font color=blue><b> [75분수업]</b></font><br /> (PROBABILITY AND STATISTICS)
                            </td>
                            <td>3</td>
                            <td> </td>
                            <td class="timeInfo">금 7-8A 8B-9 (SH504)</td>
                            <td>[대학]컴퓨터공학부</td>
                            <td></td>
                            <td>민만식</td>
                            <td class="last">
                                <a onclick="javascript:on_subject_delete('IAA6068002')" class="btn_red"
                                    style="cursor: pointer;">취소</a>
                            </td>
                        </tr>

                    </tbody>
                </table>
            </div>
            <!-- // 2017.08.02 시간표 제거. -->
        </div>
    </div>
</div>