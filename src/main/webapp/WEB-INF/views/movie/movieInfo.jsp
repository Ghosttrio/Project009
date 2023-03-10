<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% request.setCharacterEncoding("utf-8"); %>
<c:set var="articlesList" value="${articlesMap.articlesList }" />
<c:set var="totArticles" value="${articlesMap.totArticles }" />
<c:set var="section" value="${articlesMap.section }" />
<c:set var="pageNum" value="${articlesMap.pageNum }" />

<c:set var = "total" value = "0" />
<c:forEach var="result" items="${articlesList}" varStatus="status">     
<c:set var= "total" value="${total + result.comment_rate}"/>

</c:forEach>

<c:set var = "total1" value = "0" />
<c:forEach var="count1" items="${articlesList }" varStatus="status">
<c:set var= "total1" value="${status.count }"/>
</c:forEach>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>영화정보</title>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<style>
#wrap {
    width: 1300px;
    height: 2000px;
    margin : 0 auto
    
}

#header{
    height: 100px;
}

#info{
    background-image: linear-gradient( rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.7) );
    background-size:100%;
    height: 600px;
}

#back {

	position: absolute;
	z-index:-1;
	
}
#back img {
	width: 1300px;
	height: 600px;
}




#info > div {
    display: inline-block;
    vertical-align: top;
}

#left{
    width: 500px;
    height: 600px;
    text-align: left;
    margin-left: 70px;
}

#title1{
    font-size: 50px;
    margin-top: 40px;
    color:white;
}
#title2{
    font-size: 30px;
    margin-bottom: 330px;
    color:white;
}
.btn0 {
    width: 150px;
    height: 50px;
}
.rate {
    display: inline-block;
    color:white;
    font-size: 25px;
    margin-left: 10px;
}
#right{
    margin-left: 350px;
    width: 290px;
    height: 600px;
    text-align: center;
    
}

.poster {
    margin-top: 50px;
}

.btn1 {
    margin-top: 20px;
    width: 150px;
    height: 50px;
}

#info2{
    height: 300px;
    padding: 40px;
}

#comment{
    padding: 40px;
    height: 700px;
}



/* 상단바 */
	
        header{
            color: white;
            margin-top: 30px;
        }
        .header_list {
            background-color: black;
            
            display: flex;
            justify-content: space-around;
            text-align: center;
            height: 100px;
        }
        .header_list >div{
            width: 100px;
            line-height: 100px;
            font-weight: 600;
            font-size: 20px;
        }
        .header_list a {
        	text-decoration:none;
        	color: white;
        }
        #logo_human{
            width: 150px;
            height: 100px;
        }
        #logo_human img{
            width: 150px;
            height: 100px;
        }
        
        .login_signup {
        	
            margin-top: 10px;
            display: flex;
            justify-content: flex-end;
            color: white;
                       
        }
        .login_signup div{
            margin-left: 20px;
            font-weight: 600;
            
        }
        .login_signup a{
            text-decoration:none;
            color: white;
            
        }



/* 더보기 */
.article{
	display:none;
}

#load {
    text-decoration: none;
    color: black;
    padding-top: 9px;
    padding-bottom: 9px;
    padding-left: 46%;
    padding-right: 46%;
}
.more {
    padding: 10px;
    margin-top: 70px;
    width: 100%;
    text-align: center;
    font-size: 20px;
    border: 1px solid black;
}

.more1 {
    padding: 10px;
    margin-top: 70px;
    width: 100%;
    text-align: center;
    font-size: 20px;
    border: 1px solid black;
    background-color: gainsboro;
}

.comment_wrap1{
	
}

.comment_wrap1 div {

}

.no-uline{text-decoration:none;
display:inline-block;
}


.sel-page{text-decoration:none; color:red;
display:inline-block;
}

#paging{
	text-align:center;
}



.c_total{
	font-size:20px;
	font-weight:600;
	margin-bottom:20px;
}


.comment_wrap1{
	margin-bottom:20px;
}

.comment_wrap1 div{
	display:inline-block;
	vertical-align:top;
}

.comment_wrap2{
	background-color:rgb(227, 227, 227);
	margin-bottom: 20px;
	
}


.a{
	width:132px;
	height:100px;
}
.b{
	width:800px;
	height:100px;
}
.c{	
	width:150px;
	height:100px;

}
#comment_btn{
	width:100px;
	height:105px;
}

.qq > div{
	display:inline-block;
	height:100px;
	vertical-align:top;
	text-align:center;
	margin:0 auto;
}
.d{
	width:140px;
	height:105px;
	line-height: 100px;
}
.e{
	width:800px;
	height:100px;
	line-height: 100px;
}
.f{	
	width:150px;
	height:100px;
	line-height: 100px;

}
.g{
	width:100px;
	height:50px;
}
.h{
	width:100px;
	height:50px;
}
.i{
	width:100px;
	float:right;
}


/* 대댓글 폼 */
.recomment div {
display:inline-block;
}
.recomment{
	margin-top:20px;
}

.recomment_l{
	margin-left:40px;
}

.recomment_id{
	width:100px;
	height:50px;
}

.recomment_text{
	width:900px;
	height:50px;
}

.recomment_btn{
	width:100px;
	height:55px;
}


/* 대댓글 출력 */

/* <div class="comment_wrap22">
	<div class="qqq">
       	<div class="recomment_ll">ㄴ[답글]</div>
       	<div class="dd">${comment.comment_id }</div>
		<div class="ee">${comment.comment_text}</div>
		<div class="ii">
			<input class="gg" type="button" value="수정">
			<input class="hh" type="button" value="삭제">
		</div>
	</div>
</div> */

.comment_wrap22 {
	background-color: lightslategrey;
	margin-left:40px;
	margin-bottom:10px;
}
.qqq div{
	display:inline-block;
	line-height:60px;
	margin-left : 10px;
	font-size:20px;
}
.qqq{
	height:60px;
}
.recomment_ll{
	font-weight:600;
	font-size:20px;
}




</style>
<script>
// 더보기
	window.onload =() =>{
		document.querySelector(".more").addEventListener("mouseover",function(){
		    document.querySelector(".more").classList.add("more1");
		});
		document.querySelector(".more").addEventListener("mouseout",function(){
		    document.querySelector(".more").classList.remove("more1");
		});
		
		$(function(){
		    $(".article").slice(0, 1).show(); 
		    $("#load").click(function(e){ 
		        e.preventDefault();
		        $(".article:hidden").slice(0, 1).show();
		        if($(".article:hidden").length == 0){
		            $(".more").css('display', 'none');
		        }
		    });
		});
		
		
		for (let k = 1; k < 5; k++) {
	    	document.querySelector("#like_btn"+k).addEventListener("click", function(){
	       	 $.ajax({
	    		    url: "../movie1",
	    		    type: "POST",
	    		    dataType: "html",
	    		   	data:{
	    	            command : $('#command').val(),
	    	            articleNO1 : $('#articleNO1'+k).val()
	    	        },
	    		    success:function(data){      					
	    		    	let a = JSON.parse(data).like;
	    		    	console.log(a);
	    		    	 /* 화면에 표시하는 방법  */
	    		    	$("#like_btn"+k).val("좋아요 "+a);
	    		    },   
	    		    error: 
	    		    function (request, status, error){  
	    		    }
	    		  });
	       })
	    }
		
	}
</script>
</head>
<body>
    <div id="wrap">
    
        <jsp:include page="../common/Header.jsp"></jsp:include>
	    
        <!-- 영화이미지 div -->
        <c:forEach var="movie" items="${movieList }" varStatus="status">
        	
	        <div id="info">
	        	<div id="back"><img src="${movie.poster_back }"></div>
	            <div id="left">
	                <div id="title1">${movie.title}</div>
	                <div id="title2">${movie.title_en}</div>
	                
	                <form id="like_form">
					  	<input id="like_num" type="hidden" name="like_num" value="${movie.like_num}">
					  	<input id="articleNO1${status.count }" type="hidden" name="articleNO1" value="${movie.articleNO}">
					  	<input id="command" type="hidden" name="command" value="like_it">
					  	<input id="like_btn${status.count }" class="btn0" name="like_num2" type="button" value="좋아요 ${movie.like_num }">
				  	</form>
				  	
	                <div class="rate">평점 : ${String.format("%.1f", (total / totArticles))}</div>
	            </div>
	            <div id="right">
	                <div class="poster"><img src="${movie.poster_main}" width="290" height="404"></div>
	                <input class="btn1" type="button" value="예매">
	            </div>
        	</div>
        	<div id="info2">
            	<h2>영화정보</h2>
            	<div class="article">
              		${movie.explain}
            	</div>
            	<div class="article">
                	<br>
                	감독 : ${movie.director} / 장르 : ${movie.genre} / ${movie.runningtime} 등급 : ${movie.age}이상관람가 
                	<br>
	                <div>
						<fmt:parseDate var="parsedDate" value="${movie.opendate }" pattern="yyyyMMdd" />
						 개봉일 : <fmt:formatDate value="${parsedDate }" pattern="yyyy/MM/dd"/> 
				    </div>
                	<br>
                	출연진 : ${movie.actor}
            	</div>
            	<div class="more"><a href="#" id="load">더보기 ▽ </a></div>
        	</div>
        	
        <!-- 댓글영역 -->
  				<div id="comment">
            	<div class="c_total">${movie.title}에 대한 ${total1 }개의 이야기가 있어요!</div>
	            <div class="comment_wrap1">
	            	<h3>관람평쓰기</h3>
					<form method="post" action="../movie1/reply.do">
						<input type="hidden" name="articleNO" value="${movie.articleNO }">
						<div><input class="a" type="text" name="comment_text" placeholder="       아이디 입력"></div>
						<div><input class="b" type="text" name = "comment_id" placeholder="  관람평을 입력해주세요"></div>
						<div><input class="c" type="number" min="0" max="10" name = "comment_rate" placeholder="  평점입력(0~10)"></div>
						<div><input id="comment_btn" type="submit" value="관람평쓰기"></div>
					</form>
				</div>
				<br>
				<h3>댓글목록</h3>
				<c:forEach var="comment" items="${articlesList }">
		            <c:choose>
		            	<c:when test="${comment.level == 1}">
				            <div class="comment_wrap2">
				            	<div class="qq">
					            	<%-- <div>댓글번호: ${comment.commentNO}</div> --%>
					            	<div class="d">${comment.comment_id }</div>
									<div class="e">${comment.comment_text}</div>
									<div class="f">평점: ${comment.comment_rate}</div>
									<div class="i">
										<input class="g" type="button" value="수정">
										<input class="h" type="button" value="삭제">
									</div>
								</div>
				            	
				            	<div class="recomment">
			        				<form method="post" action="../movie1/reply2.do">
			        					<div class="recomment_l"><h3>ㄴ</h3></div>
										<input type="hidden" name="articleNO" value="${movie.articleNO }">
										<input type="hidden" name="commentNO" value="${comment.commentNO }">
										<div><input class="recomment_id" type="text" name="recomment_text" placeholder="아이디입력"></div>
										<div><input class="recomment_text" type="text" name = "recomment_id" placeholder="대댓글입력"></div>
										<div><input class="recomment_btn" type="submit" value="대댓글입력"></div>
									</form>
				            	</div>
				            </div>
			            </c:when>
			            <c:when test="${comment.level > 1}">
				            <div class="comment_wrap22">
				            	<div class="qqq">
					            	<%-- <div>댓글번호: ${comment.commentNO}</div> --%>
					            	<div class="recomment_ll">ㄴ </div>
					            	<div class="dd">${comment.comment_id }님의 답글:</div>
									<div class="ee">${comment.comment_text}</div>
									<!-- <div class="ii">
										<input class="gg" type="button" value="수정">
										<input class="hh" type="button" value="삭제">
									</div> -->
								</div>
				            </div>
			            </c:when>
		            </c:choose>
            	</c:forEach>
            	
            	
            	
		            	<!-- 페이징 -->
		        	<div id="paging" style="height:100px">
			        	<c:if test="${totArticles != null }">
			        		<c:choose>
			        			<c:when test="${totArticles > 100 }">
				        			<c:forEach var="page" begin="1" end="10" step="1">
				        				<c:if test="${section > 1 && page == 1 }">
				        					<div class="no-uline">
					        					<form action="movieInfo.do" method="post">
						        					<input type="hidden" name="articleNO" value="${movie.articleNO }">
					        						<input type="hidden" name="section" value="${section-1 }">
					        						<input type="hidden" name="pageNum" value="${(section-1)*10 }">
					        						<input type="submit" value="pre">
					        					</form>
				        					</div>
				        				</c:if>
				        				<div class="no-uline">
					        				<form action="movieInfo.do" method="post">
					        					<input type="hidden" name="articleNO" value="${movie.articleNO }">
				        						<input type="hidden" name="section" value="${section}">
				        						<input type="hidden" name="pageNum" value="${page}">
				        						<input type="submit" value="${(section-1)*10 +page}">
				        					</form>
			        					</div>
			        			
				        				<c:if test="${page == 10 }">
					        				<form class="no-uline" action="movieInfo.do" method="post">
					        					<input type="hidden" name="articleNO" value="${movie.articleNO }">
				        						<input type="hidden" name="section" value="${section+1 }">
				        						<input type="hidden" name="pageNum" value="${section*10+1}">
				        						<input type="submit" value="next">
				        					</form>
				        				</c:if>
				        			</c:forEach>
				        		</c:when>
				        		<c:when test="${totArticles == 100 }">
				        			<c:forEach var="page" begin="1" end="10" step="1">
				        				<a class="no-uline" href="#">${page}</a>
				        			</c:forEach>
				        		</c:when>
				        		<c:when test="${totArticles < 100 }">
				        			<c:forEach var="page" begin="1" end="${totArticles/10 + 1}" step="1">
				        				<c:choose>
				        					<c:when test="${page==pageNum }">
					        					<div class="sel-page">
						        					<form action="movieInfo.do" method="post">
						        						<input type="hidden" name="articleNO" value="${movie.articleNO }">
						        						<input type="hidden" name="section" value="${section}">
						        						<input type="hidden" name="pageNum" value="${page }">
						        						<input type="submit" value="${page }">
						        					</form>
					        					</div>
				        					</c:when>
				        					<c:otherwise>
					        					<div class="no-uline">
						        					<form action="movieInfo.do" method="post">
						        						<input type="hidden" name="articleNO" value="${movie.articleNO }">
						        						<input type="hidden" name="section" value="${section}">
						        						<input type="hidden" name="pageNum" value="${page }">
						        						<input type="submit" value="${page }">
						        					</form>
					        					</div>
				        					</c:otherwise>
				        				</c:choose>
				        			</c:forEach>
				        		</c:when>
		        			</c:choose>
			        	</c:if>
			        </div>
            	
            	
         		</div>
         	
   		</c:forEach>
   	</div>
</body>
</html>