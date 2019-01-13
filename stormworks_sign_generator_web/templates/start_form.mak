<form method="POST" action="${request.route_path('home')}" enctype="multipart/form-data">
	% if error:
	<div class="alert alert-danger">
		<b>Error:</b> ${error}
	</div>
	% endif

	<h2 class="my-3">1. Select file</h2>
	<p>
		All popular image formats are supported. No animations, no PDF, no compressed files.
	</p>
	<div class="form-group">
		<input type="file" class="form-contrl-file" id="image" name="image">
	</div>

	<h2 class="my-3">2. Chose background color</h2>
	<p>
		For files with transparency or with size not divisible by 9, a background color is needed.
		For every other file, this field can be left default (white).
	</p>
	<div class="form-group">
		<input
			type="background"
			class="form-control"
			id="exampleInputEmail1"
			value="${'0xFFFFFF' if request.method!='POST' else request.POST.get('background', '')}"
			name="background"
			placeholder="24-bit RGB Hex color (e.g. 0xAABBCC)">
	</div>
	
	<h2 class="my-3">3. Set size</h2>
	<p>
		Select the size of your sign here. Size means number of "Paintable Sign" blocks per axis. You can leave both fields empty to use native image size. Remember that each sign has 9 by 9 pixels. You can also just enter one value to automatically calculate the other dimension with respect to aspect-ratio.
	</p>
	<div class="row">
		<div class="col-sm-6">
			<div class="form-group">
				<label for="width">Width</label>
				<input
					type="number"
					class="form-control"
					id="width"
					name="width"
					value="${'' if request.method!='POST' else request.POST.get('width', '')}"
					placeholder="e.g. 6 blocks or empty">
			</div>
		</div>
		<div class="col-sm-6">
			<div class="form-group">
				<label for="height">Height</label>
				<input
					type="number"
					class="form-control"
					id="height"
					name="height"
					value="${'' if request.method!='POST' else request.POST.get('height', '')}"
					placeholder="e.g. 7 blocks or empty">
			</div>
		</div>
	</div>
	<button type="submit" class="btn btn-lg btn-block btn-primary">Upload &amp; generate!</button>
	<p class="mt-3">
		Copy the file to <code>%APPDATA%\Stormworks\data\vehicles</code> &mdash; you can copy and paste this path to Windows Explorer's address bar!
	</p>
</form>
