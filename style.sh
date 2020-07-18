#!/system/bin/sh

#text colors

red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
pink=$(tput setaf 5)
cyan=$(tput setaf 6)
white=$(tput setaf 7)

bt=$(tput bold 2)
#reset color

reset=$(tput sgr0)


cd
pkg install curl -y
pkg install zsh -y
pkg install figlet -y
pkg install ncurses-utils -y
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
yes "n" | bash install.sh -y

sed -i "s/robbyrussell/shadowwalker/g" .zshrc
read -p " Enter Banner Name: " banner_name
read -p " Enter Username: " user_name
sed -i "s/ihtisham/$user_name/g" shadowwalker.zsh-theme
sed -i "s/shadow/$banner_name/g" shadowwalker.zsh-theme
sed -i "s/robbyrussell/shadowwalker/g" .zshrc
cp -r $HOME/style/shadowwalker.zsh-theme $HOME/.oh-my-zsh/themes
yes "zsh" | chsh
rm -rf $HOME/style
echo "Please Restart Termux"
