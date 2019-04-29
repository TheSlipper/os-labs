#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Usage: $0 song_title song_genre song_performer"
	exit -1
fi
song_title=$1
song_genre=$2
song_performer=$3
if [ "$song_genre" = "Blues" ] || [ "$song_genre" = "Jazz" ] || [ "$song_genre" = "Rock" ]; then
	echo "$song_title, $song_genre, $song_performer" >> 84.txt
fi


