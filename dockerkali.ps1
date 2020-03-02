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
####after housecleaning, now we can create a local docker image 
exit
docker ps -a 
#now we need to copy the container ID as we will use it in the next command
docker commit CONTAINER_ID lucious_kali
##################Docker persistance
#if you want 
