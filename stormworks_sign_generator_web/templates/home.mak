<%inherit file="layout.mak"/>

<div class="text-center">
	<a href="${request.route_path('home')}">
		<img src="${request.static_path('stormworks_sign_generator_web:static/stormworks_logo_small.png')}" alt="Stormworks: Build and Rescue Logo" width="288">
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
	<br>
	Sources on Github:
	<a href="https://github.com/ValentinVoigt/stormworks-sign-generator">Generator</a>,
	<a href="https://github.com/ValentinVoigt/stormworks-sign-generator-web">Website</a>
	<br>
	Images are not logged, anonymized IP is logged for statistics.
	<br>
	No cookies, trackers, ads or JavaScript.
	<br>
	In case you're feeling generous, feel free to
	<a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=E3HSHDLRT4N5W&source=url">donate</a>. ¯\_(ツ)_/¯
</p>
