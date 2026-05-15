#!/usr/bin/env bash
set -e
 
PROJECT_DIR="$(pwd)"
PYTHON_VERSION="3.11.9"
VENV_NAME="altera.venv"
 
echo "========================================="
echo " Installing Python ${PYTHON_VERSION}"
echo "========================================="
 
sudo apt update
 
sudo apt install -y \
    build-essential \
    curl \
    git \
    make \
    gcc \
    libssl-dev \
    zlib1g-dev \
    libbz2-dev \
    libreadline-dev \
    libsqlite3-dev \
    libffi-dev \
    libncursesw5-dev \
    xz-utils \
    tk-dev \
    libxml2-dev \
    libxmlsec1-dev \
    liblzma-dev
 
if [ ! -d "$HOME/.pyenv" ]; then
    curl https://pyenv.run | bash
fi
 
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
 
eval "$(pyenv init -)"
 
if ! pyenv versions --bare | grep -q "^${PYTHON_VERSION}$"; then
    pyenv install ${PYTHON_VERSION}
fi
 
pyenv local ${PYTHON_VERSION}
 
echo "========================================="
echo " Creating virtual environment"
echo "========================================="
 
rm -rf "${VENV_NAME}"
 
python -m venv "${VENV_NAME}"
 
source "${VENV_NAME}/bin/activate"
 
echo "========================================="
echo " Installing stable tooling"
echo "========================================="
 
python -m pip install \
    pip==24.0 \
    setuptools==68.2.2 \
    wheel==0.43.0
 
echo "========================================="
echo " Creating requirements.txt"
echo "========================================="
 
cat > requirements.txt << 'EOF'
attrs==23.1.0
click==8.1.3
entrypoints==0.4
flake8==6.0.0
Flask==2.3.2
gevent==22.10.2
greenlet==2.0.2
importlib-metadata==6.6.0
iniconfig==2.0.0
itsdangerous==2.1.2
Jinja2==3.1.2
lrparsing==1.0.13
MarkupSafe==2.1.2
mccabe==0.7.0
more-itertools==9.1.0
packaging==23.1
pluggy==1.0.0
py==1.11.0
pycodestyle==2.10.0
pyflakes==3.0.1
pyparsing==3.0.9
pytest==7.3.1
six==1.16.0
wcwidth==0.2.6
Werkzeug==2.3.3
z3-solver==4.12.1.0
zipp==3.15.0
zope.event==4.6
zope.interface==6.0
EOF
 
echo "========================================="
echo " Installing Python dependencies"
echo "========================================="
 
python -m pip install -r requirements.txt
 
echo "========================================="
echo " Verifying installation"
echo "========================================="
 
python --version
 
python -c "
import z3
import lrparsing
import gevent
import pkg_resources
print('ALL OK')
"
 
echo "========================================="
echo " Environment ready"
echo "========================================="
 
echo ""
echo "Activate environment with:"
echo "source ${VENV_NAME}/bin/activate"
echo ""
echo "Run project with:"
echo "PYTHONPATH=${PROJECT_DIR}/src/python python -m z3model.process_circuit ..."
echo ""
