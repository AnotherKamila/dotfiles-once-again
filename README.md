# Dotfiles yet again

This time, I am keeping _my actual home directory_ under Git.

I do this by ignoring all files by having a `*` at the top of the `.gitignore` file, and then I whitelist dotfiles I want to sync via `!<file>`.

Together with having git status in my shell prompt, this should ensure that my stuff is synced. Maybe I'll add a cronjob though. Who knows -- it's an experiment :shrug:

## Install on a new machine

A normal `git clone` will not work because your home directory is not empty. The required hack is as follows:
```sh
cd
git init .
git remote add origin git@github.com:AnotherKamila/dotfiles-yet-again.git
git fetch

# rinse and repeat the following:
git checkout -t origin/main  # will probably fail because of conflicting files
# appropriately deal with conflicting files
# ...until it stops failing; at that point you're done
```

I also use GitHub's [Deploy keys](https://docs.github.com/en/developers/overview/managing-deploy-keys#deploy-keys) feature to give a host access to only this repo instead of my whole account. (You probably want to allow push.)
