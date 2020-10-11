FROM ubuntu

RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /usr/share/applications
RUN mkdir -p /usr/share/icons/hicolor/scalable/apps

RUN wget http://www.jsoftware.com/download/j901/install/j901_amd64.deb
RUN dpkg -i j901_amd64.deb
RUN rm j901_amd64.deb

COPY fizzbuzz.ijs .

CMD ["ijconsole", "fizzbuzz.ijs"]
