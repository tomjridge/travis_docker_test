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

COPY install_imp.sh install_imp.sh
RUN sudo chown opam:opam install_imp.sh
RUN ./install_imp.sh


COPY install_parsing.sh install_parsing.sh
RUN sudo chown opam:opam install_parsing.sh
RUN ./install_parsing.sh
