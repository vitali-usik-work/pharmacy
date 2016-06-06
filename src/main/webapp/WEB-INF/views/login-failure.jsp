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
      <div class="login_wrapper">
        <h2>Ошибка при входе в систему.</h2>
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