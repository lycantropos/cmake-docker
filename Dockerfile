FROM gcc:7

RUN apt-get purge -y cmake

WORKDIR /tmp/cmake
RUN wget https://cmake.org/files/v3.9/cmake-3.9.6.tar.gz && \
    tar -xzvf cmake-3.9.6.tar.gz > /dev/null

WORKDIR cmake-3.9.6
RUN ./bootstrap > /dev/null && \
    make -j$(nproc --all) > /dev/null && \
    make install > /dev/null

WORKDIR /
RUN rm -rf /tmp/cmake
