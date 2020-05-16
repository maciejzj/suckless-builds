FROM archlinux

LABEL name="suckless-builder"
LABEL summary="Builder for suckless tools on Arch Linux"

RUN pacman -Syu --noconfirm \
	gcc \
	libx11 \
	libxft \
	libxinerama \
	make \
	pkgconf
