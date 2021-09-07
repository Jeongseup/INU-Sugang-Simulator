<div id="sinSukang_custom_top">


    <script type="text/javascript">
        function on_search_custom() {
            var custom = document.forms[0].custom.value;
            var customCnt = document.forms[0].custom.value.length;

            if (custom != '' && custom != null && customCnt > 1) {
                NetFunnel_Action({
                    //                 service_id : "service_1",
                    action_id: "custom_search",
                    //                 use_fame_block : true,
                    //                             popup_target : top
                    user_data: "202001330"
                }, function (ev, ret) {
                    $("#sinSukang_custom_bottom").load("SukangListCustomList.jsp", {
                        'as_custom': custom
                    });
                });
            } else
                alert("과목명(코드)를 입력 하시고 '조회'를 누르세요");
        }

        $(document).ready(function () {
            NetFunnel_Complete();
        });

        function onKeyDown() {
            if (event.keyCode == 13) {
                on_search_custom();
                return false;
            }
            return true;
        }

        function click() {
            if ((event.button == 2) || (event.button == 3)) {
                alert("오른쪽 마우스 사용할 수 없습니다.");
                return false;
            }
        }
        document.onmousedown = click;

        function on_ctrl_down() {
            // 		    	if((event.ctrlKey) || (event.shiftKey)) {   2017-06-14  전산실 제외 요청.
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
    <form name="form1" onsubmit="return false;">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%;">
            <tr height="30" width="925">
                <td width="1" bgcolor="#D8E9F9"></td>
                <td width="3" bgcolor="#FFFFFF"></td>
                <td width="6" bgcolor="#F1F7FD"></td>
                <td width="905" bgcolor="#F1F7FD" align="left" valign="middle">
                    <table height="30" cellpadding="0" cellspacing="0" border="0" align="left" valign="middle"
                        style="font-weight: bold; font-size: 9pt; font-family: 굴림; text-align: center;">
                        <tr>
                            <td width="10"></td>
                            <td style="color: #5D7287;">>> 과목명(코드)조회</td>
                            <td width="10"></td>
                            <td style="color: #5D7287;">→</td>
                            <td width="10"></td>
                            <td style="color: #5D7287;"><input type="text" id="custom" name="custom"
                                    onkeydown="javaScript:onKeyDown();"></td>
                            <td width="10"></td>
                            <td width="50">
                                <table cellpadding="0" cellspacing="0" border="0" width="50" height="21"
                                    bgcolor="#EAEAEA"
                                    style="border-top: 1px solid #C9D7D4; border-left: 1px solid #C9D7D4; border-right: 1px solid #9D9DA1; border-bottom: 1px solid #9D9DA1;">
                                    <tr>
                                        <td OnClick="javaScript:on_search_custom();"
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


</div>
<div id="sinSukang_custom_bottom">
    <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2//EN">



    <html>

    <head>
        <title></title>
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
            style="font-weight:bold; font-size:11pt; font-family:굴림; text-align:center; width: 100%;">
            <tr height="284">
                <td width="1" bgcolor="#D8E9F9"></td>
                <td width="3" bgcolor="#FFFFFF"></td>
                <td width="6" bgcolor="#F1F7FD"></td>
                <td width="905" bgcolor="#F1F7FD" align="left" valign="top">

                    <br>
                    &thinsp;&thinsp;&thinsp;&thinsp;&thinsp;* <수강신청> 과목명(코드) 개설강좌리스트 입니다.<br>
                        <br>
                        &thinsp;&thinsp;&thinsp;&thinsp;&thinsp;▒ 2 글자 이상의 과목명 또는 학수번호를 입력하신 후 조회를 누르세요.<br>
                        <!--&thinsp;&thinsp;&thinsp;&thinsp;&thinsp;▒ <font color="blue">타 학과 과목 및 주야 교차, OCU(열린사이버대학)과목 신청은 2월 21일(화)</font><br>
                        &thinsp;&thinsp;&thinsp;&thinsp;&thinsp;▒ <font color="blue">13:00부터 가능합니다.(부전공 포함).</font>-->

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