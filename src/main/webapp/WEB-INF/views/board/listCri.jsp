
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file = "../include/header.jsp" %>

<script type = "text/javascript"  charset="UTF-8">
     var result = '${msg}';
     
     if(result == 'SUCCESS'){
    	 alert("처리가 완료되었습니다.");
     }
    	 
</script>

<table class = "table table-boardered">
    <tr>
       <th style = "width: 10px">BNO</th>
       <th>TITLE</th>
       <th>WITER</th>
       <th>REGDATE</th>
       <th style = "width: 40px">VIEWCNT</th>
    </tr>

<c:forEach items = "${list}" var = "boardVO">
   
   <tr>
       <td>${boardVO.bno}</td>
       <td><a href = '/board/read?bno=${boardVO.bno}'>${boardVO.title}</a></td>
       <td>${boardVO.writer}</td>
       <td><fmt:formatDate pattern = "yyyy-MM-dd HH:mm" value = "${boardVO.regdate}"></fmt:formatDate></td>
       <td><span class = "badge bg-red">${boardVO.viewcnt}</span></td>
   </tr>
   
</c:forEach>
</table>


<%@ include file = "../include/footer.jsp" %>