<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCommon.Master" AutoEventWireup="true" CodeBehind="pdList.aspx.cs" Inherits="QualityFood.pdList" %>
222
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner" style="background: url(images/banner3.jpg);">
        <h2 id="banner_title" runat="server"></h2>
        <nav>
            <a href="Default.aspx">Home<span>〉</span></a>
            <a href="pdList.aspx?pdClass=1" id="pdDefault1" runat="server">真食嚴選</a>
            <a href="pdList.aspx?pdClass=4" id="pdOther" runat="server">進口蔬果</a>
        </nav>
    </div>
  
    <div id="pd">
        <section class="module module_pdList_circle">
            <h3>當季水果推薦</h3>
            <h4>食候對！最好吃！</h4>
            <div class="slider owl-carousel">
                <asp:Repeater ID="fruit_Reapeater" runat="server">
                    <ItemTemplate>
                        <a href='<%# Eval("ad_redirect")%>'>
                            <img src='<%# DataBinder.Eval(Container.DataItem,"ad_pic","upimg/ad/{0}") %>' alt='<%# Eval("ad_title")%>' /></></a>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </section>
        <!--module_pdList_circle-->
        <section class="pdList">
            <section class="selectArea">
                <ul>
                    <li id="pdList_Li" class="type" runat="server">
                        <a class="type1"></a>
                        <a class="type2"></a>
                        <a class="type3"></a>
                    </li>
                    <li>
                        <select title="生產月份" id="select1" class="selectpicker">
                            <option value="0">生產月份</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>
                        <input type="hidden" name="hselect1" id="hselect1" value="" data-num="1">
                        <select title="地區" multiple="multiple" id="select2" class="selectpicker" data-size="5" data-actions-box="true" data-selected-text-format="count" data-dropdown-align-right="auto"></select>
                        <input type="hidden" name="hselect2" id="hselect2" value="" data-num="2">
                        <select title="種類" multiple="multiple" id="select3" class="selectpicker" data-size="5" data-actions-box="true" data-selected-text-format="count" data-dropdown-align-right="true"></select>
                        <input type="hidden" name="hselect3" id="hselect3" value="" data-num="3">

                        <button type="button" id="btnSearch" runat="server" class="search">搜尋</button>
                    </li>
                </ul>
            </section>
            <div class="MsgDiv" style="height: 40px; width: 100%; line-height: 30px; text-align: center;">
                <asp:Label ID="Msg" runat="server" Text=""></asp:Label></div>
            <div class="container-fluid" id="container" runat="server">
            </div>

        </section>
        <!--section2-->
        <input type="hidden" name="lastpage" id="lastpage" value="">
        <asp:Label ID="ddlpdType" runat="server" Text="" CssClass="none"></asp:Label>
        <asp:Label ID="ddlpdTypeNum" runat="server" Text="" CssClass="none"></asp:Label>
        <asp:Label ID="ddlArea" runat="server" Text="" CssClass="none"></asp:Label>
        <asp:Label ID="ddlAreaNum" runat="server" Text="" CssClass="none"></asp:Label>
        <asp:TextBox ID="txtTag" runat="server" CssClass="none"></asp:TextBox>
        <asp:Label ID="pdClass" runat="server" Text="" CssClass="none"></asp:Label>

    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <script type="text/javascript">
        var url = location.href;//讀取參數
        if (url.indexOf('?') != -1) {
            var _arr = url.split('?');
            var arry = _arr[1].split('=');
            var type = ".type" + arry[1];
            $(type).addClass('active');
        }
      
        var pages = 0, window_height, document_height, window_scrollTop, container = '.container-fluid';
        $(function () {
            pagedata(pages);
            $('.selectArea .type a').click(function () {
                $(this).toggleClass('active');
            });
            //輪播
            $('.module_pdList_circle .slider').owlCarousel({
                dots: false,
                nav: true,
                loop: true,
                margin: 20,
                autoplay: true,
                responsive: {
                    0: {
                        items: 1
                    },
                    600: {
                        items: 4
                    }
                }
            });

            //add option
            //地區
            var area = $('#<%=ddlArea.ClientID %>').html();
            var areanum = $('#<%=ddlAreaNum.ClientID %>').html();
            if (area != null) {
                var arrArea = area.split(',');
                var arrAreaNum = areanum.split(',');
                for (var i = 0; i < arrArea.length - 1; i++) {
                    $("#select2").append($("<option></option>").attr("value", arrAreaNum[i]).text(arrArea[i]));
                }
            }
            //種類
            var pdtype = $('#<%=ddlpdType.ClientID %>').html();
            var pdtypenum = $('#<%=ddlpdTypeNum.ClientID %>').html();
            if (pdtype != null) {
                var arrpdType = pdtype.split(',');
                var arrpdTypeNum = pdtypenum.split(',');
                for (var i = 0; i < arrpdType.length - 1; i++) {
                    $("#select3").append($("<option></option>").attr("value", arrpdTypeNum[i]).text(arrpdType[i]));
                }
            }
            //add option end
            $('select').each(function () {
                var sid = $('#h' + $(this).attr('id'));
                if (sid.val() != '' && sid.val() != undefined) { selectcheck(sid.attr('data-num')); }
            });
            $('.selectpicker').on('changed.bs.select', function (e, clickedIndex, isSelected, previousValue) {
                $('#h' + $(this).attr('id')).val($(this).selectpicker('val'));
                if ($('#h' + $(this).attr('id')).val() != "") {

                }
            });
        });

        $('#<%=btnSearch.ClientID%>').click(function () {
            var str = "";
            $('#<%=Msg.ClientID%>').html(str);
            if ($('#<%=pdClass.ClientID%>').html() != "4") {
                var result = "";
                var t1 = $('.type1').attr('class');
                //判斷是否active
                if (t1.indexOf("active") >= 0) {
                    result += "1,";
                }
                else {
                    result += "0,";
                }
                var t2 = $('.type2').attr('class');
                if (t2.indexOf("active") >= 0) {
                    result += "1,";
                }
                else {
                    result += "0,";
                }
                var t3 = $('.type3').attr('class');
                if (t3.indexOf("active") >= 0) {
                    result += "1";
                }
                else {
                    result += "0";
                }
                $('#<%=txtTag.ClientID %>').val(result);
            }
            pagedata(0);
            $('#lastpage').val('');
            $(container).html('');
        });

        $(window).scroll(function () {
            window_height = $(window).height();
            window_scrollTop = $(window).scrollTop();
            document_height = $(document).height();
            if (window_height + window_scrollTop >= document_height - 100) {
                if ($('#lastpage').val() == "") {
                    pagedata(pages);
                }
            }
        });

        function selectcheck(sid) {
            var sel1 = ($('#hselect' + sid).val()).split(',');
            for (var sl = 0; sl < sel1.length; sl++) {
                $('#select' + sid + ' option[value=' + sel1[sl] + ']').attr('selected', 'selected');
                if ($('#hselect' + sid).val() == '')
                    $('#select' + sid).selectpicker({ noneSelectedText: $('#select' + sid).attr('title') });

            }

        }

        function pagedata(pnum) {
            pages = pnum + 1;
            $.ajax({
                type: 'POST',
                url: 'pdList.aspx?page=' + pages + '&pdType=' + $('#hselect3').val() + '&Area=' + $('#hselect2').val() + '&Month=' + $('#hselect1').val() + '&pdClass=' + $('#<%=pdClass.ClientID%>').html()
                    + '&pdTag=' + $('#<%=txtTag.ClientID%>').val(),
                dataType: "text",
                success: function (response) {
                    listhtml = $(response).find(container).html();
                    if (listhtml == "") {
                        if ($('#lastpage').val() == "") {
                            $('#lastpage').val(pages);
                            //alert('文章已經是最後了!');

                        }

                    } else {
                        $(container).append(listhtml);
                        $(container).find('.row').animate({ 'opacity': '1' }, 500);

                    }
                    var box = $(container).html();
                    if (box == "") {
                        var txt = "無符合搜尋的資料";
                        $('#<%=Msg.ClientID%>').html(txt);
                    }
                }
            });
        }
    </script>
</asp:Content>
