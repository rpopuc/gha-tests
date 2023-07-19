branch=$1
git log --pretty=format:"%h" main | grep `git log --pretty=format:"%h" -1 $branch` &> /dev/null
if [ $? -eq 0 ]; then
    echo "Branch $branch está na main"
else
    echo "Branch $branch não está na main"
fi