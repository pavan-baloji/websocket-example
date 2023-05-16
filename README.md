# Tornado WebSocket example

This is a websocket example written in python.

## Installation

1. `git clone https://github.com/pavanbaloji/websocket-example.git`

2. `cd websocket-example`

3. `pip install -r requirements.txt`

4. `python app.py`

5. http://localhost:8888/
(This is my demo page -> http://localhost:8888/)

6. Send a REST call:

## Docker

You can create demo server using docker.

* build

```
docker build -t pavanbaloji/tornade-websocket-example .
docker run -d -p 8888:8888 pavanbaloji/tornade-websocket-example
```

or

* pull from docker hub

```
docker pull pavanbaloji/websocket-example
docker run -d -p 8888:8888 pavanbaloji/websocket-example
```

## REST API examples

Set the "id 1" value to 100 :
- `curl "http://localhost:8888/api?id=1&value=100"`

Set the "id 1" value to 300( The row No 1 will change to yellow ) :
- `curl "http://localhost:8888/api?id=1&value=300"`

Set The "id 1" value to 600( The row No 1 will change to red ):
- `curl "http://localhost:8888/api?id=1&value=600"`

- value 201 - 500 : change to yellow
- value 501 - : change to red

## License

MIT
