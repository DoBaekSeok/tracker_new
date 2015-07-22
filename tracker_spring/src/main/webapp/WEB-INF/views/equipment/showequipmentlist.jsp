<%@ page import="com.tracker.model.dto.Equipment" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    	
    <div class="row">    
	<c:choose>
		<c:when test="${ fn:length(equipments) ne 0 }">
			<c:forEach var="equipment" items="${ equipments }">
				 <div class="col-xs-6 col-sm-3 col-md-3">
				 	<div class="team boxed-grey">
		                <div class="inner">
							<h5>${ equipment.equipName }</h5>
		                    <p class="subtitle">${ equipment.modelName }</p>
		                    <div class="avatar">
		                    	<img src="/tracker/resources/img/equipment/tractive.png" alt="" class="img-responsive" />
		                    </div>
		                    <p class="subtitle">${ equipment.equipContent }</p>
		                </div>
		            </div>		
		        </div>	
			</c:forEach>
		</c:when>
		<c:otherwise>		
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
		
					<div class="section-heading">					
						<p>등록된 제품이 없습니다.</p>
					</div>
			
				</div>
			</div>
		</c:otherwise>
	</c:choose>
	</div>