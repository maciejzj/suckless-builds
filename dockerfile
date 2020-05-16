FROM archlinux

LABEL name="suckless-builder"
LABEL summary="Builder for suckless tools on Arch Linux"

RUN pacman -Syu --noconfirm \
	gcc \
	make \
	libx11 \
	libxft
