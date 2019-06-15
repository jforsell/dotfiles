# Set PATH in .zprofile just because it is sourced after /etc/zprofile which prepends entries to the PATH.
export PATH=~/miniconda/envs/python2/bin:\
~/miniconda/envs/python37/bin:\
~/miniconda/envs/python36/bin:\
~/miniconda/bin:\
~/.jenv/bin:\
$PATH

# mkcd function: mkdir followed by cd
function mkcd {
  if [ ! -n "$1" ]; then
    echo "Usage: mkcd <directory>"
  elif [ -d $1 ]; then
    echo "\`$1' already exists"
  else
    mkdir $1 && cd $1
  fi
}
