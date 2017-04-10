#/bin/bash
cd /tmp/yara
touch foo
echo whoami >> foo
./bootstrap.sh
./configure --enable-cuckoo --enable-magic
make install
cd yara-python && python setup.py build install && ldconfig
