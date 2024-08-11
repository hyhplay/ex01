<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file = "../include/header.jsp" %>

<script type = "text/javascript">
  $(document).ready(function(){
	   var formObj = $("form[role='form']");
	   
	   console.log(formObj);
	   
	   $(".btn-warning").on("click", function(){
		   self.location = "/sboard/list?page=${cri.page}&perPageNum=${cri.perPageNum}&searchType=${cri.searchType}&keyword=${cri.keyword}";
	   });
	 
	   $(".btn-primary").on("click", function(){
		   formObj.submit();
	   });
  });
</script>


<form role="form" action = "modifyPage" method = "post">

    <input type = "hidden" name = "page" value = "${cri.page}">
    <input type = "hidden" name = "perPageNum" value = "${cri.perPageNum}">
    <input type = "hidden" name = "searchType" value = "${cri.searchType}">
    <input type = "hidden" name = "keyword"  value = "${cri.keyword}">
    
    <div class = "box-body">
     <div class = "form-group">
         <label for = "exampleInputEamil">Title</label>
         <input type = "text" name = "title" class = "form-control" value = "${boardVO.title}" >
     </div>
     <div class = "form-group">
         <label for = "exampleInputPassword1">Content</label>
         <textarea class = "form-control1" name = "content" rows = "3" >${boardVO.content}</textarea> 
     </div>
     <div class = "form-group">
        <label for = "exampleInputEamil1">Writer</label> 
        <input type = "text" name = "writer" class = "form-control" value = "${boardVO.writer}" readonly = "readonly">
     </div>
  </div>
     <div class = "box-body">
        <label for = "exampleInputEmail">BNO</label>
        <input type = "text" name = "bno" class = "form-control" value = "${boardVO.bno}" readOnly = "readOnly">
     </div>

</form>


<!-- /.box-body -->
  <div class = "box-footer">
     <button type = "submit" class = "btn btn-primary">MODIFY</button>
     <button type = "submit" class = "btn btn-warning">CANCEL</button>
  </div>






<%@ include file = "../include/footer.jsp" %>