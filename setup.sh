#!/bin/bash
if [ -z "${INSTALL_DIR}" ] then
    INSTALL_DIR=${HOME}/configs
fi
cd ${INSTALL_DIR}

# install vimrc
git clone https://github.com/mondaugen/profane-vimrc
cd profane-vimrc
git checkout master
./install
cd ..

# setup nice shell (bash, tmux)
git clone https://github.com/mondaugen/sancho-shell
cd sancho-shell
git checkout master
./install
cd ..

# install custom bash
git clone https://github.com/mondaugen/bash
cd bash
git checkout nick-dev
./configure --prefix=${HOME}
make && make install
echo 'export PATH=${HOME}/bin:${PATH}' >> ~/.profile
cd ..
