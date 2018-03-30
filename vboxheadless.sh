#!/bin/sh

vm_addPortForwarding() {
  # add portforwarding to the VM
  if [ -z "$1" ]
    then
      echo "usage: vm_addPortForwarding <VM-name>"; return;
  fi 
  VBoxManage modifyvm $1 --natpf1 "ssh,tcp,,3022,,22"
}

vm_start(){
  # start VirtualBox Headless
  VBoxHeadless --startvm $1
}

vm_connect(){
  # connect to headless box
  if [ -z "$1" ]
    then
      echo "usage: vm_connect <username>"; return;
  fi
  #ssh -p 3022 $1@127.0.0.1
  ssh pwn_vm
}

vm_startup() {
  # start and connect to headless VirtualBox
  
  if [ -z "$1" ] || [ -z "$2" ]
    then
      echo "usage: vm_startup <VM-name> <username>"; return;
  fi
 
  VBoxHeadless --startvm $1 &
  echo "starting VM";

  while true
  do
    sleep 1
    started=$(VBoxManage showvminfo Ubuntu64 | grep 'Additions run level:                 1' > /dev/null && echo 1 || echo 0)
    echo -n "$started."
    
    # stop if run level == 1
    if (( $started == 1 ))
      then
      break;
    fi

  done
  
  echo "\nplease, wait...";
  sleep 2s;
  echo "try to connect...";
  #ssh -p 3022 $2@127.0.0.1
  ssh pwn_vm
}

vm_pushfile(){
  # copy to running VM, $@ -> for mutliple files
  #scp -P 3022 $@ niku@127.0.0.1:/home/niku
  
  scp $@ pwn_vm:/home/niku/
}

vm_popfile(){
  # pop from running VM
  #scp -P 3022 niku@127.0.0.1:/home/niku/$1 .

  scp pwn_vm:/home/niku/$1 .
}

