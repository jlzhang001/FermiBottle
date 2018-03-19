#! /bin/sh

curl -s -L https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh > anaconda.sh
bash anaconda.sh -b -p ${CONDAPFX}
rm anaconda.sh
echo "export PATH=${CONDAPFX}/bin:$PATH" >> ${HOME}/.bashrc
export PATH=${CONDAPFX}/bin:$PATH
conda create --name fermi -c conda-forge -c fermi_dev_externals fermitools conda libpng pgplot --yes
rm -rf ${CONDAPFX}/pkgs/*
