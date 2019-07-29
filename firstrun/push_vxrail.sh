DEV_BRANCH="topic/changlong-47410/dayone"
MASTER_BRANCH="topic/master-47410/day1rework"

cd ~/projects/firstrun/marvin

git fetch vxrail

git checkout "$DEV_BRANCH"

git stash

git rebase "vxrail/$MASTER_BRANCH"

git stash apply

git push vxrail "$DEV_BRANCH:$MASTER_BRANCH"
