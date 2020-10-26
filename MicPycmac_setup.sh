sudo apt-get install make imagemagick libimage-exiftool-perl exiv2 proj-bin qt5-default


git clone https://github.com/micmacIGN/micmac.git micmac

cd micmac

mkdir build

cd build

cmake -DWITH_QT5=1 -DBUILD_RNX2RTKP=1 -DBUILD_POISSON=1 -DWITH_ETALONPOLY=ON -DWITH_DOXYGEN=ON .


make -j$nproc

make install

echo 'finished install of micmac, adding mm3d to bashrc'
echo 'export PATH='$HOME'/micmac/bin:$PATH' >> ~/.bashrc

cd;

#  one assumes conda is already on the machines!
#wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
#    /bin/bash ~/miniconda.sh -b -p /opt/miniconda && \
#    rm ~/miniconda.sh

git clone https://github.com/Ciaran1981/pycmac.git

cd pycmac

conda env create -f pycmac_env.yml

echo " finished setup with no errors!"
