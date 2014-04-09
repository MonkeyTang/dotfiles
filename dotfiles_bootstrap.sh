##########################################################################
######## https://github.com/gf3/dotfiles/blob/master/bootstrap.sh ########
##########################################################################

cp -r .vim ~/
cp .vimrc ~/
cp .bash_profile ~/
cp .bashrc ~/
cp .gitconfig ~/
cp .tmux.conf ~/


configureGitDiff(){
#sudo touch /usr/local/bin/git_diff_wrapper
sudo tee -a /usr/local/bin/git_diff_wrapper  >/dev/null << 'EOF'
				#!/bin/sh
				vimdiff "$2" "$5"
EOF
sudo chmod 777 /usr/local/bin/git_diff_wrapper
}

configureGitDiff
