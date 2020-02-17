<!DOCTYPE html>
<html lang="Java">


<head>
<!-- Charset & Responsiveness Metadata -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- StyleSheets -->
<link rel="stylesheet" type="text/css" href="./css/common.css" />
<link rel="stylesheet" type="text/css" href="./css/favourite-list.css" />

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
				<button>
					<em class="fa fa-home" /></em> Home
				</button>
			</a> <a href="/TorVerBook-Web/settings">
				<button>
					<em class="fa fa-gear" /></em> Settings
				</button>
			</a> <a href="/TorVerBook-Web/add-ad">
				<button >
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
				<button class="active">
					<em class="fa fa-star" /></em> Favourite List
				</button>
			</a> </panel>
			<panel class="central-panel col-lg-6">
			<div class="ads-container">
				<ad class="ad-container">
				<div class="title">Data Structures and Algorithms</div>
				<div class="info-container">
					<span class="price"><i
						class="price-icon fa fa-money-check-alt"></i> 15</span> <span
						class="quantity">(15 Pieces left)</span>
				</div>
				<div class="description">A book that regards the computer
					science's most essential concepts which are the computer data
					structures and algorithms.</div>
				<button class="btn btn-primary send-message">Send Message</button>
				</ad>
			</div>

			</panel>

			<panel class="right-panel col-lg-3">
			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
				</div>
				<input type="text" class="form-control chat-message-input"
					placeholder="Enter your message..." />
			</div>
			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
				</div>
				<input type="text" class="form-control chat-message-input"
					placeholder="Enter your message..." />
			</div>

			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothisis a test
						message</h5>
				</div>
				<input type="text" class="form-control chat-message-input"
					placeholder="Enter your message..." />
			</div>

			</panel>
		</div>
	</div>
</body>


<!-- Bootstrap JS CDN -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<!-- FontAwesome JS CDN -->
<script src="https://kit.fontawesome.com/8526e38f8c.js"></script>

</html>