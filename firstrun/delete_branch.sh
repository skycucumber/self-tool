DEV_BRANCH="$(git symbolic-ref --short -q HEAD)"
MASTER_BRANCH="day1-fp-cluster"

cd ~/projects/infrastructure/do-cluster

git fetch vxrail

git stash

git checkout "vxrail/$MASTER_BRANCH"

git stash pop

git branch -D "$DEV_BRANCH"

git push origin --delete "$DEV_BRANCH"
