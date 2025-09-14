# Bria

Bria is a container image based on LinuxServer.io's [base alpine image](https://github.com/linuxserver/docker-baseimage-alpine) containing [aria2](https://aria2.github.io) along with [AriaNg](https://ariang.mayswind.net/) and [webui-aria2](https://github.com/ziahamza/webui-aria2) frontends to serve as a standalone web-based downloader application. [Caddy](https://caddyserver.com) is used for the web server and it also serves up the downloaded files for easy access.

## Quick start

```fish
docker run --rm -p 80:80 ghcr.io/thedcoder/bria:latest
```

An RPC secret token is automatically generated on the first-run and printed to the console.

### Ports

- `80` - Serves everything via Caddy, even the RPC interface is reverse proxied.

### Volumes

- `/config` - Configuration files, can be modified to your liking.
- `/downloads` - Default destination for downloads, everything under here is also served via the web server.

## Acknowledgements

The following parts of this project were created by AI (mostly GPT-5 via GitHub Copilot):
- The landing page
- The workflow file to publish the image

Thanks to the authors of aria2, its frontends, linuxserver.io which serve as the foundation for this project.
