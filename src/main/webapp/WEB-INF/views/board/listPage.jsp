<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file = "../include/header.jsp" %>

<script type = "text/javascript">
   
   $(document).ready(function(){
	   
	   /* $(".pagination li a").click(function(){
		      event.preventDefault();
		      
		      var targetPage = $(this).attr("href");
		      var jobForm = $("#jobForm");
		      
		      jobForm.find("[name='page']").val(targetPage);
		      jobForm.attr("action", "/board/listPage").attr("method", "get");
		      
		      console.log(jobForm);
		      jobForm.submit();
	   }); */
	   
	$(".pagination li a").on("click", function(){
	      event.preventDefault();
	      
	      var targetPage = $(this).attr("href");
	      var jobForm = $("#jobForm");
	      
	      jobForm.find("[name='page']").val(targetPage);
	      jobForm.attr("action", "/board/listPage").attr("method", "get");
	      
	      console.log(jobForm);
	      jobForm.submit();
    }); 
	   
   });
	  
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
       <td><a href = '/board/readPage${pageMaker.makeQuery(pageMaker.cri.page)}&bno=${boardVO.bno}'>${boardVO.title}</a></td>
       <td>${boardVO.writer}</td>
       <td><fmt:formatDate pattern = "yyyy-MM-dd HH:mm" value = "${boardVO.regdate}"></fmt:formatDate></td>
       <td><span class = "badge bg-red">${boardVO.viewcnt}</span></td>
   </tr>
   
</c:forEach>
</table>



<div class = "text-center">
  <ul class = "pagination">
  
      <c:if test = "${pageMaker.prev}">
         <li><a href = "listPage${pageMaker.makeQuery(pageMaker.startPage - 1)}">&laquo;</a></li>
      </c:if>
      
      <c:forEach begin = "${pageMaker.startPage}" end = "${pageMaker.endPage}" var = "idx">
        <li <c:out value = "${pageMaker.cri.page == idx ? ' class = active' : ''}"/>>
            <a href = "${idx}">${idx}</a>
        </li>
      </c:forEach>
      
      <c:if test = "${pageMaker.next && pageMaker.endPage > 0}">
         <li><a href = "listPage${pageMaker.makeQuery(pageMaker.endPage + 1)}">&raquo;</a>
      </c:if>      
      
  </ul>
</div>

<form id = "jobForm">
   <input type = "hidden" name = "page" value = "${pageMaker.cri.perPageNum}">
   <input type = "hidden" name = "perPageNum" value = "${pageMaker.cri.perPageNum}">
</form>




<%@ include file = "../include/footer.jsp" %>