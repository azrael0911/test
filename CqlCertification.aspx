<%@ Page Title="" Language="C#" MasterPageFile="~/SiteCommon.Master" AutoEventWireup="true" CodeBehind="CqlCertification.aspx.cs" Inherits="QualityFood.CqlCertification" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<link rel="stylesheet" href="css/keyframes.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="banner" style="background: url(images/banner2.jpg);">
            <h2>家樂福嚴選生鮮</h2>
            <nav>
			  <a href="Default.aspx">Home<span>〉</span></a>
			  <a href="#">食在安心<span>〉</span></a>
			  <a href="CqlCertification.aspx">家樂福嚴選生鮮</a>
			</nav>
        </div><!--banner-->
        
        <div id="certification">
            <section class="section1">
            	<table class="pc">
					<tr>
					  <td colspan="4"><img src="images/certificationBg5.jpg" width="100%" alt="家樂福嚴選生鮮"/></td>
				    </tr>
					<tr>
					  <td><img src="images/certificationBg52.jpg" width="100%"/></td>
					  <td><a class="btn_meat" href="meat.aspx" target="_blank"><img src="images/certificationBg53.jpg" alt="家樂福嚴選肉品" width="100%"/><span></span></a></td>
					  <td><a class="btn_vegetable" href="vegetable.aspx" target="_blank"><img src="images/certificationBg54.jpg" alt="家樂福嚴選蔬果" width="100%"/><span></span></a></td>
					  <td><img src="images/certificationBg55.jpg" width="100%"/></td>
					</tr>
				</table>
           		<div class="mobile">
           			<img src="images/certificationBg5Mobile.jpg" width="100%" alt="家樂福嚴選生鮮"/>
           			<a class="btn_meat" href="meat.aspx" target="_blank"><img src="images/certificationBg53.jpg" width="100%" alt="家樂福嚴選肉品"/><span></span></a>
           			<a class="btn_vegetable" href="vegetable.aspx" target="_blank"><img src="images/certificationBg54.jpg" width="100%" alt="家樂福嚴選蔬果"/><span></span></a>
           		</div>
            </section>
            
            <section class="section5">
            	<div class="container-fluid">
            		<div class="row">
            			<div class="col-sm">
            				<div>
            					<h3>我們的使命</h3>
            					<p>近年來，從歐美到亞洲都面臨食品安全問題，狂牛症、禽流感、 農藥殘留等食安危機層出不窮。法國家樂福有鑑於此，自1992年起，為提供消費者更天然、安全的好產品，決定開發比一般自有品牌更嚴格管理的生鮮品牌 – 「家樂福嚴選生鮮」，這也是家樂福自有農產品的認證系統，從合作農民的挑選到栽種、飼養過程的管理，透過家樂福專業農業團隊及合作農民一同努力以達成100%品質控管，為消費者的食品安全做更完善的把關。</p>
            					<p>台灣家樂福於2004也將這個認證系統引進台灣，成功推出第一項認證商品：家樂福嚴選豬肉。 之後，陸陸續續推出其他肉品及蔬果產品。我們誠心希望，藉由此嚴格的品質控管，能提供好的商品讓消費者放心選購，安心食用。</p>
            				</div>
            			</div>
            			<div class="col-sm">
            				<div>
            					<h3>識別標章</h3>
            					<img src="images/certification5.png" width="100%" alt="識別標章"/>
            				</div>
            			</div>
					</div>
            	</div>
            </section><!--section2-->
            
            <section class="section6">
            	<div>
            		<h3>五大核心價值</h3>
					<p>家樂福專業農產品團隊與合作農民所開發的家樂福嚴選產品<br>都必須符合品牌五大核心價值</p>
           			<img class="pc" src="images/certification6.png" width="100%" alt="五大核心價值"/>
           			<div class="mobile">
           				<img src="images/certification6Mobile.png" alt="五大核心價值"/>
           				<div>
           					<p class="title" style="color: #f7c240">風味的保證<span>(Taste)</span></p>
          					<p>在了解顧客對產品風味的期望後，搜尋合適產區、品種及配合農民。</p>
           				</div>
           				<div>
           					<p class="title" style="color: #c1004d">風土與傳承<span>(Authenticity)</span></p>
          					<p>挑選最適合產品的栽種地點與季節來栽種或飼養農產品。同時兼具傳統農業的保存與優質產品的提供。</p>
           				</div>
           				<div>
           					<p class="title" style="color: #409ace">永續經營<span>(Sustainability)</span></p>
          					<p>挑選最適合產品的栽種地點與季節來栽種或飼養農產品。同時兼具傳統農業的保存與優質產品的提供。</p>
           				</div>
           				<div>
           					<p class="title" style="color: #d0d637">價值<span>(Quality / Price)</span></p>
          					<p>透過品規、外觀檢驗及分級標準的制定，達成產品品質與合理價格的平衡。</p>
           				</div>
           				<div>
           					<p class="title" style="color: #39a667">食品安全<span>(Food safety)</span></p>
          					<p>由『農場到賣場』全程控管。透過制定技術手冊、稽核及產品檢驗及追溯系統讓食品安全的風險降到最低。</p>
           				</div>
           			</div>
            	</div>
            </section>
            
            <section class="youtube">
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/CkiPSwva2i8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
            </section>
            
            <section class="section7">
            	<div class="container-fluid">
            		<h3>「家樂福嚴選生鮮」如何達成目標?</h3>
            		<h4>與法國交換農業經驗，透過小批量測試，逐年降低藥物/農藥的使用。</h4>
            		<div class="row">
            			<ul class="col-sm">
            				<li>每年更新技術手冊，確實記錄栽種/飼養流程，並嚴格執行改善計畫。</li>
            				<li>針對技術手冊內所製訂的內容，經過農業專業第三方公正單位稽核，並追蹤改善狀況。</li>
            				<li>委託第三方公正單位對土壤及灌溉用水施以肥力測試以及重金屬檢驗。</li>
            				<li>廢棄物、汙水合理化管理。</li>
            			</ul>
            			<ul class="col-sm">
            				<li>與農民長期密切配合，並不定期提供教育訓練課程提升專業管理技術。</li>
            				<li>所有生產流程都需顧及動物保護並確保良好成長環境。</li>
            				<li>我們的蔬果產品，用藥皆採取2倍安全採收期規。(註)</li>
            				<li>依預防原則，我們的產品皆為非轉基因動植物（非基改）。</li>
            			</ul>
            		</div>
            		<p>註: 增加一倍的安全採收期，減少有害物質殘留</p>
            	</div>
            </section>
            
            <section class="section8">
            	<div>
            		<h3>產品流程開發</h3>
           			<img class="pc" src="images/solution2.png" width="100%" alt="五大核心價值"/>
           			<img class="mobile" src="images/solution2Mobile.png" width="100%" alt="五大核心價值"/>
            	</div>
            </section>
        </div><!--content-->
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
		<script>
			$(document).ready(function(){
				$('.btn_meat').hover(function(){
					$(this).find('img').attr("src","images/certificationBg53_hover.jpg");
				},function(){
					$(this).find('img').attr("src","images/certificationBg53.jpg");
				});
				$('.btn_vegetable').hover(function(){
					$(this).find('img').attr("src","images/certificationBg54_hover.jpg");
				},function(){
					$(this).find('img').attr("src","images/certificationBg54.jpg");
				});
			});
		</script>
</asp:Content>