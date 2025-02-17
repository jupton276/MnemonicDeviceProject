<!DOCTYPE html>

<html>
<head>
<title>My Sets : MnemonicStudy.com</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/profileHome.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/navbar-footer.css">
<%@ include file="/resources/jspf/dependencies.jspf"%>

<style>
body {
	font-family: "Times New Roman", Georgia, Serif;
}

h1, h2, h3, h4, h5, h6 {
	font-family: "Playfair Display";
	letter-spacing: 2px;
}
</style>
</head>
<body style="background-color: #414762;">

	<div id="navbar">
		<%@ include file="/resources/jspf/navbar.jspf"%>
	</div>
	<h1 style="color: ghostwhite; padding: 0.5rem 2.5rem;">${userName}
		Mnemonics</h1>
	<div class="wrapper" style="clear: both">

		<ul class="grid cards">
			<c:forEach items="${mnemonics}" var="i">
				<a href=${pageContext.request.contextPath}/viewFlashcard/${userID}/${i.mnemonic_id} style="text-decoration: none;"><li>			
						<h2>${i.title}</h2>
						<c:choose>
							<c:when test="${i.isPrivate}">
								<p style="color: #FF8585">Private</p>
							</c:when>
							<c:otherwise>
								<p style="color: lightgreen">Published</p>
							</c:otherwise>
						</c:choose>
				</li></a>

			</c:forEach>


			<%--   <a href="https://www.google.com" style="text-decoration: none;"><li>

                    <h2>Set 4</h2>
                    
            </li></a>    
            
            <a href="https://www.apple.com" style="text-decoration: none;"><li>
                <h2>Set 5</h2>
                <p style="color: green">Published</p>
            </li></a> 
--%>
		</ul>
	</div>
	<div>
		<%@ include file="/resources/jspf/footer.jspf"%>
	</div>
</body>
</html>
