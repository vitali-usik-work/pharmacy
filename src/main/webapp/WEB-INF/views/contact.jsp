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
      <div class="contacts">
        <h2>Контакты</h2>
        <p>Уважаемые пользователи! Указанные ниже телефонные номера не являются телефонами аптеки. Телефонные номера аптек указаны в результатах поиска (подробнее о поиске в разделе Помощь). По указанным ниже телефонам справочная информация о наличии лекарственных средств в аптеках не предоставляется. Если у Вас появился вопрос, Вы можете задать его в рубрике Вопрос-Ответ. Если Вы хотите сообщить о несоответствиях заявленного и фактического наличия или цены, сделайте это через красную иконку с восклицательным знаком в результатах поиска. Спасибо за понимание.</p>
        <ul>
          <li>220113, Минск, ул Главная, д. 00, пом. 262</li>
          <li>телефон/факс: +375 17 5557777 2255254</li>
          <li>info@pharmacy.by</li>
          <li>«Фармаси» ООО</li>
          <li>УНП 54882852</li>
        </ul>
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