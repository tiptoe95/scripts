#!/bin/bash


while [ $# -gt 0 ]; do
	cache_name="$1"
	shift
	case $cache_name in
		"spotify")
			cache_path='/home/kyle/Music/Spotify Cache';;
		*)
			echo "unknown cache: $cache_name";
			continue;;
	esac
	
	if [ ! $(ls -A "$cache_path") ]; then
		echo "cache is already empty"
		continue
	fi
	echo "clearing out $cache_path"
	rm -r "${cache_path}"/*
done

echo "all caches cleared"
