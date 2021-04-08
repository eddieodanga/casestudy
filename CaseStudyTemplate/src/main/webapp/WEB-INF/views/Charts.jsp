<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Artists</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css" />
    <link rel="stylesheet" href="cards-gallery.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Bounce</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="#">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="login.jsp">Login</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="register.jsp">Register</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="Charts.jsp">Charts</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="Artist.jsp">Artists</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="upload.jsp">Upload</a></li>
				<li class="nav-item"><a class="nav-link" href="about.jsp">About</a></li>

				</li>

				</li>
			</ul>

		</div>
	</nav>
	<section class="gallery-block Artists">
		<div class="container">
			<div class="heading">
				<h2>Top Charts</h2>
			</div>
			<div class="row">
				<div class="col-md-6 col-lg-4">
					<div class="card border-0 transform-on-hover">
						<a class="lightbox" href=".../resources/images/goodkid.jpg"> <img class="card-img-top" src="https://mdbootstrap.com/wp-content/uploads/2019/02/flam.jpg">
						</a>
						<div class="card-body">
							<h6>
								<a href="#">#1</a>
							</h6>
							<p class="text-muted card-text">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Nunc quam urna.</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="card border-0 transform-on-hover">
						<a class="lightbox" href=".../resources/images/goodkid.jpg"> <img class="card-img-top" src="https://mdbootstrap.com/wp-content/uploads/2019/02/flam.jpg">
						</a>
						<div class="card-body">
							<h6>
								<a href="musicplayer.jsp">#2</a>
							</h6>
							<p class="text-muted card-text">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Nunc quam urna.</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="card border-0 transform-on-hover">
						<a class="lightbox" href=".../resources/images/goodkid.jpg"> <img class="card-img-top" src="https://mdbootstrap.com/wp-content/uploads/2019/02/flam.jpg">
						</a>
						<div class="card-body">
							<h6>
								<a href="#">#3</a>
							</h6>
							<p class="text-muted card-text">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Nunc quam urna.</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="card border-0 transform-on-hover">
						<a class="lightbox" href=".../resources/images/goodkid.jpg"> <img class="card-img-top" src="https://mdbootstrap.com/wp-content/uploads/2019/02/flam.jpg">
						</a>
						<div class="card-body">
							<h6>
								<a href="#">#4</a>
							</h6>
							<p class="text-muted card-text">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Nunc quam urna.</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="card border-0 transform-on-hover">
						<a class="lightbox" href=".../resources/images/goodkid.jpg"> <img class="card-img-top" src="https://mdbootstrap.com/wp-content/uploads/2019/02/flam.jpg">
						</a>
						<div class="card-body">
							<h6>
								<a href="#">#5</a>
							</h6>
							<p class="text-muted card-text">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Nunc quam urna.</p>
						</div>
					</div>
				</div>
				<div class="col-md-6 col-lg-4">
					<div class="card border-0 transform-on-hover">
						<a class="lightbox" href=".../resources/images/goodkid.jpg"> <img class="card-img-top" src="https://mdbootstrap.com/wp-content/uploads/2019/02/flam.jpg">
						</a>
						<div class="card-body">
							<h6>
								<a href="#">#6</a>
							</h6>
							<p class="text-muted card-text">Lorem ipsum dolor sit amet,
								consectetur adipiscing elit. Nunc quam urna.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
	<script>
		baguetteBox.run('.cards-gallery', {
			animation : 'slideIn'
		});
	</script>
</body>
</html>