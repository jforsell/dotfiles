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
