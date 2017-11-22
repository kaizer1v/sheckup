#!/bin/sh

# Parent backup directory
dest_fldr="/media/vivek/Everything/.bckp_fldr"

# Directories to backup (separated by space)
src_flders="/media/vivek/Everything/personal_projects/daytrippr /media/vivek/Everything/personal_projects/pandas"

# Check and create backup directory
backup_date=`date +%Y_%m_%d_%H_%M`
backup_dir=${dest_fldr}/bckp_${backup_date}
mkdir -p $backup_dir

# Perform backup
for fldr in $src_flders
do
  # replace all backslashes and frontslashes with an `_` as a folder name
  archive_name=`echo ${fldr} | sed s/^\\\/// | sed s/\\\//_/g`
  echo ${archive_name}
  tar --exclude-from=.gitignore -cpzjf ${backup_dir}/${archive_name}.tgz ${fldr}
done
