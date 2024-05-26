#!/bin/bash
set -x

# Get and install emacs on debian/ubuntu
# Make sure to run: sudo apt-get install -y build-essential texinfo libx11-dev libxpm-dev libjpeg-dev libpng-dev libgif-dev libtiff-dev libgtk2.0-dev libncurses-dev automake autoconf

PROJECT_PATH=tools/emacs
SRC_DIR=$HOME/src/$PROJECT_PATH
BUILD_DIR=$HOME/build/$PROJECT_PATH
INSTALL_DIR=$HOME/install/emacs-$(date +'%Y-%m-%d')

if [ ! -d "$SRC_DIR" ]; then
    git clone -b master git://git.sv.gnu.org/emacs.git $SRC_DIR
fi

pushd $SRC_DIR
./autogen.sh

cd $BUILD_DIR
$SRC_DIR/configure --with-gnutls=ifavailable --prefix=$INSTALL_DIR
make -j$(nproc)
make install

echo "Add $INSTALL_DIR/bin to path"

popd
