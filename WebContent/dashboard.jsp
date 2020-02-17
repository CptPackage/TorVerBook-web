<!DOCTYPE html>
<%@page import="java.util.ArrayList"%>
<%@page import="com.cptpackage.constants.RequestAttributes"%>
<%@page import="com.cptpackage.ad.Ad"%>
<%@page import="java.util.List"%>
<html lang="Java">

<head>
<!-- Charset & Responsiveness Metadata -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- StyleSheets -->
<link rel="stylesheet" type="text/css" href="./css/common.css" />
<link rel="stylesheet" type="text/css" href="./css/dashboard.css" />

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- Google Fonts API CDN -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700,900&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Comfortaa:300,400,700&display=swap"
	rel="stylesheet">

<title>TorverBook - Dashboard</title>
</head>

<body>
	<header>
		<h1 id="header-title">TorverBook</h1>
	</header>
	<div id="content-container">
		<div class="row main-panels-container">
			<panel class="left-panel col-lg-3"> <a
				href="/TorVerBook-Web/dashboard">
				<button class="active">
					<em class="fa fa-home" /></em> Home
				</button>
			</a> <a href="/TorVerBook-Web/settings">
				<button>
					<em class="fa fa-gear" /></em> Settings
				</button>
			</a> <a href="/TorVerBook-Web/add-ad">
				<button>
					<em class="fa fa-plus" /></em> Add Ad
				</button>
			</a> <a href="/TorVerBook-Web/personal-ads">
				<button>
					<em class="fa fa-bookmark" /></em> My Ads
				</button>
			</a> <a href="/TorVerBook-Web/personal-reviews">
				<button>
					<em class="fa fa-th-list" /></em> My Reviews
				</button>
			</a> <a href="/TorVerBook-Web/favourite">
				<button>
					<em class="fa fa-star" /></em> Favourite List
				</button>
			</a> </panel>
			<panel class="central-panel col-lg-6">
			<div class="search-bar-container">
				<form action="">
					<div class="form-group">
						<label for="category-input">Category</label> <select
							class="custom-select custom-select-sm" id="category-input">
							<option>ANY</option>
							<option>ALGORITHMS</option>
							<option>MATH</option>
							<option>HISTORY</option>
							<option>GEOMETRY</option>
							<option>LAW</option>
							<option>ECONOMY</option>
							<option>LITERATURE</option>
							<option>PHILOSOPHY</option>
							<option>PHYSICS</option>
							<option>COMPUTER_SCIENCE</option>
							<option>CHEMISTRY</option>
						</select>
					</div>

					<div class="form-group">
						<label for="type-input">Type</label> <select
							class="custom-select custom-select-sm" id="type-input">
							<option>SALE</option>
							<option>EXCHANGE</option>
						</select>
					</div>

					<div class="form-group">
						<label id="price-label" for="price-input"> Price<span
							id="price-label-value"></span>
						</label> <input type="range" id="price-input" class="custom-range"
							oninput="$('#price-label-value').text('(' + this.value + ')') "
							min="1" max="100" value="1" />
					</div>
					<button class="search-button btn btn-light">Search</button>
				</form>
			</div>

			<div class="ads-container">
				<%
					Object listObj = request.getAttribute(RequestAttributes.ADS_LIST_ATTRIBUTE_NAME);
					List<Ad> list = new ArrayList<Ad>();
					if (listObj != null) {
						list = (List<Ad>) listObj;
					}
						for (int i = 0; i < list.size(); i++) {
							Ad ad = list.get(i);
				%>
				<ad class="ad-container">
				<div class="title"><%=ad.getTitle()%></div>
				<div class="info-container">
					<span class="price"><i
						class="price-icon fa fa-money-check-alt"></i> <%=ad.getPrice()%></span> <span
						class="quantity">(<%=ad.getQuantity()%> left)
					</span>
				</div>
				<div class="description"><%=ad.getDescription()%></div>
				<h6>
					<em class="fa fa-book"></em>
					<%=ad.getCategory()%></h6>
				<h6>
					<em class="fa fa-user"></em>
					<%=ad.getOwnerUsername()%></h6>
				<button class="btn btn-primary send-message">Send Message</button>
				</ad>
				<%
					}
				%>
			</div>

			</panel>

			<panel class="right-panel col-lg-3">
			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
				</div>
				<input type="text" class="form-control chat-message-input"
					placeholder="Enter your message..." />
			</div>
			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
				</div>
				<input type="text" class="form-control chat-message-input"
					placeholder="Enter your message..." />
			</div>

			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
					<h5 class="chat-message">${username}:Hellothisisatestmessage</h5>
				</div>
				<input type="text" class="form-control chat-message-input"
					placeholder="Enter your message..." />
			</div>

			</panel>
		</div>
	</div>
</body>


<!-- Bootstrap JS CDN -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>

<!-- FontAwesome JS CDN -->
<script src="https://kit.fontawesome.com/8526e38f8c.js"
	crossorigin="anonymous"></script>

</html>