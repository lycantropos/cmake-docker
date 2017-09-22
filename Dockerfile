FROM gcc:7

RUN apt-get purge -y cmake

RUN mkdir /tmp/cmake && \
    cd /tmp/cmake && \
    wget https://cmake.org/files/v3.9/cmake-3.9.1.tar.gz && \
    tar -xzvf cmake-3.9.1.tar.gz

RUN cd /tmp/cmake/cmake-3.9.1/ && \
    ./bootstrap && \
    make -j4 && \
    make install

RUN rm -rf /tmp/cmake
