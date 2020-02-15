<!DOCTYPE html>
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
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" />

<!-- FontAwesome CSS CDN -->
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet" />

<!-- Google Fonts API CDN -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700,900&display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css?family=Comfortaa:300,400,700&display=swap"
	rel="stylesheet" />

<title>TorverBook - Dashboard</title>
</head>

<body>
	<header>
		<h1 id="header-title">TorverBook</h1>
	</header>
	<div id="content-container">
		<div class="row main-panels-container">
			<panel class="left-panel col-lg-3">
			<button>
				<em class="fa fa-home"></em> Home
			</button>
			<button>
				<em class="fa fa-gear"></em> Settings
			</button>
			<button>
				<em class="fa fa-plus"></em> Add Ad
			</button>
			<button>
				<em class="fa fa-bookmark"></em> My Ads
			</button>
			<button>
				<em class="fa fa-th-list"></em> My Reviews
			</button>
			<button>
				<em class="fa fa-star"></em> Favourite List
			</button>
			</panel>

			<panel class="central-panel col-lg-6">
			<div class="search-bar-container">
				<form action="">
					<div class="form-group">
						<label for="category-input">Category</label> <select
							class="custom-select custom-select-sm" id="category-input">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>

					<div class="form-group">
						<label for="type-input">Type</label> <select
							class="custom-select custom-select-sm" id="type-input">
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
						</select>
					</div>

					<div class="form-group">
						<label id="price-label" for="price-input"> Price </label> <input
							type="range" id="price-input" class="custom-range" min="1"
							max="100" />
					</div>
					<button class="search-button btn btn-light">Search</button>
				</form>
			</div>
			</panel>

			<panel class="right-panel col-lg-3">
			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
				</div>
				<input type="text" class="form-control chat-message-input"
					placeholder="Enter your message..." />
			</div>
			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
				</div>
				<input type="text" class="form-control chat-message-input"
					placeholder="Enter your message..." />
			</div>

			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
						message</h5>
					<h5 class="chat-message">${username}:Hellothis is a test
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

</html>