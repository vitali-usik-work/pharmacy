<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf8">
  <title>pharmacy.by</title>
  <link href="${pageContext.request.contextPath}/resources/css/pharmacy.css" rel="stylesheet" type="text/css"/>

</head>
<body>

<!-- page container with header and main part -->
<div class="container_wrapper">
  <div class="header_wrapper">
    <%@ include file="jspf/header.jspf" %>
  </div>
  <div class="content_wrapper">
    <div class="content">
      
      <div class="drugs_wrapper">
        <c:if test="${!empty drug}">
          <div class="drug_page">
            <h3>${drug.name }</h3>
            <div class="drug_page_img">
              <img src="${drug.drugImg }">
            </div>
            <p>${drug.desc }</p>
            <p><b>Производитель:</b> ${drug.producer }, ${drug.country }</p>
            <p><b>Дозировка:</b> ${drug.dosage }</p>
            <p>Продается <b>${drug.isPrescription }</b></p>
            <p><b>Тип:</b> ${drug.type }</p>
            <p><a href="${pageContext.request.contextPath}/order/${drug.id}">Заказать</a></p>
          </div>
        </c:if>
      </div>
     
    </div>
  </div>
</div>
<!-- /page container with header and main part -->
<div class="footer_wrapper">
  <%@ include file="jspf/footer.jspf" %>
</div>

</body>
</html>