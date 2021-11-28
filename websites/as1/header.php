<html>
	<head>
		<link rel="stylesheet" href="styles.css"/>
		<title><?php echo $title ?>;</title>
	</head>
	<body>
		<header>
			<section>
				<h1>Northampton News</h1>
			</section>
		</header>
		<nav>
			<ul>
				<li><a href="index.php">Latest Articles</a></li>
				<li><a href="#">Select Category</a>
					<ul>
					<?php
						require 'DBConnect.php';
						$addedCategory = $pdo->query('SELECT * FROM category');
						$addedCategory->execute();
						foreach($addedCategory as $row) {
							echo'<li><a class="' . $row['name'] . '"href="categoryPages.php?categoryId=' . $row['name'] .'" >' . $row['name'] . '</a></li>';
						}
						?>

				</ul>
				</li>
				<li><a href="#">Admin</a>
					<ul>
						<li><a class="articleLink" href="adminLogin.php">Log in Admin</a></li>
						<li><a class="articleLink" href="logout.php">Log out Admin</a></li>
						<li><a class="articleLink" href="addAdmin.php">Add an Admin</a></li>
						<li><a class="articleLink" href="adminArticles.php">Articles</a></li>
						<li><a class="articleLink" href="adminCategories.php">Categories</a></li>
						<li><a class="articleLink" href="addArticle.php">Add Article</a></li>
						<li><a class="articleLink" href="addCategory.php">Add Category</a></li>
						<li><a class="articleLink" href="deleteCategory.php">Delete Category</a></li>
						<li><a class="articleLink" href="deleteArticle.php">Delete Article</a></li>
					</ul>
				</li>
				<li><a href="#">Users</a>
					<ul>
						<li><a class="articleLink" href="Login.php">Log in</a></li>
						<li><a class="articleLink" href="logout.php">Log out</a></li>
						<li><a class="articleLink" href="register.php">Register</a></li>

					</ul>
				</li>
			</ul>
		</nav>
		<img src="images/banners/randombanner.php" /> 
		