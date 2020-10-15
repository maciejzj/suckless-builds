FROM archlinux

LABEL name="suckless-builder"
LABEL summary="Builder for suckless tools on Arch Linux"

RUN pacman -Syu --noconfirm \
	gcc \
	gcr \
	libx11 \
	libxft \
	libxinerama \
	libxrandr \
	make \
	pkgconf
	webkit2gtk
