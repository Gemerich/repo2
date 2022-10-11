# echo the new version number
newversion=$1
echo "new version: ${newversion}"

search='("version":[[:space:]]*").+(")'
replace="\1${newversion}\2"

sed -i -E "s/${search}/${replace}/g" "package.json"

# git config user.name github-actions
# git config user.email github-actions@github.com
# git add .
# git commit -m "Bump to ${newversion}"
# git tag "v-${1}-release-${newversion}"
# git push origin --tags
