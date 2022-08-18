FROM akdev1l/base:latest

RUN sudo dnf install -y \
        @kde-desktop \
        podman \
        passwd \
        maim \
        yakuake \
        virt-manager \
        xclip \
        ripgrep \
        vim \
        rclone && \
    sudo systemctl mask \
        systemd-load-modules \
        NetworkManager \
        bluetooth \
        rtkit-daemon \
        nvidia-powerd \
        NetworkManager-wait-online && \
    sudo rm /etc/localtime && \
    sudo ln -s /usr/share/zoneinfo/America/Toronto /etc/localtime

RUN flatpak --user remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo && \
    flatpak --user install -y \
        com.valvesoftware.Steam \
        org.keepassxc.KeePassXC \
        org.mozilla.Firefox/x86_64/stable \
        com.valvesoftware.Steam \
        org.signal.Signal \
        com.spotify.Client
        

COPY --chown=akdev:akdev ./files/yakuakerc /var/home/akdev/.config/yakuakerc
COPY --chown=akdev:akdev ./files/kglobalshortcutsrc /var/home/akdev/.config/kglobalshortcutsrc
COPY --chown=akdev:akdev ./files/khotkeysrc /var/home/akdev/.config/khotkeysrc
COPY --chown=akdev:akdev ./files/autostart /var/home/akdev/.config/autostart
COPY --chown=akdev:akdev ./files/rclone.conf /var/home/akdev/.config/rclone/rclone.conf
COPY --chown=akdev:akdev ./files/wallpapers /var/home/akdev/pictures/wallpapers
COPY --chown=akdev:akdev ./files/plasma-org.kde.plasma.desktop-appletsrc ./config/plasma-org.kde.plasma.desktop-appletsrc
COPY ./entrypoint.sh /entrypoint.sh

USER root
ENTRYPOINT /entrypoint.sh
