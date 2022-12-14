FROM kathara/quagga:debian10

ARG DEBIAN_FRONTEND="noninteractive"
RUN apt update
RUN apt upgrade -y
RUN apt install -y snort proftpd-basic ettercap-graphical nmap
RUN apt clean && \
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*
