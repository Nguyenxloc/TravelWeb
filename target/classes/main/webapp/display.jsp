<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
     <p>Thong tin sinh vien: </p>
     <p>Ho ten: ${sinhVien.name}</p>
     <p>for each</p>
      <c:forEach varStatus="i" items="${lstSv}" var="sinhVien">
           <p>${i.index} - ${sinhVien.name} - ${sinhVien.addr}</p>
      </c:forEach>

</body>
</html>