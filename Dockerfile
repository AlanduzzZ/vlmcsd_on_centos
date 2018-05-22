FROM centos:latest
MAINTAINER Alan du
RUN cd / \
    && yum -y install git make gcc \
    && git clone https://github.com/Wind4/vlmcsd.git vlmcsdsrc \
    && cd vlmcsdsrc \
    && make \
    && chmod +x bin/vlmcsd \
    && mv bin/vlmcsd / \
    && yum history undo 3 -y \
    && cd / \
    && rm -rf vlmcsdsrc
EXPOSE 1688
CMD ["/vlmcsd", "-D", "-d", "-t", "3", "-e", "-v"]
