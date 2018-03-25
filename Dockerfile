FROM resin/odroid-xu4-debian

RUN apt-get update -y && apt-get install -y --no-install-recommends libboost-regex-dev \
        libboost-system-dev \
        libboost-filesystem-dev \
        libboost-date-time-dev \
        libbluetooth-dev \
        build-essential

COPY SBFspot /SBFspot

RUN cd /SBFspot && make -j4 nosql


