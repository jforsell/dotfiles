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

function nfa-dl-latest {
  if [ -z "$1" ] || [ -z "$2" ]; then
    echo "Usage: nfa-dl-latest Train Device"
  else
    ~/projects/nsd/nsd --latest-build "$1" --filename "%.dmg" --softwarename  "%$2%InternalRestore (%"
  fi
}
