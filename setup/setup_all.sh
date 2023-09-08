sudo update && sudo upgrade -y 
# Pycoco
apt install gcc 
pip install cython
git clone https://github.com/cocodataset/cocoapi && cd PythonAPI/ && make
# grounded-video-description
git submodule update --recursive --remote && cd grounded-video-description && \
  bash tools/download_all.sh && 