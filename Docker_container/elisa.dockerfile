FROM debian:buster-slim

ARG DEBIAN_FRONTEND=noninteractive
RUN set -x && apt-get update && apt-get upgrade -y \
  && apt-get install -y curl python\
    gawk wget git-core diffstat unzip texinfo gcc-multilib \
     build-essential chrpath socat libsdl1.2-dev xterm \
      cpio file locales

RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen && locale-gen en_US.UTF-8
RUN echo "#!/bin/bash\n\nif [ ! -d /src/home ]; then\n\tmkdir /src/home\nfi\n\n/bin/bash" > /bin/start.sh
RUN chmod a+x /bin/start.sh
RUN echo "#!/bin/bash \n\n\
if [ ! -e \$HOME/.gitconfig ]; then\n\
	echo \"Please enter your name:\"\n\
	read name\n\
	echo \"Thanks \${name}. Please enter your email:\"\n\
	read email\n\
	git config --global user.email \"\$email\"\n\
	git config --global user.name \"\$name\"\n\
fi\n\
ln=\`cat \$HOME/.bashrc | grep AGL_TOP | wc -l\`\n\
if [ \$ln -eq 0 ]; then\n\
	echo 'export AGL_TOP=\$HOME/AGL' >> \$HOME/.bashrc\n\
fi\n\
if [ ! -f \$HOME/bin/repo ]; then\n\
	mkdir -p \$HOME/bin\n\
	export PATH=\$HOME/bin:\$PATH\n\
	echo 'export PATH=\$HOME/bin:\$PATH' >> \$HOME/.bashrc\n\
	curl https://storage.googleapis.com/git-repo-downloads/repo > \$HOME/bin/repo\n\
	chmod a+x \$HOME/bin/repo\n\
fi\n\
export AGL_TOP=\$HOME/AGL\n\
if [ ! -d \$AGL_TOP/koi ]; then\n\
	mkdir -p \$AGL_TOP/koi\n\
	cd \$AGL_TOP/koi\n\
	repo init -b koi -u https://gerrit.automotivelinux.org/gerrit/AGL/AGL-repo\n\
	repo sync\n\
	git clone https://github.com/elisa-tech/meta-elisa.git\n\
fi" > /bin/setup_elisa.sh
RUN chmod a+x /bin/setup_elisa.sh

ARG UNAME=elisa
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $UNAME
RUN useradd -M -u $UID -g $GID -o -s /bin/bash -d /src/home $UNAME
USER $UNAME
CMD /bin/start.sh
