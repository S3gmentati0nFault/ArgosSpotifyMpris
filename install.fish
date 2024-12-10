#!/usr/bin/env fish
set -e

# Install dependencies for pycairo
sudo apt-get install libcairo2-dev libjpeg-dev libgif-dev
sudo apt-get install libgirepository1.0-dev

# Check if there is a venv folder in the root folder of the project
if not test -d "venv"
	echo "Creating the virtual environment..."
	python -m venv ./venv
end

# Check if pip-tools is installed
set PIP_TOOLS (pip list | grep pip-tools)
if test -z "$PIP_TOOLS"
	echo "Installing pip-tools..."
	pip install pip-tools
end

# Create the symlink
echo "[Hard-linking the file] spotify.r.1s+.py -> ~/.config/argos/spotify.r.1s+.py"
ln spotify.r.1s+.py ~/.config/argos/spotify.r.1s+.py

# Install the requirements using the virtual environment
source ./venv/bin/activate.fish
echo "[Installing requirements]"
pip-compile requirements.in
pip install -r requirements.txt

echo "Extension installed!"
