import re
import subprocess
import os.path

from pyramid.response import Response
from pyramid.view import view_config

@view_config(
	route_name='home',
	renderer='../templates/home.mak',
)
def home(request):
	if request.method == 'POST':
		image = request.POST.get('image')
		background = request.POST.get('background')
		width = request.POST.get('width')
		height = request.POST.get('height')

		if not hasattr(image, 'file'):
			return {'error': "Please select a file."}
		if not background or not re.match(r"#[0-9a-fA-F]{6}", background):
			return {'error': "Please enter a background color. Use #FFFFFF/ white if unsure."}
		background = background.replace("#", "0x")
		if width:
			if not width.isdigit():
				return {'error': "Please enter a valid number as width."}
			if int(width) < 0 or int(width) > 1000:
				return {'error': "Width must be between 1 and 1000."}
		if height:
			if not height.isdigit():
				return {'error': "Please enter a valid number as height."}
			if int(height) < 0 or int(height) > 1000:
				return {'error': "Height must be between 1 and 1000."}
	
		cmd = "docker run -i --rm generate python generate_sign.py"
		if width:
			cmd += " --width %i" % int(width)
		if height:
			cmd += " --height %i" % int(height)
		cmd += " --background %s" % background
		cmd += " - -" # stdin and stdout

		try:
			image.file.seek(0)
			p = subprocess.run(
				cmd,
				shell=True,
				input=image.file.read(),
				stdout=subprocess.PIPE,
				stderr=subprocess.PIPE,
				timeout=3,
				check=True
			)
		except subprocess.CalledProcessError as p:
			error = str(p.stderr, "utf-8").strip().split("\n")[-1]
			return {"error": "Generation failed: " + error}
		except subprocess.TimeoutExpired:
			return {"error": "Generation timeout. Your file is probably too large."}

		if not p.stdout.startswith(b'<?xml version="1.0" encoding="UTF-8"?>'):
			return {"error": "File generation failed with unknown error. :( " + str(p.stdout, "utf-8")}

		filename = os.path.splitext(image.filename)[0] + ".xml"

		return Response(
			body=p.stdout,
			headers={
				'Content-Type': 'application/download',
				'Content-Disposition': 'attachment; filename=%s' % filename,
			}
		)

	return {}
