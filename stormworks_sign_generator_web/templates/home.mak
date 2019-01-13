<%inherit file="layout.mak"/>

<div class="text-center">
	<a href="${request.route_path('home')}">
		<img src="${request.static_url('stormworks_sign_generator_web:static/stormworks_logo_small.png')}" alt="Stormworks: Build and Rescue Logo" width="288">
	</a>

	<h1 class="display-3 mb-3">Stormworks Sign Generator</h1>
</div>


<div class="row">
	<div class="col-lg-6">
		<%include file="start_head.mak"/>

	</div>
	<div class="col-lg-6">
		<hr class="d-lg-none">
		<%include file="start_form.mak"/>
	</div>
</div>

<hr class="text-muted mt-5">
<p class="text-muted text-center">
	Made with <a href="https://store.steampowered.com/app/573090/Stormworks_Build_and_Rescue/">❤️</a>,
	<a href="https://trypyramid.com/">Pyramid</a>
	and <a href="https://getbootstrap.com/">Bootstrap</a>
	by <a href="https://github.com/valentinvoigt">Valentin Voigt</a>.
</p>