<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCommon.Master" AutoEventWireup="true" CodeBehind="farmerList.aspx.cs" Inherits="QualityFood.farmerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="banner" style="background: url(images/banner4.jpg) center;">
        <h2>在地小農</h2>
        <nav>
            <a href="Default.aspx">Home<span>〉</span></a>
            <a>在地小農</a>
        </nav>
    </div>
    <div id="farmer">
        <section class="selectArea">
            <select title="種類" multiple="multiple" id="select1" class="selectpicker" data-size="5" data-actions-box="true" data-selected-text-format="count"></select>
            <input type="hidden" name="hselect1" id="hselect1" value="" data-num="1">
            <select title="地區" multiple="multiple" id="select2" class="selectpicker" data-size="5" data-actions-box="true" data-selected-text-format="count"></select>
            <input type="hidden" name="hselect2" id="hselect2" value="" data-num="2">
            <button type="button" id="btnFarmer" runat="server" class="search">搜尋</button>
        </section>

        <section class="farmerList">
            <div id="container" class="container-fluid" runat="server">
            </div>
        </section>
        <input type="hidden" name="lastpage" id="lastpage" value="">
        <asp:Label ID="ddlType" runat="server" Text="" CssClass="none"></asp:Label><asp:Label ID="ddlTypeNum" runat="server" Text="" CssClass="none"></asp:Label><asp:Label ID="ddlArea" runat="server" Text="" CssClass="none"></asp:Label>
        <asp:Label ID="ddlAreaNum" runat="server" Text="" CssClass="none"></asp:Label>
        <asp:TextBox ID="txtArea" runat="server" CssClass="none"></asp:TextBox>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    <script type="text/javascript">
        var pages = 0, window_height, document_height, window_scrollTop, container = '.container-fluid';

        $(function () {
            pagedata(pages);
            //add option
            var type = $('#<%=ddlType.ClientID %>').html();
            var typenum = $('#<%=ddlTypeNum.ClientID %>').html();
            if (type != null) {
                var arrType = type.split(',');
                var arrTypeNum = typenum.split(',');
                for (var i = 0; i < arrType.length - 1; i++) {
                    $("#select1").append($("<option></option>").attr("value", arrTypeNum[i]).text(arrType[i]));
                }
            }
            var area = $('#<%=ddlArea.ClientID %>').html();
            var areanum = $('#<%=ddlAreaNum.ClientID %>').html();
            if (area != null) {
                var arrArea = area.split(',');
                var arrAreaNum = areanum.split(',');
                for (var i = 0; i < arrArea.length - 1; i++) {
                    $("#select2").append($("<option></option>").attr("value", arrAreaNum[i]).text(arrArea[i]));
                }
            }

            $('select').each(function () {
                var sid = $('#h' + $(this).attr('id'));
                if (sid.val() != '' && sid.val()!=undefined) { selectcheck(sid.attr('data-num')); }
            });
            
            $('.selectpicker').on('changed.bs.select', function (e, clickedIndex, isSelected, previousValue) {
                $('#h' + $(this).attr('id')).val($(this).selectpicker('val'));
                if ($('#h' + $(this).attr('id')).val() != "") {
                   
                }

            });
        });

        $('#<%=btnFarmer.ClientID%>').click(function () {
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
                url: 'farmerList.aspx?page=' + pages + '&Type=' + $('#hselect1').val() + '&Area=' + $('#hselect2').val(),
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
                   
                }
            });
        }
    </script>
</asp:Content>
