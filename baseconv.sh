#!/bin/bash
#
# Script Name: baseconv.sh
#
# Author: Kyle Hoppner
# Date: 2/12/19
#
# Description:
#
# Run Information:
#
# Error Log:

for arg in "$@"; do
	shift
	case "$arg" in
		-h, --help)
			echo 'Usage: baseconv.sh [options] [input format] [output format] [integers...]'
			echo 'Defaults:			 		   [ --decimal  ] [--hexadecimal]'
			echo
			echo 'Options:'
			echo '-h, --help:		Display this message'
			echo ''
			echo '-b, --binary		Base 2'
			echo '-d, --decimal		Base 10'
			echo '-x, --hexadecimal	Base 16'
			echo '-o, --octal		Base 8'
			;;
		*)
			if [ "$arg" -ge - ]; then
				# add arg to input array
			else
				echo "unknown parameter: $arg"
				echo "use option '-h' to display options"
				break
			fi
			;;
	esac
done

