#!/bin/bash

echo "entrypoint.sh"
whoami
which python
export PYTHONPATH=${PYTHONPATH}:/workspace/MuseV:/workspace/MuseV/MMCM:/workspace/MuseV/diffusers/src:/workspace/MuseV/controlnet_aux/src
echo "pythonpath" $PYTHONPATH
# chmod 777 -R /home/user/app/MuseV
# Print the contents of the diffusers/src directory
# echo "Contents of /home/user/app/MuseV/diffusers/src:"
# Load ~/.bashrc
# source ~/.bashrc

source /opt/conda/etc/profile.d/conda.sh
conda activate musev
pip --no-cache-dir install cuid gradio==4.12 spaces --index-url https://mirrors.tencent.com/repository/pypi/tencent_pypi/simple/ --extra-index-url https://mirrors.cloud.tencent.com/pypi/simple/

cd /workspace/MuseV
pip uninstall -y Werkzeug
pip uninstall -y MarkupSafe
pip install -r requirements.txt --index-url https://mirrors.tencent.com/repository/pypi/tencent_pypi/simple/ --extra-index-url https://mirrors.cloud.tencent.com/pypi/simple/