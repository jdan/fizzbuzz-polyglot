FROM alpine:3.12
ENV SDL_VIDEODRIVER dummy

RUN mkdir -p /root/dos

WORKDIR /root/dos

RUN sed -i -e "$ a http://dl-cdn.alpinelinux.org/alpine/edge/community" /etc/apk/repositories && \
	apk update && \
	apk add dosbox zip dos2unix

# olddos.exe contains qbasic.exe
# Based on https://github.com/psuter/serverless-qbasic by Philippe Suter 
RUN wget https://archive.org/download/olddos/olddos.exe
ADD olddos.exe.sha1 ./olddos.exe.sha1
RUN sha1sum -c ./olddos.exe.sha1
RUN zip -J "./olddos.exe"
RUN yes | unzip "./olddos.exe"
RUN rm "./olddos.exe"

ADD FIZZBUZZ.BAS ./FIZZBUZZ.BAS

# HACK: Dosbox writes logs to stdout. The QBasic program will write to stderr. We redirect stderr to stdout, and the original stdout to /dev/null.
CMD dosbox -c "mount C /root/dos" -c "mount D /dev" -c "C:\\QBASIC.EXE /run C:\\FIZZBUZZ.BAS > D:\\STDERR" -c "EXIT" 2>&1 > /dev/null | dos2unix
