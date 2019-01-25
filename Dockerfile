FROM alpine:edge
MAINTAINER Byeonggon Lee (gonny952@gmail.com)
RUN apk update && apk add --no-cache bash musl-dev git gcc vim less gdb openssl-dev file nasm socat python2-dev py2-pip make libffi-dev
RUN git clone https://github.com/longld/peda.git ~/peda
RUN git clone https://github.com/slimm609/checksec.sh ~/checksec.sh
RUN git clone https://github.com/0vercl0k/rp ~/rp
RUN git clone https://github.com/radare/radare2 ~/radare2
RUN echo "source ~/peda/peda.py" >> ~/.gdbinit
RUN cp ~/checksec.sh/checksec /usr/local/bin/checksec
RUN pip install pwntools
