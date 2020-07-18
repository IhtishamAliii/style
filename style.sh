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
clear
echo " ${blue}${bt}[${white}*${blue}] ${green}Installing Dependencies"
echo
echo " ${blue}${bt}[${white}*${blue}] ${green}Installing Curl"
echo
pkg install curl -y > /dev/null 2>&1
echo " ${blue}${bt}[${white}*${blue}] ${green}Installing Zsh"
echo
pkg install zsh -y > /dev/null 2>&1
echo " ${blue}${bt}[${white}*${blue}] ${green}Installing Figlet"
echo
pkg install figlet -y > /dev/null 2>&1
echo " ${blue}${bt}[${white}*${blue}] ${green}Installing Color-Scheme"
echo
pkg install ncurses-utils -y > /dev/null 2>&1
echo " ${blue}${bt}[${white}*${blue}] ${green}Installing Oh-My-Zsh"
echo
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh > /dev/null 2>&1
echo " ${blue}${bt}[${white}*${blue}] ${green}Configuring Oh-My-Zsh"
echo
yes "n" | bash install.sh -y > /dev/null 2>&1
echo " ${blue}${bt}[${white}*${blue}] ${green}Setting Up Shadow Theme"
echo
sed -i "s/robbyrussell/shadowwalker/g" .zshrc 
sleep 3

read -p " Enter Banner Name: " banner_name
read -p " Enter Username: " user_name
echo
read -p " Hit Enter To Apply Settings..."

sed -i "s/ihtisham/$user_name/g" $HOME/style/shadowwalker.zsh-theme
sed -i "s/shadow/$banner_name/g" $HOME/style/shadowwalker.zsh-theme
sed -i "s/robbyrussell/shadowwalker/g" .zshrc
cp -r $HOME/style/shadowwalker.zsh-theme $HOME/.oh-my-zsh/themes
yes "zsh" | chsh > /dev/null 2>&1
rm -rf $HOME/style
echo
echo " Please Restart Termux"
