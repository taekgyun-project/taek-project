<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
		prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){
//    $("#btn").click(function(){
// todo
//  });

	var url = "https://api.nasa.gov/planetary/apod?api_key=NNKOjkoul8n1CH18TWA9gwngW1s1SmjESPjNoUFo";


	$.ajax({
	  url: url,
	  success: function(result){
	  if("copyright" in result) {
	    $("#copyright").text("Image Credits: " + result.copyright);
	  }
	  else {
	    $("#copyright").text("Image Credits: " + "Public Domain");
	  }
	  
	  if(result.media_type == "video") {
	    $("#apod_img_id").css("display", "none"); 
	    $("#apod_vid_id").attr("src", result.url);
	  }
	  else {
	    $("#apod_vid_id").css("display", "none"); 
	    $("#apod_img_id").attr("src", result.url);
	  }
	  $("#reqObject").text(url);
	  $("#returnObject").text(JSON.stringify(result, null, 4));  
	  $("#apod_explaination").text(result.explanation);
	  $("#apod_title").text(result.title);
	}
	});
});


</script>

</head>
<body>

</body>
</html>