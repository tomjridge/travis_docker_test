FROM ocaml/opam2:4.07

RUN echo build from here .......

# some of the following apt packages are likely already installed
RUN sudo apt-get install -y git make
RUN sudo apt-get install -y curl
RUN sudo apt-get install -y gcc
RUN sudo apt-get install -y bzip2
RUN sudo apt-get install -y wget
RUN sudo apt-get install -y unzip m4
RUN sudo apt-get install -y time
RUN sudo apt-get install -y rsync bubblewrap

COPY install_script.sh install_script.sh
RUN sudo chown opam:opam install_script.sh
RUN ./install_script.sh
