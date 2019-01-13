import re

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
		if not background or not re.match(r"0[xX][0-9a-fA-F]{6}", background):
			return {'error': "Please enter a background color. Use 0xFFFFFF if unsure."}
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
	
	return {}
