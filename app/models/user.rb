class User < ActiveRecord::Base
    has_many :loans
    has_many :cars, :through => :loans
end

# git add .
# git commit -m "a"
# git push
# -- now you go to guthub.com, find ur repo, go to pull request tab, create new pull request, confirm pull request, merge
# -- once pull request is merged, you go to vscode and enter:
# git checkout master
# git pull
# [12:12 PM] -- in order for ur partner to update, its the same steps after pull request is merged.
# git checkout master
# git pull
# git checkout (their branch name)
# git merge master