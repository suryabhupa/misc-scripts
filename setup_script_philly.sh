MACHINE_ID=$1
local_path=/var/storage/shared/mscog/t-subhup
cd $local_path
# Install Anaconda
# wget https://3230d63b5fc54e62148e-c95ac804525aac4b6dba79b00b39d1d3.ssl.cf1.rackcdn.com/Anaconda-2.3.0-Linux-x86_64.sh
# bash Anaconda-2.3.0-Linux-x86_64.sh

# Install numpy
# sudo pip install numpy
# wait %1
# sudo apt-get --assume-yes install libreadline-dev libprotobuf-dev protobuf-compiler libhdf5-dev
# wait %1
mkdir $local_path/$MACHINE_ID
mkdir $local_path/$MACHINE_ID/pkg
cd  $local_path/$MACHINE_ID/pkg

# Install torch
git clone https://github.com/torch/distro.git torch --recursive
wait %1
cd  torch
bash install-deps
wait %1

./install.sh
wait %1

cd $local_path/$MACHINE_ID/pkg
git clone https://github.com/deepmind/torch-hdf5
wait %1

cd torch-hdf5
$local_path/$MACHINE_ID/pkg/torch/install/bin/luarocks make hdf5-0-0.rockspec

$local_path/$MACHINE_ID/pkg/torch/install/bin/luarocks install torch
wait %1

$local_path/$MACHINE_ID/pkg/torch/install/bin/luarocks install image
wait %1

$local_path/$MACHINE_ID/pkg/torch/install/bin/luarocks install sys
wait %1

$local_path/$MACHINE_ID/pkg/torch/install/bin/luarocks install nn
wait %1

$local_path/$MACHINE_ID/pkg/torch/install/bin/luarocks install optim
wait %1

$local_path/$MACHINE_ID/pkg/torch/install/bin/luarocks install lua-cjson
wait %1

$local_path/$MACHINE_ID/pkg/torch/install/bin/luarocks install cutorch
wait %1

$local_path/$MACHINE_ID/pkg/torch/install/bin/luarocks install cunn
wait %1

# Installing loadcaffe not necessary unless we need images
$local_path/$MACHINE_ID/pkg/torch/install/bin/luarocks install loadcaffe
wait %1

$local_path/$MACHINE_ID/pkg/torch/install/bin/luajit -lcutorch -e 'cutorch.test()'



