DEV_BRANCH="$(git symbolic-ref --short -q HEAD)"
MASTER_BRANCH="day1-fp-nano"

cd ~/projects/infrastructure/nano-service

git fetch vxrail

git checkout "$DEV_BRANCH"

git stash

git rebase "vxrail/$MASTER_BRANCH"

git stash apply

error_code=$?
if [ "$error_code" != "0" ]; then
    git stash drop

else
    git stash drop

    git push origin $DEV_BRANCH
    # git push vxrail "$DEV_BRANCH:$MASTER_BRANCH"
fi


