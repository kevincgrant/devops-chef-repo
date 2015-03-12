git checkout master
git add *
echo "Enter a comment for the commit"
read COMMENT
git commit -m "${COMMENT}"
git push origin master
