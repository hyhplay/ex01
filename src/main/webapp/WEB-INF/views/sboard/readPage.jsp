<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file = "../include/header.jsp" %>

<script type = "text/javascript">
$(document).ready(function(){
       /* var formObj = $("form[role='form']");
       
       console.log(formObj);
       
       $(".btn-warning").on("click", function(){
    	   formObj.attr("action","/board/modify");
    	   formObj.attr("method","get");
    	   formObj.submit();
       });
       
       $(".btn-danger").on("click", function(){
    	   formObj.attr("action", "/board/remove");
    	   formObj.submit();
       });
       
       $(".btn-primary").on("click", function(){
    	   self.location = "/board/listAll";
       }); */
       
       var formObj = $("form[role='form']");
       
       console.log(formObj);
       
       /* $(".goListBtn").on("click", function(){
    	   formObj.attr("method","get");
    	   formObj.attr("action","/board/listPage");
    	   formObj.submit();
       });
       
       $(".removeBtn").on("click", function(){
    	   formObj.attr("action","/board/removePage");
    	   formObj.submit();
       });
       
       $(".modifyBtn").on("click", function(){
    	   formObj.attr("action", "/board/modifyPage");
    	   formObj.attr("method", "get");
    	   formObj.submit();
       }); */
       
       $(".btn-warning").on("click", function(){
    	   formObj.attr("action", "/sboard/modifyPage");
    	   formObj.attr("method", "get");
    	   formObj.submit();
       });
       
       $(".btn-danger").on("click", function(){
    	   formObj.attr("action", "/sboard/removePage");
    	   formObj.submit();
       });
       
       $(".btn-primary").on("click", function(){
    	   formObj.attr("method","get");
    	   formObj.attr("action","/sboard/list");
    	   formObj.submit();
       });
});
</script>

  <form role= "form" method = "post">
      <input type = "hidden" name = "bno" value = "${boardVO.bno}">
  </form>

  <div class = "box-body">
     <div class = "form-group">
         <label for = "exampleInputEamil">Title</label>
         <input type = "text" name = "title" class = "form-control" value = "${boardVO.title}" readonly = "readonly">
     </div>
     <div class = "form-group">
         <label for = "exampleInputPassword1">Content</label>
         <textarea class = "form-control1" name = "content" rows = "3" readonly = "readonly">${boardVO.content}</textarea> 
     </div>
     <div class = "form-group">
        <label for = "exampleInputEamil1">Writer</label> 
        <input type = "text" name = "writer" class = "form-control" value = "${boardVO.writer}" readonly = "readonly">
     </div>
  </div>
  
  <!-- /.box-body -->
  <div class = "box-footer">
     <button type = "submit" class = "btn btn-warning modifyBtn">Modify</button>
     <button type = "submit" class = "btn btn-danger removeBtn">REMOVE</button>
     <button type = "submit" class = "btn btn-primary goListBtn">GO LIST</button>
  </div>
  
  <form role = "form" action = "modifyPage" method = "POST">
     <input type = "hidden" name = "bno" 			   value = "${boardVO.bno}">
     <input type = "hidden" name = "page" 			   value = "${cri.page}">
     <input type = "hidden" name = "perPageNum" value = "${cri.perPageNum}">
     <input type = "hidden" name = "searchType"    value = "${cri.searchType}">
     <input type = "hidden" name = "keyword"        value = "${cri.keyword}">
  </form>

<%@ include file = "../include/footer.jsp" %>