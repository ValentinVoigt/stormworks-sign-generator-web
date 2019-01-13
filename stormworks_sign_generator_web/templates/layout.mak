<!doctype html>
<html lang="en">
	<head>
		<link rel="shortcut icon" href="${request.static_path('stormworks_sign_generator_web:static/stormworks_logo_favicon.png')}">
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<link rel="stylesheet" href="${request.static_path('stormworks_sign_generator_web:static/bootstrap.min.css')}">
		<link href="${request.static_path('stormworks_sign_generator_web:static/theme.css')}" rel="stylesheet">
		<title>Stormworks Sign Generator</title>
	</head>
	<body>
		<div class="container">
			<main role="main" class="inner">
				${next.body()}
			</main>
		</div>
	</body>
</html>
