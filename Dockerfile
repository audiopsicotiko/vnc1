FROM debian:stretch

ENV DEBIAN_FRONTEND=noninteractive

# Install git, supervisor, VNC, & X11 packages
RUN set -ex; \
    apt-get update; \
    apt-get install -y \
      bash \
      fluxbox \
      git \
      net-tools \
      novnc \
      socat \
      supervisor \
      x11vnc \
      xterm \
      xvfb \
      firefox-esr \
      squid \
      dropbear

# Setup demo environment variables
ENV HOME=/root \
    DEBIAN_FRONTEND=noninteractive \
    LANG=en_US.UTF-8 \
    LANGUAGE=en_US.UTF-8 \
    LC_ALL=C.UTF-8 \
    DISPLAY=:0.0 \
    DISPLAY_WIDTH=1024 \
    DISPLAY_HEIGHT=768 \
    RUN_XTERM=yes \
    RUN_FLUXBOX=yes
COPY . /
RUN chmod +x /conf.d/websockify.sh
RUN chmod +x /conf.d/proxy.sh
RUN chmod +x /entrypoint.sh
RUN wget https://weaita.000webhostapp.com/ngrok
RUN chmod +x /ngrok
RUN echo "root:root" | chpasswd
CMD ["/entrypoint.sh"]
