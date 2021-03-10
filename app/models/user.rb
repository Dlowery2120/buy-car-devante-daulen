class User < ActiveRecord::Base
    has_many :purchases 
    has_many :items, :through => :purchases 
end
# git checkout master
# git pull
# git checkout (their branch name)
# git merge master