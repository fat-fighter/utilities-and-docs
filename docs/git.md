# Git Cheat Sheet

A simple Git Cheat Sheet for Linux / Unix / MacOS systems

## Installation and Configuration

In case of linux apt / apt-get can be used to install git

    sudo apt install git
    sudo apt-get install git

For mac, the easiest way to is to download the installer from the github websit  -  [htps://mac.github.com](htps://mac.github.com)

However, before commiting or pushing to remote repos, you need to configure your installation of git. You will need to provide your name and email

    git config --global user.name "<your-name>"
    git config --global user.email "<your-email>"

Can be configured for only one repository by remove the --global flag.

## Creating and Cloning Repositories

**Crating a new Repository**

In order to create a new repository and sync to existing repo online, use

    git init                        # Initializes Repository
    git remote add <alias> <link>    # Add remote url

The \<name\> field is used to refer to the online repository.

**Fetching a repository from**

This by defaults fetches (only) the master branch, with the \<name\> set to origin which is used (default) by convention.

    git clone <link>                # Downloads the repository

## Pushing and Pulling from Repositories

**Pushing Local Changes**

In order to add (stage) the changes to current buffer of changes, you can use

    git add <path>                  # Stages recursively for the given path

To log the changes, you need to commit the buffer

    git commit -m "Commit Message"  # Commits the changes with the message passed

Finally, to push these changes into a branch on the remote repository, you can run

    git push <alias> <remote-branch> # Pushes and reflects the changes online

If the remote and local branches are not synced, then the above will give an error. In this case, you'll need to pull the remote branch first, and then push to remote.

**Pulling Remote Changes**

In order to pull, you simple need to run

    git pull <alias> <remote-branch>

**Note:** *These changes are pulled to and pushed from the current branch*

**Merge Conflicts**

When pulling a branch, there can be one or more merge conflicts. This happens when a file is modified in the local branch, but not synced with remote branch. 

When there are merge conflicts, you can solve them by manually editing the files. For all files which have conflicts, there will be conflict markers added along with text from both the files

Some markers are as folows

\<\<\<\<\<\<\< HEAD \
\=\=\=\=\=\=\= \
\>\>\>\>\>\>\> branch-a 

Merge conflicts can be avoided by leaving blank lines for the lines where there is an intersection.

## Handling Branches

**Creating a new branch**

Creating a branch from the currently active branch can be done like this

    git branch <local-branch>

This is used to branch from the current local branch, and will start with the logs / commits from the currect branch itself. In order to create a fresh branch, we need to create it as *orphaned*. (Given Later)

**Changing Branch**

To switch from one local branch to another, you can use

    git checkout <local-branch>

Using --force (-f) flag will stash / dump changes in the current branch and simply switch to the new branch.

A branch can be synchronized with a remote branch using the pull command. The branches need not be same, i.e. remote:master can be synchronized with local:custom.

**Listing Branches**

The list of branches can be viewed using the following command

    git branch

**Note:** *This does not list any branch that has not made any commit yet, however those branches still exist and can be switched to*

**Fetching Branch**

This is used to fetch a branch from remote and add the files to a local branch

    git fetch <alias> <remote-branch>:<local-branch> # Fetch from remote to local

<!-- **Note:** *The \<local-branch\> should not be already created* -->

We can also fetch all branches using

    git fetch --all

If the \<local-branch\> is not specified, a branch is created with the same name as \<remote-branch\>.

**Merging Branches**

In order to merge the current branch with another, we simply need to run the merge command with any of these branches as the active.

    git merge <local-branch>

There can be conflicts in this case too, and must be resolved before merging can be complete. After solving the conflicts, the merge command must be run again, with the same branch as active branch.

If we require to completely replace the files of one branch, we can use 'ours' strategy of merging. Say, we need to merge branch1 with branch2 and completely replace branch2

    git checkout branch1
    git merge --strategy=ours branch2    OR    git merge -s ours branch2
    git checkout branch2
    git merge branch1

**Stashing Changes**

It is also possible to stash / delete all changes made to a repository after a
commit i.e. after HEAD.

	git stash

In order to undo a stash, we can pop the stash

	git stash pop
