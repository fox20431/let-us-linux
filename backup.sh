#!/bin/bash

log_level="INFO"

function log() {
    echo "$(date +"%Y-%m-%d %H:%M:%S") [$log_level] $1"
}

sys_bashrc_source_path="/etc/bash.bashrc"
sys_bashrc_target_path="$(pwd)/sys/bash.bashrc"

usr_bashrc_source_path="$HOME/.bashrc"
usr_bashrc_target_path="$(pwd)/usr/.bashrc"

usr_bash_profile_source_path="$HOME/.bash_profile"
usr_bash_profile_target_path="$(pwd)/usr/.bash_profile"

if [ -e "$sys_bashrc_source_path" ]; then
    sudo cp $sys_bashrc_source_path $sys_bashrc_target_path
    log "$sys_bashrc_source_path copied"
else
    log "$sys_bashrc_source_path not exist"
fi

if [ -e "$usr_bashrc_source_path" ]; then
    cp $usr_bashrc_source_path $usr_bashrc_target_path
    log "$usr_bashrc_source_path copied"
else
    log "$usr_bashrc_source_path not exist"
fi

if [ -e "$usr_bash_profile_source_path" ]; then
    cp $usr_bash_profile_source_pathshrc_source_path $usr_bash_profile_target_path
    log "$usr_bash_profile_source_path copied"
else
    log "$usr_bash_profile_source_path not exist"
fi
