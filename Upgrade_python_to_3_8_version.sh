sudo yum update -y
sudo yum groupinstall "Development Tools" -y
sudo yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel libffi-devel -y
cd /tmp
wget https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz
tar xzf Python-3.8.12.tgz
cd Python-3.8.12
./configure --enable-optimizations
make -j 4
sudo make altinstall
python3.8 -V
sudo alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.8 1
sudo alternatives --set python3 /usr/local/bin/python3.8