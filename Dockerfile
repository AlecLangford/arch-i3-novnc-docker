FROM archlinux:latest

#RUN pacman -Sy --noconfirm \
#    i3status \
#    i3-wm \
#    git \
#    net-tools \
#    python3 \
#    tilix \
#    supervisor \
#    ttf-dejavu \
#    x11vnc \
#    xorg-server \
#    xorg-apps \
#    xorg-server-xvfb \
#    xorg-xinit \
#    xonsh
RUN pacman -Sy --noconfirm git
# noVNC setup


WORKDIR /usr/share/
RUN git clone https://github.com/kanaka/noVNC.git
WORKDIR /usr/share/noVNC/utils/
RUN git clone https://github.com/kanaka/websockify

#RUN export DISPLAY=:0.0

#COPY supervisord.conf /etc/

#EXPOSE 8083

#RUN useradd -m user
#WORKDIR /home/user

#CMD ["/usr/bin/supervisord"]
