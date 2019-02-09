<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="footer" tagdir="/WEB-INF/tags/responsive/common/footer"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<c:if test="${component.visible}">
	<div class="container-fluid">
		<div class="footer__top">
            <div class="row">
                <div class="footer__left col-xs-12 col-sm-9 col-md-2 text-center">
                    <cms:pageSlot position="SiteLogo" var="logo" limit="1">
                        <cms:component component="${logo}" element="div" class="yComponentWrapper div-center logo-footer"/>
                    </cms:pageSlot>
                </div>
                <div class="footer__left col-xs-12 col-sm-9 col-md-7 footer_verticalLine">
                    <div class="row">

                        <c:forEach items="${component.navigationNode.children}" var="childLevel1">

                            <c:set var = "string1" value = "${fn:length(component.navigationNode.children)}"/>
                            <c:if test="${string1 <= 4}">
                               <c:set var = "col_footer" value = "col-sm-3"/>
                            </c:if>
                            <c:if test="${string1 > 4}">
                               <c:set var = "col_footer" value = "col-sm5"/>
                            </c:if>

                            <c:set var = "verify" value = "${fn:length(childLevel1.children)}"/>
                            <c:if test="${verify > 0}">
                                <div class="footer__nav--container col-xs-12 ${col_footer}">
                                    <div class="footer_txt uppercase">${fn:escapeXml(childLevel1.title)}</div>

                                    <ul>
                                        <c:forEach items="${childLevel1.children}" var="childLevel2">
                                            <c:forEach items="${childLevel2.entries}" var="childlink">
                                                <cms:component component="${childlink.item}" evaluateRestriction="true" element="li" class="footer_txt_2 uppercase" />
                                            </c:forEach>
                                        </c:forEach>
                                    </ul>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                </div>
                <div class="footer__right col-xs-12 col-sm-3">
                    <div class="row footer_newsletter">
                        <div class="col-12">
                            <p class="footer-news-txt"><spring:theme code="newsletter.text" /></p>
                        </div>
                        <div class="col-12">
                            <form action="/action_page.php">
                                <div class="input-group hidden-sm" width="100%">
                                    <input type="text" class="form-control input-group-input" name="search">
                                    <div class="input-group-btn">
                                        <button class="btn btn-default footer-news-txt" type="submit"><spring:theme code="newsletter.button" /></button>
                                    </div>
                                </div>
                                <div class="row hidden-md hidden-lg hidden-xs">
                                    <div class="col-xs-12"><input type="text" class="form-control input-group-input" name="search"></div>
                                    <div class="col-xs-12">
                                        <div class="input-group-btn">
                                            <button class="btn btn-default cienPorcent footer-news-txt" type="submit"><spring:theme code="newsletter.button" /></button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
		</div>
	</div>

	<div class="footer__bottom">
		<div class="footer__copyright">
			<div class="bD-back">
				<div class="row">
					<div class="col-xs-3 col-sm-2 footer_txt "><spring:theme code="text.redes.sociales" /></div>
					<div class="col-xs-9 col-sm-10">
						<div class="row">
							<div class="col-xs-2 col-sm-2">
								<img class="footer_social" alt="Facebook" width="30px" height="30px" src="${commonResourcePath}/images/iconos/WEB/redes sociales/facebook.png">
							</div>
							<div class="col-xs-2 col-sm-2">
								<img class="footer_social" alt="Twitter" width="30px" height="30px" src="${commonResourcePath}/images/iconos/WEB/redes sociales/twitter.png">
							</div>
							<div class="col-xs-2 col-sm-2">
								<img class="footer_social" alt="Youtube" width="30px" height="30px" src="${commonResourcePath}/images/iconos/WEB/redes sociales/youtube.png">
							</div>
							<div class="col-xs-2 col-sm-2">
								<img class="footer_social" alt="Instagram" width="30px" height="30px" src="${commonResourcePath}/images/iconos/WEB/redes sociales/instagram.png">
							</div>
							<div class="col-xs-2 col-sm-2">
								<img class="footer_social" alt="Pinterest" width="30px" height="30px" src="${commonResourcePath}/images/iconos/WEB/redes sociales/pinterest.png">
							</div>
							<div class="col-xs-2 col-sm-2">
								<img class="footer_social" alt="Google_plus" width="30px" height="30px" src="${commonResourcePath}/images/iconos/WEB/redes sociales/google_plus.png">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="footer__bottom">
		<div class="footer__copyright">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-3 footer-down uppercase text-center"><a>Terminos Y CONDICIONES</a></div>
                <div class="col-xs-12 col-sm-4 col-md-6 footer-down uppercase text-center"><a><spring:theme code="text.permisos" /></a></div>
                <div class="col-xs-12 col-sm-4 col-md-3 footer-down uppercase text-center"><b>
                    <spring:theme var="textHelpHtml" code="text.help" />
                    <a href="" class="help js-cart-help" data-help="${fn:escapeXml(textHelpHtml)}">${textHelpHtml}</a>
                </b></div>
            </div>
		</div>
	</div>
</c:if>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>





<%--<c:if test="${component.visible}">
	<div class="container-fluid">
	    <div class="footer__top">
	        <div class="row">
	            <div class="footer__left col-xs-12 col-sm-12 col-md-9">
	                <div class="row">
	                	<c:forEach items="${component.navigationNode.children}" var="childLevel1">
		                	<c:forEach items="${childLevel1.children}" step="${component.wrapAfter}" varStatus="i">
							   <div class="footer__nav--container col-xs-12 col-sm-3">
		                	       <c:if test="${component.wrapAfter > i.index}">
	                                   <div class="title">${fn:escapeXml(childLevel1.title)}</div>
	                               </c:if>
	                               <ul class="footer__nav--links">
	                                   <c:forEach items="${childLevel1.children}" var="childLevel2" begin="${i.index}" end="${i.index + component.wrapAfter - 1}">
	                                        <c:forEach items="${childLevel2.entries}" var="childlink" >
		                                        <cms:component component="${childlink.item}" evaluateRestriction="true" element="li" class="footer__link"/>
	                                        </c:forEach>
	                                   </c:forEach>
	                               </ul>
	                		   </div>
						    </c:forEach>
	                	</c:forEach>
	               </div>
	           </div>
	           <div class="footer__right col-xs-12 col-md-3">
	               <c:if test="${showLanguageCurrency}">
	                   <div class="row">
	                       <div class="col-xs-6 col-md-6 footer__dropdown">
	                           <footer:languageSelector languages="${languages}" currentLanguage="${currentLanguage}" />
	                       </div>
	                       <div class="col-xs-6 col-md-6 footer__dropdown">
	                           <footer:currencySelector currencies="${currencies}" currentCurrency="${currentCurrency}" />
	                       </div>
	                   </div>
	               </c:if>
	            </div>
	        </div>
	    </div>
	</div>
	
	<div class="footer__bottom">
	    <div class="footer__copyright">
	        <div class="container">${fn:escapeXml(notice)}</div>
	    </div>
	</div>
</c:if>--%>