# docker-simple-nginx

Simple Nginx setup in Docker using Alpine.

## What It Does

- Builds an image named `mynginx`
- Runs Nginx on `http://localhost:8080`
- Uses an external `nginx.conf`
- Mounts static files from `./html`
- Runs the container as a non-root user

## Run

```powershell
docker compose up --build
```

## Stop

```powershell
docker compose down
```
