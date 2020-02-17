<!DOCTYPE html>
<html>

<head>
<!-- Charset & Responsiveness Metadata -->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- StyleSheets -->
<link rel="stylesheet" type="text/css" href="./css/common.css" />
<link rel="stylesheet" type="text/css" href="./css/add-ad.css" />

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

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
			<panel class="left-panel col-lg-3"> <a href="/TorVerBook-Web/dashboard">
				<button>
					<em class="fa fa-home" /></em> Home
				</button>
			</a> <a href="/TorVerBook-Web/settings">
				<button>
					<em class="fa fa-gear" /></em> Settings
				</button>
			</a> <a href="/TorVerBook-Web/add-ad">
				<button class="active">
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
			<form action="/TorVerBook-Web/add-ad">
				<div class="form-group">
					<label for="username-input">Ad Title</label> <input type="text"
						class="form-control" id="username-input"
						placeholder="Java For Dummies">
				</div>
				<div class="form-group">
					<label for="username-input">Ad Description</label>
					<textarea type="" class="form-control" id="description-input">
                            </textarea>
				</div>
				<div class="form-group">
					<label for="username-input">Price</label> <input type="text"
						class="form-control" id="price-input" placeholder="($) 35">
				</div>
				<div class="form-group">
					<label for="username-input">Quantity</label> <input type="text"
						class="form-control" id="username-input">
				</div>

				<div class="form-group">
					<label for="category-input">College Course</label> <select
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
					<label for="category-input">Styling</label> <select
						class="custom-select custom-select-sm" id="category-input">
						<option>BASE</option>
						<option>MEDIUM</option>
						<option>SUPER</option>
					</select>
				</div>

				<div class="form-group">
					<label for="birth-date-input">From:</label> <input type="date"
						class="form-control" id="birth-date-input" placeholder="">
				</div>

				<div class="form-group">
					<label for="birth-date-input">To:</label> <input type="date"
						class="form-control" id="birth-date-input" placeholder="">
				</div>
				<button class="btn btn-light btn-md">Add Ad</button>
			</form>
			</panel>

			<panel class="right-panel col-lg-3">
			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
				</div>
				<input type="text" class="form-control chat-message-input"
					placeholder="Enter your message..." />
			</div>
			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
				</div>
				<input type="text" class="form-control chat-message-input"
					placeholder="Enter your message..." />
			</div>

			<div class="chat-container">
				<div class="chat-messages-container">
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
					<h5 class="chat-message">${username}:Hellothisisatest message</h5>
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