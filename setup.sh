#!/bin/bash
echo "############################################"
echo "# Install package form run ansible	#"
echo "############################################"

home=$(pwd)
tmp="${home}/tmp"
targz="tar.gz"
pythondevel="python-devel"
setuptools="setuptools"
ecdsa="ecdsa"
pycrypt="pycrypto"
paramiko="paramiko"
pyyaml="PyYAML"
markupsafe="MarkupSafe"
jinja2="Jinja2"
httplib2="httplib2"
passlib="passlib"
six="six"
rpm -ivh ${pythondevel}*
mkdir -p ${tmp}
# extract
tar -xzvf ${setuptools}*.${targz} -C ${tmp}
tar -xzvf ${ecdsa}*.${targz} -C ${tmp}
tar -xzvf ${pycrypt}*.${targz} -C ${tmp}
tar -xzvf ${paramiko}*.${targz} -C ${tmp}
tar -xzvf ${pyyaml}*.${targz} -C ${tmp}
tar -xzvf ${markupsafe}*.${targz} -C ${tmp}
tar -xzvf ${jinja2}*.${targz} -C ${tmp}
tar -xzvf ${httplib2}*.${targz} -C ${tmp}
tar -xzvf ${passlib}*.${targz} -C ${tmp}
tar -xzvf ${six}*.${targz} -C ${tmp}
# rename folder
mv ${tmp}/${setuptools}* ${tmp}/${setuptools}
mv ${tmp}/${ecdsa}* ${tmp}/${ecdsa}
mv ${tmp}/${pycrypt}* ${tmp}/${pycrypt}
mv ${tmp}/${paramiko}* ${tmp}/${paramiko}
mv ${tmp}/${pyyaml}* ${tmp}/${pyyaml}
mv ${tmp}/${markupsafe}* ${tmp}/${markupsafe}
mv ${tmp}/${jinja2}* ${tmp}/${jinja2}
mv ${tmp}/${httplib2}* ${tmp}/${httplib2}
mv ${tmp}/${passlib}* ${tmp}/${passlib}
mv ${tmp}/${six}* ${tmp}/${six}
# setuptools
cd ${home}
cd ${tmp}/${setuptools}
python setup.py install
# ecdsa
cd ${home}
cd ${tmp}/${ecdsa}
python setup.py install
# pycrypt
cd ${home}
cd ${tmp}/${pycrypt}
python setup.py install
# paramiko
cd ${home}
cd ${tmp}/${paramiko}
python setup.py install
# pyyaml
cd ${home}
cd ${tmp}/${pyyaml}
python setup.py install
# markupsafe
cd ${home}
cd ${tmp}/${markupsafe}
python setup.py install
# jinja2
cd ${home}
cd ${tmp}/${jinja2}
python setup.py install
# httplib2
cd ${home}
cd ${tmp}/${httplib2}
python setup.py install
# passlib
cd ${home}
cd ${tmp}/${passlib}
python setup.py install
# six
cd ${home}
cd ${tmp}/${six}
python setup.py install

cd ${home}
# Delete tmp folder
rm -rf "${tmp}"
