#!/bin/bash

# this file backs up files/folders in your system.
input=$1
output=$2

today=$(date +%Y-%m-%d:%H:%M)
echo "Backing up data in $output_($today).tar.7z"

# 7z command arguments
# ====================
# a                     add files to archive
# backup_$today.7z      desitnation/output zip file/folder location
# -m0                   parameter: 0, compression method set as lzma2
# -mx                   parameter: x, set as 9
# -r0                   recurse sub-directories
# -si                   read data from stdin
# *                     <input> source files/folder to compress location

# tar command arguments
# =====================
# c                     create
# f                     creates an archive file
# p                     preserve file permissions and ownership
# v                     be verobse - print all actions
# z                     enables gzip compression

# compresses a tar file into a 7z
tar cfpvz - $input | 7z a -m0=lzma2 -mx=9 -si $output_$today.tar.7z
