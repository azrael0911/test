<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCommon.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="QualityFood.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div id="index">
            <section class="youtube">
                <div class="embed-responsive embed-responsive-16by9">
                    <asp:Repeater ID="Default_Repeater" runat="server">
                        <ItemTemplate>
                            <iframe class="embed-responsive-item" src='<%# DataBinder.Eval(Container.DataItem,"video_url","{0}") %>' frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </section>

            <section class="section1">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm">
                            <div class="container-fluid">
                                <div class="row">
                                    <asp:Repeater ID="Class_Repeater" runat="server">
                                        <ItemTemplate>
                                            <div class="col">
                                                <a class="scale" href="<%# Eval("class_url")%>">
                                                    <img src="images/<%# Eval("class_pic")%>" alt="<%# Eval("class_name")%>" /><span><%# Eval("class_name")%></span></a>
                                            </div>
                                           </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                                <div class="row">
                                    <asp:Repeater ID="Class_Repeaters" runat="server">
                                        <ItemTemplate>
                                            <div class="col">
                                                <a class="scale" href="<%# Eval("class_url")%>">
                                                    <img src="images/<%# Eval("class_pic")%>" alt="<%# Eval("class_name")%>" /><span><%# Eval("class_name")%></span></a>
                                            </div>
                                        </ItemTemplate>
                                    </asp:Repeater>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm">
                            <div class="certification" style="background: url(images/certification.jpg) no-repeat center center">
                                 <table>
                                    <tr>
                                        <td>
                                        	<a href="CqlCertification.aspx">
                                        		<img src="images/certification1.png" alt="CQL家樂福嚴選生鮮"/>
                                        		<img class="hover" src="images/certification1Hover.png" alt="CQL家樂福嚴選生鮮"/>
                                        	</a>
                                        </td>
                                        <td>
                                        	<a href="OrganicCertification.aspx">
                                        		<img src="images/certification2.png" alt="有機認證"/>
                                        		<img class="hover" src="images/certification2Hover.png" alt="有機認證"/>
                                        	</a>
                                        </td>
                                        <td>
                                        	<a href="TapCertification.aspx">
                                        		<img src="images/certification3.png" alt="履歷追溯"/>
                                        		<img class="hover" src="images/certification3Hover.png" alt="履歷追溯"/>
                                        	</a>
                                        </td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!--section1-->

            <section class="section2">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-sm"><a class="scale" href="FriendlyAgriculture.aspx">
                            <img src="images/indexLink5.jpg" style="width: 100%" alt="土地永續‧生態保育農業" /><span>土地永續‧生態保育農業</span></a>
                        </div>
                        <div class="col-sm"><a class="scale" href="farmerList.aspx">
                            <img src="images/indexLink6.jpg" style="width: 100%" alt="食在台灣‧本土小農故事" /><span>食在台灣‧本土小農故事</span></a>
                        </div>
                    </div>
                </div>
            </section>
            <!--section2"-->
            <!--電腦版-->
            <section id="indexSlider" class="owl-carousel">
                <asp:Repeater ID="banner_Repeater" runat="server">
                    <ItemTemplate>
                         <a href='<%# Eval("ad_redirect")%>'>
                            <img src='<%# DataBinder.Eval(Container.DataItem,"ad_pic","upimg/ad/{0}") %>' alt='<%# Eval("ad_title")%>' /></></a>
                    </ItemTemplate>
                </asp:Repeater>
            </section>
            <!--手機板--> 
            <section id="mobile_indexSlider" class="owl-carousel">
                 <asp:Repeater ID="banner1_Repeater" runat="server">
                      <ItemTemplate>
            	         <a href='<%# Eval("ad_redirect")%>'>
                            <img src='<%# DataBinder.Eval(Container.DataItem,"ad_pic_two","upimg/ad/{0}") %>' alt='<%# Eval("ad_title")%>' /></></a>
				      </ItemTemplate>
                </asp:Repeater>
            </section><!--slider-->

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
        </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
   <script>
		$(document).ready(function(){
			$('#indexSlider, #mobile_indexSlider').owlCarousel({
				items: 1,
				loop: true,
				dots: false,
				nav: false,
				autoplay: true
			});
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
		});
	</script>
</asp:Content>
