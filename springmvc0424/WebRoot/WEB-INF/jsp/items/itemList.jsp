<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script>
function update()
{
	//alert("----");
    document.mainForm.action="${pageContext.request.contextPath }/items/editItems.action";
}

function deleteItems()
{
	
	 document.mainForm.action="${pageContext.request.contextPath }/items/deleteItems.action";
	 document.mainForm.submit();
}



</script>


</head>
<body>

<form action="${pageContext.request.contextPath }/items/queryItems.action" name="mainForm" method="post">
<div align="center" style="margin-top:100px">
<table>
<tr>
<td>
Item Name:&nbsp;<input name="itemsCustom.name">

<select name="itemtype">
<c:forEach items="${itemtype}" var="type">
<option value="${type.key }">${type.value}</option>

</c:forEach>
</select>

<input type="submit" value="Search">&nbsp;&nbsp;&nbsp;
</td>
</tr>

<tr>
<td>
<input type="submit" value="Add">&nbsp;&nbsp;&nbsp;
<input type="submit" value="update" onclick="update()">&nbsp;&nbsp;&nbsp;
<input type="button" value="delete"  onclick="deleteItems()">
</td>
</tr>
</table>



</div>

<table border="1" align="center" style="margin-top:10px">
    <tr>
        <td align="center">Choose</td>
        <td>Item Name</td>
        <td>Item Price</td>
        <td>DateTime</td>
        <td>Details</td> 
        
    </tr>
    
    
    <c:forEach items="${itemList}" var="item">
    
        <tr>
            <td align="center"><input type="checkbox" name="id" value="${item.id}"></td>
            <td>${item.name}</td>
            <td>${item.price}</td>
             <td><fmt:formatDate value="${item.createtime }" pattern="yyyy-MM-dd HH:mm:ss"/></td>
             <td>${item.detail}</td>    
        </tr>


    </c:forEach>
    
 
    
    <tr>
         <td>All Count: ${count}</td>
         <td>Jump:<input type="text" name="currentPage" value="${currentPage}">
             <input type="submit" value="JUMP">
         </td>
    </tr>
    
</table>

</form>

</body>
</html>