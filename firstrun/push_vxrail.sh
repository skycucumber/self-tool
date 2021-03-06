DEV_BRANCH="topic/changlong-47410/dayone"
MASTER_BRANCH="topic/master-47410/day1rework"

cd ~/projects/firstrun/marvin

git fetch vxrail

git checkout "$DEV_BRANCH"

git stash

git rebase "vxrail/$MASTER_BRANCH"

git stash apply

error_code=$?
if [ "$error_code" != "0" ]; then
    echo "will not run: git stash drop"
    # exit $error_code
else
    git stash drop
fi

git push vxrail $DEV_BRANCH
git push vxrail "$DEV_BRANCH:$MASTER_BRANCH"
