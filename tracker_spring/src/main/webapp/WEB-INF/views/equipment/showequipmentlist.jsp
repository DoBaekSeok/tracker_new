<%@ page import="com.tracker.model.dto.Equipment" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    	
    <div class="row">    
	<c:choose>
		<c:when test="${ fn:length(equipments) ne 0 }">
			<c:forEach var="equipment" items="${ equipments }">
				<figure class="effect-chico">									
					<div class="col-md-3 col-xs-6 wow fadeInUp" data-wow-offset="0" data-wow-delay="0.3s">
						<h2>${ equipment.modelName }</h2>						
						<a href="/tracker/resources/img/equipment/tractive.png" class="flipLightBox">
						<img src="/tracker/resources/img/equipment/tractive.png" class="img-responsive" alt="">
						</a>
						<p>${ equipment.equipContent }</p>
					</div>
				</figure>				
			</c:forEach>
		</c:when>
		<c:otherwise>		
				<div class="text-center">
					<h2>등록된 제품이 없습니다.</h2>					
				</div>									
		</c:otherwise>
	</c:choose>
	</div>