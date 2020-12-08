# A Wind4/vlmcsd docker, for intel x64, static compiled

FROM alpine

ENV VLMCSD_VERSION 1113
RUN wget https://github.com/Wind4/vlmcsd/releases/download/svn${VLMCSD_VERSION}/binaries.tar.gz \
    && tar -xf binaries.tar.gz \
    && cp binaries/Linux/intel/static/vlmcsd-x64-musl-static /usr/local/bin/vlmcsd \
    && rm -rf binaries 
    
EXPOSE 1688/TCP

ENTRYPOINT ["/usr/local/bin/vlmcsd"]
