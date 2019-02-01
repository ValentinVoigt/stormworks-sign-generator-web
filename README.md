stormworks-sign-generator-web
=============================

This is the source code of the website.

The website can be found here: https://stormworks.voigt.rocks/

You can also check out the actual image generation script: https://github.com/ValentinVoigt/stormworks-sign-generator

Getting Started
---------------

- Change directory into your newly created project.

    `cd stormworks_sign_generator_web`

- Create a Python virtual environment.

    `python3 -m venv env`

- Upgrade packaging tools.

    `env/bin/pip install --upgrade pip setuptools`

- Install the project in editable mode with its testing requirements.

    `env/bin/pip install -e ".[testing]"`

- Run your project.

    `env/bin/pserve development.ini`
