<!DOCTYPE html>
<html>

<head>
    <!-- Charset & Responsiveness Metadata -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- StyleSheets -->
    <link rel="stylesheet" type="text/css" href="./css/common.css" />
    <link rel="stylesheet" type="text/css" href="./css/personal-reviews.css" />

    <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <!-- FontAwesome CSS CDN -->
    <!-- <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"
        integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous"> -->

    <!-- Google Fonts API CDN -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Comfortaa:300,400,700&display=swap" rel="stylesheet">

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
				<button >
					<em class="fa fa-plus" /></em> Add Ad
				</button>
			</a> <a href="/TorVerBook-Web/personal-ads">
				<button>
					<em class="fa fa-bookmark" /></em> My Ads
				</button>
			</a> <a href="/TorVerBook-Web/personal-reviews">
				<button class="active">
					<em class="fa fa-th-list" /></em> My Reviews
				</button>
			</a> <a href="/TorVerBook-Web/favourite">
				<button>
					<em class="fa fa-star" /></em> Favourite List
				</button>
			</a> </panel>

            <panel class="central-panel col-lg-6">
                <div class="reviews-container">
                    <review>
                        <div class="book-info">
                            <div class="book-title">Data Structures and Algorithms</div>
                            <div class="book-rating">
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                                <i class="fas fa-star"></i>
                            </div>
                            <div class="book-description">A book that regards the computer science's most essential
                                concepts
                                which are the computer data structures and algorithms.</div>
                        </div>
                        <div class="personal-opinion">I have that book!</div>
                        <h6>-LudovicoErCojone</h6>
                    </review>
                </div>
            </panel>

            <panel class="right-panel col-lg-3">
                <div class="chat-container">
                    <div class="chat-messages-container">
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                    </div>
                    <input type="text" class="form-control chat-message-input" placeholder="Enter your message..." />
                </div>
                <div class="chat-container">
                    <div class="chat-messages-container">
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                    </div>
                    <input type="text" class="form-control chat-message-input" placeholder="Enter your message..." />
                </div>

                <div class="chat-container">
                    <div class="chat-messages-container">
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                        <h5 class="chat-message">${username}: Hello this is a test message</h5>
                    </div>
                    <input type="text" class="form-control chat-message-input" placeholder="Enter your message..." />
                </div>

            </panel>
        </div>
        </div>
</body>


<!-- Bootstrap JS CDN -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
    integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
    crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
    integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
    integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
    crossorigin="anonymous"></script>

<!-- FontAwesome JS CDN -->
<script src="https://kit.fontawesome.com/8526e38f8c.js" crossorigin="anonymous"></script>

</html>