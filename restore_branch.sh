saved_branch=$(cat .current_branch)

git checkout $saved_branch > /dev/null

rm .current_branch
