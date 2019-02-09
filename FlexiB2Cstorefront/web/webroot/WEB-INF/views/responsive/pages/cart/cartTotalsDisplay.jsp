<%@ taglib prefix="cart" tagdir="/WEB-INF/tags/responsive/cart" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%-- Verified that there's a pre-existing bug regarding the setting of showTax; created issue  --%>
<div class="container">
    <div class="row">
        <div class="col-xs-3 col-sm-offset-1 col-sm-3 col-md-offset-0 col-md-2 col-lg-2">
            <div class="metodos-pago row">
                <div class="col-xs-12 metodos-pago-txt text-center"><spring:theme code="basket.page.totals.compraSegura"/></div>
                <div class="col-xs-12 metodos-pago-img text-center"><img class="footer_social" alt="compra_segura" src="${commonResourcePath}/images/iconos/WEB/UI icons/compra_segura.png"></div>
            </div>
        </div>
        <div class="col-xs-9 col-sm-6 col-md-4 col-lg-4">
            <div class="metodos-pago row">
                <div class="col-xs-12 metodos-pago-txt"><spring:theme code="basket.page.totals.metPago"/></div>
                <div class="col-xs-4 metodos-pago-img text-center"><img width="100%" alt="visa_mastercard" src="${commonResourcePath}/images/iconos/WEB/UI icons/visa_mastercard.png"></div>
                <div class="col-xs-4 metodos-pago-img text-center"><img width="100%" alt="paypal" src="${commonResourcePath}/images/iconos/WEB/UI icons/paypal.png"></div>
                <div class="col-xs-4 metodos-pago-img text-center"><img width="100%" alt="oxxo_seven" src="${commonResourcePath}/images/iconos/WEB/UI icons/oxxo_seven.png"></div>
            </div>
        </div>
        <div class="col-xs-12 col-md-6 col-md-6 col-lg-6">
            <div class="cart-voucher">
                <cart:cartVoucher cartData="${cartData}"/>
            </div>
        </div>
        <div class="col-xs-12 col-md-12 col-lg-12">
            <div class="cart-totals">
                <cart:cartTotals cartData="${cartData}" showTax="false"/>
                <cart:ajaxCartTotals/>
            </div>
        </div>
    </div>
</div>