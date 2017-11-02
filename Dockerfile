FROM rowanto/docker-java8-mvn-nodejs-npm

#RUN apt-get install python py-pip py-setuptools ca-certificates curl groff less && pip --no-cache-dir install awscli && rm -rf /var/cache/apk/*

# python and relevant tools
RUN apt-get update && apt-get install -y \
    build-essential \
    python \
    python-dev \
    libxml2-dev \
    libxslt-dev \
    libssl-dev \
    zlib1g-dev \
    libyaml-dev \
    libffi-dev \
    python-pip

# General dev tools
RUN apt-get install -y git

# Latest versions of python tools via pip
RUN pip install --upgrade pip \
                          virtualenv \
                          requests

# Install jq and qwscli
RUN apt-get update && apt-get install -y jq python-pip && pip install --upgrade pip && pip install awscli


#RUN curl -o /usr/local/bin/jq -L https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 && chmod +x /usr/local/bin/jq
#RUN apk update && apk upgrade && \
#    apk add --no-cache bash git openssh
#RUN apk add openjdk8-jre-base --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted \
#    && rm -rf /var/cache/apk/*
#RUN MAVEN_VERSION=3.3.9 \
# && cd /usr/share \
# && wget --quiet http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz -O - | tar xzf - \
# && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
# && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

RUN apt-get update && apt-get install openssl
RUN apt-get update && apt-get install bash gnupg

#ENV MAVEN_HOME /usr/share/maven

#RUN git --version
#RUN apk --version
#RUN python --version
#RUN mvn --version
#RUN npm --version
#RUN gpg --version