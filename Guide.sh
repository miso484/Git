#
# Introduction
#

# Commit changes
git commit

# Create a new branch
git branch bugFix

# Checkout to bugFix branch
git checkout bugFix

# Create bugFixTwo and checkout to it
git checkout master; git checkout -b bugFixTwo

# Merge master into bugFix branch - include all the work from one to other branch
git checkout bugFix; git merge master

# Rebase to move our work from bugFix directly onto the work from master. That way it would look like these two features were developed sequentially, when in reality they were developed in parallel.
git checkout bugFix; git rebase master
git checkout master; git rebase bugFix

#
# Moving around
#

#
# DETACH HEAD
# HEAD always points to the most recent commit

## Detach HEAD from bugFix and attach it to the commit instead
#git checkout bugFix; git checkout commitName

#
# RELATIVE REFS
# Relative Refs - specifying commits by their hash isn't the most convenient thing ever, which is why Git has relative refs

## Checkout to the first parent of the master
#git checkout master^

## Reference HEAD to it's grandparent
#git checkout HEAD^^

#
# THE "~" OPERATOR
# The tilde operator - move a lot of levels up in the commit tree

## Reference HEAD 4 commits up
#git checkout HEAD~4

## Reassign a branch to a commit that is three parents behind HEAD
#git branch -f master HEAD~3

#
# REVERSING CHANGES
# Git Reset - reverts changes by moving a branch reference backwards in time to an older commit - do it on local branches
git reset HEAD^
# Git Revert - reverse changes and share those reversed changes with others - do it on remote branches when you want to share changes
git revert HEAD


#
# Moving work around
#

