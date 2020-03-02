docker pull kalilinux/kali #found this on the kali website. Other documenation has this as kali/kali-linux-docker but this did not work for me
docker run -ti kalilinux/kali /bin/bash #this will download the official kali container and starts a bash shell in it 
#may have to run the following instead of the above
docker run -ti kalilinux/kali bash 
###I also came into an issue of this not working on my version of PowerShell, but you can switch over the CLI and have no issues.
############ now we can act as if we are in kali
apt update
apt dist-upgrade
apt autoremove
apt clean
####after updating we can now install any specific kali tools needed. 
apt install kali-linux-top10
