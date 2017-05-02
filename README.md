# docker-web

Docker image for httpd(apache) with `mod_proxy_fcgi`, `mod_rewrite`, and `mod_ssl` using a dummy cert for development.

Files are served from `/var/www/html/public_html` so mount that volume or copy your files into a new image.

fcgi points to a container named `code` which listens on port `:9000`
