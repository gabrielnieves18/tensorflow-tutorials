# Use the below option if not using accelerators
#FROM tensorflow/tensorflow:latest-py3
FROM tensorflow/tensorflow:latest-gpu-py3

COPY requirements.txt /tmp

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y libopencv-dev python-opencv

RUN pip install -r /tmp/requirements.txt

# TensorBoard
EXPOSE 6006
# IPython
EXPOSE 8888

WORKDIR "/notebooks"

CMD ["/run_jupyter.sh", "--allow-root"]
