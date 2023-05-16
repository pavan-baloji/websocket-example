FROM ubuntu

RUN apt-get update -y && apt-get install git python3 python3-pip -y
RUN cd /tmp \
    && git clone https://github.com/pavan-baloji/websocket-example.git \
    && cd websocket-example \
    && pip install -r requirements.txt

EXPOSE 8888

CMD ["python", "/tmp/websocket-example/app.py"]
