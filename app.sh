filename=run.sh

if [ $# -eq 2 ]; then
  echo 'cd $(dirname $BASH_SOURCE)' > $filename
  echo "$1" '$@' >> $filename

  chmod +x $filename

  cat $filename

  ln -s -T $(pwd)/$filename "/usr/bin/$2"
else
  echo -e "\nTry: autobin [exec] [name]\n"
fi
