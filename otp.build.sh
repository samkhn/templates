./configure --prefix=$HOME/install/otp-$(date '+%Y-%m-%d') \
	--enable-vm-probes --with-dynamic-trace=dtrace --without-javac

make -j$(nproc)
make install
