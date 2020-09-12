# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.134.1/containers/ubuntu/.devcontainer/base.Dockerfile
FROM mcr.microsoft.com/vscode/devcontainers/base:0-bionic

#Rails sem timezone é problema...
ENV TZ=America/Recife
RUN sudo ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN adduser --disabled-password --gecos 'dev' dev
RUN adduser dev sudo
RUN echo '%dev ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER dev
WORKDIR /home/dev

RUN sudo apt-get update && \
    sudo apt-get install -y curl g++ gcc autoconf automake bison libc6-dev libffi-dev libgdbm-dev libncurses5-dev \ 
    libsqlite3-dev libtool libyaml-dev make pkg-config sqlite3 zlib1g-dev libgmp-dev libreadline-dev libssl-dev nodejs tzdata \
    vim

RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN curl -sSL https://get.rvm.io | bash -s stable
SHELL ["/bin/bash", "-c","-l"]
RUN rvm install 2.2.7
RUN rvm use 2.2.7 --default

RUN echo "gem: --no-document" > ~/.gemrc
RUN gem install bundler -v 1.17.3
RUN gem install nokogiri -v 1.9.1
RUN gem install rack -v 2.1.4
RUN gem install sprockets -v 3.7.2
RUN gem install rails -v 4.2.7.1

RUN sed -i '1i source ~/\.rvm/scripts/rvm\n/' ~/.bashrc

EXPOSE 3000

ENTRYPOINT ["/bin/bash", "-l", "-c"]
