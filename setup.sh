url=$1
main_repo=$2

folder_name=$(basename $url .git)

if [ -d $folder_name ]; then
  echo exists
  exit 
else
  git clone $url
fi

pushd $folder_name

git submodule init
git submodule update

echo "main_repo=\""$main_repo"\"" > .config.sh
chmod +x .config.sh

sync.sh

popd
