#!/bin/bash
# Patchmanagement for linux servers with zypper/yast, yum and apt-get
# created by Dipl.-Inf. Christoph Pregla
# github: https://github.com/Tux-Script/Linux-Patchmanagement
#
# Version 0.0.1 (initial)
#
#########################
#	Parameter	#
#########################
slog=""		#Path to file for script log
hlogs=""	#Path to directory for save all host logs ($hostname.log)
debug=false	#=true to activate logging in debug-mode
csv="hosts.csv"	#path to csv with host list

#########################
#	Functions	#
#########################
#params: 1: stat , 2: reason , 3: erroroutput
function logging() {
	exit 1;
}
function save_logs() {
	exit 1;
}
function read_param() {
	exit 1;
}
function format_grep_filters() {
	
}
function read_hostlist() {
	exit 1;
}
function read_servicesfilter() {
	exit 1;
}
function read_hostprams() {
	exit 1;
}
function patch_true() {
	exit 1;
}
function update_yum() {
	exit 1;
}
function update_apt() {
	exit 1;
}
function update_zypper() {
	exit 1;
}
function suse_sp_upgrade() {
	exit 1;
}
function restart_services() {
	exit 1;
}



###########################
###########################
###			###
###	   Main		###
###			###
###########################
###########################

if [ ! -f $slog ]; then
	$TOUCH $slog;
fi
#read script params
read_param

exit 0;
