#!/bin/sh

read -p "URL: " url

youtube-dl \
	-x \
	--audio-format best \
	--audio-quality 0 \
	-o "%(title)s.%(ext)s" \
	--add-metadata \
	$url
