# Fantoscii
This is [Fantozzi](https://it.wikipedia.org/wiki/Fantozzi_(film)) movie in ASCII.
It uses [Asci-movie project](https://github.com/gabe565/ascii-movie) and it is inspired by [Asciimation](https://asciimation.co.nz/).


## Usage
### Clone this repo

```shell
git clone https://github.com/PascalRomb/fantoscii.git
```
### Starting docker container
Use `docker-compose.yml` to create a docker container.
```shell
docker-compose up
```
or 
```shell
docker-compose up -d
```

### Watch the movie
- **SSH:** `ssh localhost`
- **Telnet:** `telnet localhost`


## Development
* Edit `converter.sh` in order to create new movies and add to `movies/`
* Edit `docker-compose.yml` to serve the right movie using its name 