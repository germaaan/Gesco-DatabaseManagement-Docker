# CC-Gesco-DatabaseManagement 1.0

FROM    ubuntu:latest
MAINTAINER German Martinez <germaaan@gmail.com> Version: 1.0

# Instalar todos los paquetes necesarios para poder realizar realizar el proyecto de CC
RUN apt-get -y install git make
RUN git clone https://github.com/tj/n.git
RUN cd n
RUN make install
RUN n 4.2.2
RUN git clone https://github.com/Gescosolution/Gesco-DatabaseManagement.git
RUN cd Gesco-DatabaseManagement/
RUN npm install
RUN npm start
