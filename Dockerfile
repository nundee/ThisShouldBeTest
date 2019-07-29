FROM golang:1.12.7-alpine3.10

ENV REQPACKAGES='python3 openblas libstdc++'
ENV DEVPACKAGES='gcc gfortran python3-dev build-base openblas-dev git subversion'

RUN apk add --no-cache ${REQPACKAGES} ${DEVPACKAGES} 
RUN pip3 install cython numpy jsonpickle scipy scikit-learn pyzmq pygam pandas xlrd 
