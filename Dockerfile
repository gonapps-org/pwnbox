FROM alpine:latest
MAINTAINER Byeonggon Lee (gonny952@gmail.com)
RUN apk update && apk add bash musl-dev git gcc vim less gdb openssl file
RUN git clone https://github.com/longld/peda.git ~/peda
RUN echo "source ~/peda/peda.py" >> ~/.gdbinit
RUN git clone https://github.com/slimm609/checksec.sh ~/checksec.sh
RUN cp ~/checksec.sh/checksec /usr/local/bin/checksec

