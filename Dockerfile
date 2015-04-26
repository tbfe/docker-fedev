FROM ubuntu
MAINTAINER liye04@baidu.com

RUN apt-get update && apt-get install -y \
    php5 \
    subversion \
    git \
    nodejs\
    && rm -rf /var/lib/apt/lists/*

RUN npm i -g \
    fis \
    yo \
    generator-surf \
    generator-mis \
    grunt \
    bower \
    && npm cache clear

CMD ["/bin/bash"]

