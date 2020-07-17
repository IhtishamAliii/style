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


#function

config() {
    touch bash.bashrc
    

    echo "red=$(tput setaf 1)" >> bash.bashrc
    echo "green=$(tput setaf 2)" >> bash.bashrc
    echo "yellow=$(tput setaf 3)" >> bash.bashrc

    echo "pink=$(tput setaf 5)" >> bash.bashrc
    echo "cyan=$(tput setaf 6)" >> bash.bashrc
    echo "white=$(tput setaf 7)" >> bash.bashrc

    echo "bt=$(tput bold 2)" >> bash.bashrc
    echo "clear" >> bash.bashrc
    echo "figlet -f big $bname | lolcat" >> bash.bashrc
    echo "PS1='${bt}${cyan}┌$uname┐${yellow}╱\W╱${green}╼╾⌬╼╾Ξ '" >> bash.bashrc
    mv bash.bashrc $PREFIX/etc/bash.bashrc
}
clear
echo  "${cyan}${bt}"
echo " ~ Please Wait Checking For Requirements"
echo
echo " ~ Installing Figlet"
pkg install figlet -y > /dev/null 2>&1
echo
sleep 3
ru=$PREFIX/bin/ruby
if [ -f "$ru" ]; then
    echo " ${green}${bt}~ Ruby Found"
    sleep 2
else 
    echo " ~ Installing Ruby"
    sleep 2
    echo
    pkg install ruby -y > /dev/null 2>&1
fi
echo
lol=$PREFIX/bin/lolcat
if [ -f "$lol" ]; then
     echo " ${green}${bt}~ LoLCat Found"
     sleep 2
else 
    echo " ~ Installing LoLCat"
    sleep 2
    echo
    gem install lolcat -y > /dev/null 2>&1
fi
echo
figl=$PREFIX/bin/figlet
if [[ -f "$figl" ]]; then
    echo " ${green}${bt}~ Figlet Found"
    sleep 2
else
    echo " ~ Installing Figlet"
    sleep 2
    echo
    gem install figlet -y > /dev/null 2>&1
    
fi
clear
echo

            
            
            
#banner for shadow


echo "${red}░██████╗██╗░░██╗░█████╗░██████╗░░█████╗░░██╗░░░░░░░██╗"
echo "${red}██╔════╝██║░░██║██╔══██╗██╔══██╗██╔══██╗░██║░░██╗░░██║"
echo "${red}╚█████╗░███████║███████║██║░░██║██║░░██║░╚██╗████╗██╔╝"
echo "${red}░╚═══██╗██╔══██║██╔══██║██║░░██║██║░░██║░░████╔═████║░"
echo "${red}██████╔╝██║░░██║██║░░██║██████╔╝╚█████╔╝░░╚██╔╝░╚██╔╝░"
echo "${red}╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝╚═════╝░░╚════╝░░░░╚═╝░░░╚═╝░░"

            
            
            
            
echo "${cyan}${bt}"
intro() {
echo " ~ Style By Ihtisham Ali - Shadow Walker "
echo
echo " ~ YouTube Channel: https://tiny.cc/ShadowYT"
echo
}
echo
intro
echo
echo
echo "${green}${bt}"
read -p " ~ Enter Banner Name: ${yellow}${bt}" bname
echo "${white}${bt} ~ Username: ${pink}${bt}$bname"
echo "${green}${bt}"
read -p " ~ Enter Username: ${yellow}${bt}" uname
echo " ~ ${white}${bt}Banner Name:${pink}${bt}$uname"
echo																				
echo
echo
read -p "${green}${bt} ~ Press Enter To Activate..."
clear
echo
echo "${green}${bt} ~ Please Wait Setting Up Configuration"
echo
config
sleep 3
echo  "${green}${bt} ~ Applying Stlye..."
echo
sleep 3
echo "${green}${bt} ~ Style Applied Successfully!"
echo
echo
echo "${red}${bt} ~ Subscribe My YouTube Channel"
echo "${red}${bt} ~ Channel Name: Shadow Walker"
xdg-open https://youtube.com/ShadowWalkerYT
echo
