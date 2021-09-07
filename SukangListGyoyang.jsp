<div id="sinSukang_gyoyang_top">



    <html>

    <head>
        <base target="sub_base">
        <title>인천대학교 교양과목 수강신청</title>
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
        <script language="JavaScript">
            function on_reloded() {
                var selCptnGbn = document.forms[0].cptnGbn.value;
                if (selCptnGbn == "10" || selCptnGbn == "11") { //교양필수 교양필수(계절)
                    document.all.lbText1.style.display = "";
                    document.all.lbText2.style.display = "";
                    document.all.lbText3.style.display = "";
                    document.all.lbCombo.style.display = "";
                    document.all.cptnFldGbn1.style.display = "";
                    document.all.cptnFldGbn.style.display = "none";
                } else if (selCptnGbn == "20" || selCptnGbn == "21") { //교양선택 교양선택(계절)
                    document.all.lbText1.style.display = "";
                    document.all.lbText2.style.display = "";
                    document.all.lbText3.style.display = "";
                    document.all.lbCombo.style.display = "";
                    document.all.cptnFldGbn1.style.display = "none";
                    document.all.cptnFldGbn.style.display = "";
                } else {
                    document.all.lbText1.style.display = "none";
                    document.all.lbText2.style.display = "none";
                    document.all.lbText3.style.display = "none";
                    document.all.lbCombo.style.display = "none";
                    document.all.cptnFldGbn1.style.display = "none";
                    document.all.cptnFldGbn.style.display = "none";

                    document.all.cptnFldGbn.value = "0";
                }
            }

            function on_search() {
                var selCptnGbn = document.forms[0].cptnGbn.value;
                var getIsuAreaCd = document.forms[0].cptnFldGbn.value;
                var setSearchUrl = "";

                if (selCptnGbn == "10" || selCptnGbn == "11") { //교양필수 교양필수(계절)
                    getIsuAreaCd = document.forms[0].cptnFldGbn1.value;
                }

                if (selCptnGbn != 0) {
                    if (selCptnGbn == "10" || selCptnGbn == "11") {
                        if (getIsuAreaCd != 0) {
                            setSearchUrl = "SukangListGyoyangList.jsp?as_cptnGbn=" + selCptnGbn + "&as_cptnFldGbn=" +
                                getIsuAreaCd;
                        } else {
                            alert("이수영역을 선택하시고 '조회'를 누르세요");
                            return;
                        }
                    } else if (selCptnGbn == "20" || selCptnGbn == "21") {
                        if (getIsuAreaCd != 0) {
                            setSearchUrl = "SukangListGyoyangList.jsp?as_cptnGbn=" + selCptnGbn + "&as_cptnFldGbn=" +
                                getIsuAreaCd;
                        } else {
                            alert("이수영역을 선택하시고 '조회'를 누르세요");
                            return;
                        }
                    } else {
                        setSearchUrl = "SukangListGyoyangList.jsp?as_cptnGbn=" + selCptnGbn;
                    }
                } else {
                    alert("이수구분을 선택하시고 '조회'를 누르세요");
                    return;
                }

                NetFunnel_Action({
                    //             service_id:"service_1",
                    action_id: "gyoyang_search",
                    //             use_fame_block:true,
                    //             popup_target:top
                    user_data: "202001330"
                }, function (ev, ret) {
                    if (setSearchUrl == "") {
                        return;
                    } else {
                        $("#sinSukang_gyoyang_bottom").load("SukangListGyoyangList.jsp", {
                            'as_cptnGbn': selCptnGbn,
                            'as_cptnFldGbn': getIsuAreaCd
                        });
                    }
                });
            }

            $(document).ready(function () {
                NetFunnel_Complete();
            });

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
    </head>

    <body leftmargin="5" topmargin="0" oncontextmenu="return false" onselectstart="return false">
        <form name="form1">
            <table border="0" cellpadding="0" cellspacing="0" height="30" style="width: 100%;">
                <tr height="30">
                    <td width="1" bgcolor="#D8E9F9"></td>
                    <td width="3" bgcolor="#FFFFFF"></td>
                    <td width="6" bgcolor="#F1F7FD"></td>
                    <td width="905" bgcolor="#F1F7FD" align="left" valign="middle">
                        <table cellpadding="0" cellspacing="0" border="0"
                            style="font-weight: bold; font-size: 9pt; font-family: 굴림; text-align: center;">
                            <tr height="30">
                                <td width="10"></td>
                                <td style="color: #5D7287;">>> 교양과목</td>
                                <td width="10"></td>
                                <td style="color: #5D7287;">→</td>
                                <td width="10"></td>
                                <td style="color: #5D7287;"><select name=cptnGbn onChange="javaScript:on_reloded();"
                                        style="color: #5D7287; font-weight: bold; font-size: 9pt; font-family: 굴림; text-align: center;">
                                        <option value="0">이수구분</option>
                                        <option value="10">교양필수</option>
                                        <option value="20">교양선택</option>
                                        <option value="50">교직</option>
                                        <option value="70">군사학</option>
                                        <option value="80">일반선택</option>
                                    </select></td>
                                <td width="10"></td>
                                <td id="lbText1" style="display: none; color: #5D7287;">→</td>
                                <td id="lbText2" width="10" style="display: none;"></td>
                                <td id="lbCombo" style="display: none; color: #5D7287;"><select name="cptnFldGbn1"
                                        id="cptnFldGbn1"
                                        style="display: none; color: #5D7287; font-weight: bold; font-size: 9pt; font-family: 굴림; text-align: center;">
                                        <option value="0">이수영역</option>

                                        <!-- 교양필수 시작 -->
                                        <option value="101">기초교양</option>
                                        <option value="114">INU핵심리더십</option>
                                        <option value="112">INU핵심창의융합</option>
                                        <option value="115">INU핵심문제해결</option>
                                        <option value="116">INU핵심의사소통</option>
                                        <option value="117">INU핵심글로벌</option>
                                        <!-- 교양필수 끝 -->
                                    </select> <select name="cptnFldGbn" id="cptnFldGbn"
                                        style="display: none; color: #5D7287; font-weight: bold; font-size: 9pt; font-family: 굴림; text-align: center;">
                                        <option value="0">이수영역</option>
                                        <option value="157">INU인성</option>
                                        <option value="158">언어와문학</option>
                                        <option value="152">과학과기술</option>
                                        <option value="153">역사와문화</option>
                                        <option value="154">인간과사회</option>
                                        <option value="159">예술과스포츠</option>
                                    </select></td>
                                <td id="lbText3" width="10" style="display: none;"></td>
                                <td width="50">
                                    <table cellpadding="0" cellspacing="0" border="0" width="50" height="21"
                                        bgcolor="#EAEAEA"
                                        style="border-top: 1px solid #C9D7D4; border-left: 1px solid #C9D7D4; border-right: 1px solid #9D9DA1; border-bottom: 1px solid #9D9DA1;">
                                        <tr>
                                            <td OnClick="javaScript:on_search();" OnKeyDown="javaScript:on_search();"
                                                style="border-top: 1px solid #FFFFFF; border-left: 1px solid #FFFFFF; cursor: pointer; font-weight: bold; font-size: 9pt; font-family: 굴림; text-align: center; color: #5D7287;">
                                                조회</td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="6" bgcolor="#F1F7FD"></td>
                    <td width="3" bgcolor="#FFFFFF"></td>
                    <td width="1" bgcolor="#D8E9F9"></td>
                </tr>
            </table>
        </form>
    </body>

    </html>

</div>
<div id="sinSukang_gyoyang_bottom">
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">



    <html>

    <head>
        <title>sukang_sin_gyobase.jsp</title>
        <script language="javascript">
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
    </head>

    <body leftmargin="5" topmargin="0" oncontextmenu="return false" onselectstart="return false">
        <table border="0" cellpadding="0" cellspacing="0"
            style="font-weight:bold; font-size:11pt; font-family:굴림; text-align:center;width: 100%;">
            <tr height="284">
                <td width="1" bgcolor="#D8E9F9"></td>
                <td width="3" bgcolor="#FFFFFF"></td>
                <td width="6" bgcolor="#F1F7FD"></td>
                <td width="100%" bgcolor="#F1F7FD" align="left" valign="top">

                    <br>
                    &thinsp;&thinsp;&thinsp;&thinsp;&thinsp;* <수강신청> 교양과목 : 교필, 교선, 교직, 군사학, 일반선택 등.<br>
                        <br>
                        &thinsp;&thinsp;&thinsp;&thinsp;&thinsp;▒ <font color="blue">교양필수, 교양선택 교과목에 대한 수강문의는 기초교육팀으로
                            하시기 바랍니다.</font><br>
                        &thinsp;&thinsp;&thinsp;&thinsp;&thinsp;▒ <font color="blue">학과에 문의하여 지도를 받은 후 수강신청 하시기 바랍니다.
                        </font><br>
                        &thinsp;&thinsp;&thinsp;&thinsp;&thinsp;▒ 화면에서 원하는 조건을 선택하시고 조회를 누르세요.<br>
                        &thinsp;&thinsp;&thinsp;&thinsp;&thinsp;▒ 영역선택에 교양선택을 지정하면 교양선택과목의 영역별 지정 조회가 가능 합니다.<br>
                        &thinsp;&thinsp;&thinsp;&thinsp;&thinsp;▒ 복학(특례편입학생 포함), 편입학, 재입학, 재이수, 재수강 등 <br>
                        &thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;교양필수
                        기초교양(대학영어2, 글쓰기이론과실제, 대학영어회화2)을<br>
                        &thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;수강해야
                        하는 학생은 수강대상 학과와 상관없이 여석이 있는 강좌에 수강신청 하시기 바랍니다.<br>

                </td>
                <td width="6" bgcolor="#F1F7FD"></td>
                <td width="3" bgcolor="#FFFFFF"></td>
                <td width="1" bgcolor="#D8E9F9"></td>
            </tr>
            <tr height="6">
                <td width="1" bgcolor="#D8E9F9"></td>
                <td width="3" bgcolor="#FFFFFF"></td>
                <td width="6" bgcolor="#F1F7FD"></td>
                <td width="905" bgcolor="#F1F7FD"></td>
                <td width="6" bgcolor="#F1F7FD"></td>
                <td width="3" bgcolor="#FFFFFF"></td>
                <td width="1" bgcolor="#D8E9F9"></td>
            </tr>
            <tr height="3">
                <td width="1" bgcolor="#D8E9F9"></td>
                <td width="3" bgcolor="#FFFFFF"></td>
                <td width="6" bgcolor="#FFFFFF"></td>
                <td width="905" bgcolor="#FFFFFF"></td>
                <td width="6" bgcolor="#FFFFFF"></td>
                <td width="3" bgcolor="#FFFFFF"></td>
                <td width="1" bgcolor="#D8E9F9"></td>
            </tr>
            <tr height="1">
                <td width="1" bgcolor="#D8E9F9"></td>
                <td width="3" bgcolor="#D8E9F9"></td>
                <td width="6" bgcolor="#D8E9F9"></td>
                <td width="905" bgcolor="#D8E9F9"></td>
                <td width="6" bgcolor="#D8E9F9"></td>
                <td width="3" bgcolor="#D8E9F9"></td>
                <td width="1" bgcolor="#D8E9F9"></td>
            </tr>
        </table>
    </body>

    </html>
</div>