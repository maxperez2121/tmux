#!/bin/bash

comprobarROOT(){
	user=$(whoami)
	if [ "root" == *"$user"* ]; then
		echo " root "
	else
		echo " $user "
	fi
}
comprobarROOT
