# Spotify Argos Extension
For use with [p-e-w/argos](https://github.com/p-e-w/argos). Provides current song, artist and playback status in the taskbar and more detailed information with playback controls and album art in the dropdown.

# Set up
To use this argos extension, simply pull down the git repository somewhere safe and either make a symlink to the argos directory or copy the script over.

# Requirements
The following Python library is needed.

* [pydbus](https://pypi.org/project/pydbus/)
* [requests](https://pypi.org/project/requests/)
* [pycairo](https://pypi.org/project/pycairo/)
* [PyGObject](https://pypi.org/project/PyGObject/)

Whenever the `install` script is run the dependencies will be automatically installed starting from the `requirements.in` file. The only necessary dependencies installed on the machine will be:

* [libcairo2-dev](https://packages.debian.org/it/sid/libcairo2-dev)
* [libjpeg-dev](https://libjpeg.sourceforge.net/)
* [libgif-dev](https://packages.debian.org/sid/libgif-dev)
* [libgirepository1.0-dev](https://packages.debian.org/sid/libgirepository1.0-dev)

The rest of the python packages will be installed in a virtual environment saved under folder `venv` created during the installation process.

# Screenshots
![Taskbar](images/taskbar.png?raw=true)

![Menu Open](images/menu_open.png?raw=true)

# #TODO
* Implement cool Spotify features using their API
  * Like button
  * Shuffle
* Make the album art a clickable button to maximize the Spotify window.
* Add virtualenv generation to the requirements script and have the plugin run from it.
