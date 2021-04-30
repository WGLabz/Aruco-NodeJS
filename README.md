## Aruco Marker Generator using NodeJS with HTTP endpoint
A simple Aruco marker Generator developed on top of NodeJS. It exposes HTTP POST endpoint to make request and get resultant marker in SVG format. Based on work by [@bhollis](https://github.com/bhollis/aruco-marker)

### HTTP Endpoint

```shell

POST http(s)://<server_url>:8089

{
    "id":4,
    "size": 300,
    "type": "svg"
}

```

In the parameters provided to the call, `type` defines therequested image format. It can be svg or png or jpeg.

The following image shows the same by using Postman.

![](Postman%20Snap.JPG)

### Usage / Installation

The app can be spun up pretty quickly using the docker image. To do that you can use the following  docker command. The docker image can be found [here](https://hub.docker.com/r/wglabz/node-aruco).

```shell
docker run -it -p 8089:8089 wglabz/node-aruco
```
