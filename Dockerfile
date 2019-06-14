FROM python:alpine_arm32v7
MAINTAINER Colin Nevin <cnevin@gmail.com>
#MAINTAINER Allan Tribe <atribe13@gmail.com>

VOLUME /src/
COPY influxspeedtest.py requirements.txt config.ini /src/
ADD influxspeedtest /src/influxspeedtest
WORKDIR /src

RUN pip install -r requirements.txt

CMD ["python", "-u", "/src/influxspeedtest.py"]
