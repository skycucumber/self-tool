DEV_BRANCH="$(git symbolic-ref --short -q HEAD)"
MASTER_BRANCH="day1-fp-cluster"

cd ~/projects/infrastructure/do-cluster

git fetch vxrail

git checkout "$DEV_BRANCH"

git stash

git rebase "vxrail/$MASTER_BRANCH"

git stash pop


git push origin $DEV_BRANCH
# git push vxrail "$DEV_BRANCH:$MASTER_BRANCH"
