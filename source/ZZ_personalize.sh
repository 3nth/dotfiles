export EDITOR="vi -e"
export VISUAL="vim"
export LESSEDIT="$VISUAL %f"
export PATH=/usr/local/share/python:$PATH
if [[ "$(type -P powerline)" ]]; then
    SP=`python -c "from distutils.sysconfig import get_python_lib; print(get_python_lib())"`
    . $SP/powerline/bindings/bash/powerline.sh
fi
