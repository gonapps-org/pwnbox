FROM alpine:edge
MAINTAINER Byeonggon Lee (gonny952@gmail.com)
RUN apk update && apk add --no-cache bash musl-dev git gcc vim less gdb openssl openssl-dev file nasm socat python2-dev py2-pip make libffi-dev g++ cmake libc6-compat curl
RUN git clone https://github.com/longld/peda.git /opt/peda
RUN git clone https://github.com/slimm609/checksec.sh /opt/checksec.sh
RUN git clone -b v1 https://github.com/0vercl0k/rp /opt/rp
RUN git clone https://github.com/radare/radare2 /opt/radare2
RUN git clone https://github.com/NationalSecurityAgency/ghidra
RUN echo "source /opt/peda/peda.py" >> ~/.gdbinit
RUN cp /opt/checksec.sh/checksec /usr/local/bin/checksec
RUN pip install pwntools
RUN /opt/radare2/sys/install.sh
#RUN mkdir -p /opt/rp/build; cd /opt/rp/build; cmake /opt/rp; make; make install
