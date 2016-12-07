PATH=/var/storage/shared/mscog/t-subhup/pkg/anaconda/bin:$PATH
PATH=/var/storage/shared/mscog/t-subhup/pkg/torch_`hostname`/install/bin:$PATH

alias ls='ls -allh --group-directories-first --color'
alias cdpss='cd ~/../../../t-subhup/pss'
alias cdpsf='cd ~/../../../t-subhup/pss/ProgSynth_fall2016/'
alias cdpsc='cd ~/../../../t-subhup/pss/ProgSynth_code/'
alias cdppp='cd ~/../../../t-subhup/pss/pure/ProgSynth_code/'

export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
export CUDA_HOME=/usr/local/cuda

if [[ `hostname` == gcrgpu* ]] || [[ `hostname` == phlrr* ]] ;
  then
  echo "ON A PHILLY MACHINE"
  . /var/storage/shared/mscog/t-subhup/pkg/torch_`hostname`/install/bin/torch-activate

  sudo cp \
  /var/storage/shared/mscog/t-subhup/pss/ProgSynth_code/nnutil/ParallelTable.lua \
  /var/storage/shared/mscog/t-subhup/pkg/torch_`hostname`/install/share/lua/5.1/nn/ParallelTable.lua
else
  . /home/surya/torch/install/bin/torch-activate
fi

git config --global user.email "surya95@gmail.com"
git config --global user.name "Surya Bhupatiraju"

