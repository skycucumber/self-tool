DEV_BRANCH="dayonePOC"
MASTER_BRANCH="master"

# cd ~/projects/firstrun/marvin

git fetch vxrail

git checkout "$DEV_BRANCH"

git stash

git rebase "origin/$MASTER_BRANCH"

git stash apply

error_code=$?
if [ "$error_code" != "0" ]; then
    echo "will not run: git stash drop"
    # exit $error_code
else
    git stash drop
fi

git push vxrail $DEV_BRANCH
# git push vxrail "$DEV_BRANCH:$MASTER_BRANCH"
