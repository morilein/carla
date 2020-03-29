# Baseimage
FROM tensorflow/tensorflow:2.2.0rc2-gpu-py3

# Install py3.5
RUN add-apt-repository ppa:deadsnakes/ppa --yes \
	&& apt-get install python3.5 python3.5-dev --yes

RUN curl https://bootstrap.pypa.io/ez_setup.py -o - | python3.5 \
	&& easy_install pip

# Install libs
RUN apt-get install --yes libtiff5-dev libjpeg-dev
