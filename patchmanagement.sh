#!/bin/bash
# Patchmanagement for linux servers with zypper/yast, yum and apt-get
# created by Dipl.-Inf. Christoph Pregla
# github: https://github.com/Tux-Script/Linux-Patchmanagement
#
# Version 0.0.2 (initial)
#
#########################
#	Parameter	#
#########################
declare -r logpath="logs"
declare -r slog="$logpath/$scriptname.log"	#Path to file for script log
declare -r hlogs=""	#Path to directory for save all host logs ($hostname.log)
debuglvl="DEBUG" # DEBUG, OK, INFO, WARN, CRIT


debug=false	#=true to activate logging in debug-mode
csv="hosts.csv"	#path to csv with host list

#########################
#	Functions	#
#########################
#Funktion timestamp
# Erzeugt bei Aufruf einen aktuellen Zeitstempel nach vorgegebenen Format fürs logging
#Rückgabewert: Zeitstempel
function timestamp() {

        timestamp=`/bin/date +%Y-%m-%d-%H:%M:%S`
        echo $timestamp
}
#Funktion logging
# Gibt übergebene Werte mit einem aktuellen Zeitstempel ins LOG
#params: 1: logfile , 2: stat , 3: reason
function logging() {
        logf="$1";
        stat="$2";
        out="PID=$$ $3";
	
	if [ ! -f $logf ]; then
		touch $logf;
	fi
        if [[ $stat == "line" ]]; then
                echo "`timestamp` $out" >> $logf
        else
                if [[ "$debuglvl" == "DEBUG" ]]; then
                        echo "`timestamp` $stat $out" >> $logf
                elif [[ "$debuglvl" == "OK"  ]]; then
                        if [[ "$stat" != "DEBUG" ]]; then
                                echo "`timestamp` $stat $out" >> $logf
                        fi
                elif [[ "$debuglvl" == "INFO" ]] ; then
                        if [[ "$stat" != "DEBUG" && "$stat" != "OK" ]]; then
                                echo "`timestamp` $stat $out" >> $logf
                        fi
                elif [[ "$debuglvl" == "WARN" ]] ; then
                        if [[ "$stat" == "WARN" || "$stat" == "CRIT" ]]; then
                                echo "`timestamp` $stat $out" >> $logf
                        fi
                elif [[ "$debuglvl" == "CRIT" && "$stat" == "CRIT" ]]; then
                        echo "`timestamp` $stat $out" >> $logf
                fi
                # Alle anderen andere Fälle werden nicht geloggt.
        fi

}
function save_logs() {
	exit 1;
}
function read_param() {
	exit 1;
}
function format_grep_filters() {
	exit 1;
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



###########################
###########################
###			###
###	   Main		###
###			###
###########################
###########################

logging "$slog" "line" "================================================================"
logging "$slog" "DEBUG" "start script and run read_param()"
#read script params
read_param

logging "$slog" "INFO" "script ended."
exit 0;
