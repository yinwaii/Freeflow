cd libmempool/
make
make install
cd ..

cd libraries/libmlx4-1.2.1mlnx1/
./autogen.sh
./configure
make
make install

cd ../libibverbs-1.2.1mlnx1/
./autogen.sh
./configure --prefix=/usr LIBS="-lmempool -lrt"
make
make install

cd ../librdmacm-1.1.0mlnx/
./autogen.sh
./configure --prefix=/usr LIBS="-lmempool -lrt"
make
make install

