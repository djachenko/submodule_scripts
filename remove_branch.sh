echo "remove $1"

branches=$(git branch --list "$1")

for branch in $branches ; do
  echo $branch
done

echo "Remove those branches? y/n"

read -p "> " decision

if [ $decision = 'y' ]; then
  git branch -d $branches
fi
