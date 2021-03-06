############################################################
# Shell script to prepare current home direcoty shell with already setup oh-my-zsh, powerline, vim ide etc.
# Based on Ubuntu 16.04
#MAINTAINER Nikun Kumar Hotta
############################################################

sn=${SCREENAME:=babaji}
HOME="/home/$sn"

cp files/* $HOME/
cp files/.* $HOME/
sudo apt-get update &&\
sudo apt-get install zsh \
    vim-nox \
    vim-rails \
    python-pip \
    git \
    vim \
    curl \
    wget \
    sudo \
    openssh-server \
    tmux \
    tig \
    locales \
    net-tools\
    dnsutils\
    rubygems\
    -y 
sudo gem install puppet-lint
mkdir -p $HOME/ \
    $HOME/.antigen/ \
    $HOME/.vim/bundle/ \
    /var/run/sshd \
    $HOME/.ssh/ \
    $HOME/.kube/ \
    $HOME/.local/bin
touch $HOME/.ssh/sshcompletion \
          $HOME/.kube/config
#Locale configuration for Powerline
locale-gen "en_US.UTF-8"
echo "LC_ALL=en_US.UTF-8" >> ~/.zshrc
echo "LANG=en_US.UTF-8" >> ~/.zshrc
#    cd $HOME/ &&\
#groupadd -r $sn &&\
#    useradd -r -g $sn -d $HOME -m -p '$1$Gox5viF7$PI88DaeP7q6042a8Cd8Js.' -s /usr/bin/zsh -c "$sn user" $sn 
#adduser $sn sudo
#echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers


git clone git://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh &&\
    curl -L git.io/antigen > $HOME/.antigen/antigen.zsh &&\
    git clone https://github.com/bhilburn/powerlevel9k.git $HOME/.oh-my-zsh/custom/themes/powerlevel9k 



#sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd 
#NOTVISIBLE "in users profile"
#echo "export VISIBLE=now" >> /etc/profile
#RUN git clone https://github.com/powerline/fonts.git --depth=1
#RUN sh fonts/install.sh

#RUN adduser --disabled-password --gecos '' $sn


#RUN chown -R $sn:$sn $HOME/

#WORKDIR $HOME
ZSH_CUSTOM=$HOME/.oh-my-zsh/custom
#USER $sn
curl -L https://github.com/kubernetes/kompose/releases/download/v1.11.0/kompose-linux-amd64 -o $HOME/.local/bin/kompose && chmod +x $HOME/.local/bin/kompose 
curl -L https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl -o $HOME/.local/bin/kubectl && chmod +x $HOME/.local/bin/kubectl
git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" && ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" 
pip install awscli saws pylint --upgrade --user
vim -E -u NONE -S $HOME/.vimrc +qall
#sudo /usr/sbin/sshd -D
#EXPOSE 22

########################
#TODO:
#vim -c "helptags doc/" &&\
# cd /home/awesome-terminal-fonts/ && ./install.sh && git checkout patching-strategy && ./droid.sh
# fc-cache -f -v &&\
# apt-get install zsh vim-nox vim-rails python-pip git vim curl wget fonts-powerline powerline python-fontforge sudo -y &&\
# pip install socat psutil hglib pygit2 bzr pyuv i3ipc xrandr  powerline-gitstatus powerline-status &&\
# apt-get install zsh vim-nox vim-rails python-pip git vim curl wget sudo tmux tig powerline fonts-powerline python-powerline python3-powerline fontconfig python-fontforge -y &&\
# vim +PluginInstall +qall &&\
#
#
#
##########################
