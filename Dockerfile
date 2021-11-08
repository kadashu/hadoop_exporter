FROM python:2.7

RUN mkdir /app
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

ENV CONFIG_ADDR='localhost:8000'
ENV PORT=9131

EXPOSE 9131

CMD /bin/bash -c "python hadoop_exporter.py -s ${CONFIG_ADDR} -P $PORT"
