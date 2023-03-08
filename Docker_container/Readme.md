# Introduction
The ELISA Automotive WG docker container bundles everything needed to build the telltale example use case.
This eliminates problems arising from individual build systems by design and helps us with troubleshooting in case of problems.
The Container also contains a premade script taking care of the setup steps.
# Prerequisites and Installation
Install Docker:
--------------

Install docker from your distro or you can follow instructions at https://docs.docker.com/engine/install/

As a post installation step, following the instructions at [Manage Docker as a non-root user](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user), enables building and running Docker as non-root user.


Build the docker image after installing docker:
----------------------------------------------

	$ docker build --build-arg UID=$(id -u) --build-arg GID=$(id -g)  -t elisa -f elisa.dockerfile .

**Note**:
There is a '.' at the end of the command which is required.

# Initial Setup and running the ELISA container
Initial compulsory step before setup: Create your working directory and give it a home folder:
-------------------------

	$ mkdir -p elisa/home
	$ cd elisa
	$ docker run -it --rm -v $PWD:/src --workdir /src elisa

	After the above commands you should be inside the docker container in a folder named '/src'.

For setup you can either use the easy way or the expert way.

Setup step (the easy way):
-------------------------

	$ setup_elisa.sh
	$ cd home/AGL/needlefish/

The above command will ask you to enter your name and email and then will configure everything and will also clone the required source code at elisa/home/AGL/needlefish folder.


Setup step (the expert way):
---------------------------

	From AGL:

	$ export AGL_TOP=$HOME/AGL
	$ echo 'export AGL_TOP=$HOME/AGL' >> $HOME/.bashrc
	$ mkdir -p $AGL_TOP
	$ mkdir -p $HOME/bin
	$ export PATH=$HOME/bin:$PATH
	$ echo 'export PATH=$HOME/bin:$PATH' >> $HOME/.bashrc
	$ curl https://storage.googleapis.com/git-repo-downloads/repo > $HOME/bin/repo
	$ chmod a+x $HOME/bin/repo
	$ cd $AGL_TOP
	$ mkdir needlefish
	$ cd needlefish

	The next two commands (Setting your name and email adress for use by GIT) are not documented in AGL but needed before 'repo' can be used.

	$ git config --global user.email "you@example.com"
	$ git config --global user.name "Your Name"

	Replace the above examples with your actual email and name.

	Last two commands from AGL:
	--------------------------

	$ repo init -b needlefish -u https://gerrit.automotivelinux.org/gerrit/AGL/AGL-repo
	$ repo sync

	Instructions from Elisa:
	-----------------------

	$ git clone https://github.com/elisa-tech/meta-elisa.git

# Building and Rebuilding

Steps to build:
--------------

	$ source meta-agl/scripts/aglsetup.sh -f elisa-cluster-demo
	$ bitbake elisa-cluster-demo-platform

	You will be still inside the container untill you give the command 'exit'.

**NOTE**:

Everything that was cloned or built inside docker will also be available from the host under the folder elisa/home.
After the first run, if you want to build again then most of the above steps are not needed.
Only the following should be sufficient.

	$ cd elisa
	$ docker run -it --rm -v $PWD:/src --workdir /src elisa
	$ cd $AGL_TOP/needlefish
	$ source meta-agl/scripts/aglsetup.sh -f elisa-cluster-demo
	$ bitbake elisa-cluster-demo-platform
	$ exit
