# Sheckup

A shell based file backing-up software.

- 7z command explained [Ref Link - 1](https://www.howtoforge.com/tutorial/how-to-install-and-use-7zip-file-archiver-on-ubuntu-linux/)
- tar command explained [Ref Link - 2](https://www.howtoforge.com/tutorial/linux-tar-command/)
- tar command [Ref Link - 3](http://www.gnu.org/software/tar/manual/html_node/file.html#SEC107)
- backup [Ref Link - 4](https://blog.sleeplessbeastie.eu/2013/03/12/simple-shell-script-to-backup-selected-directories/)


## Usage

Below are some of the features of the sofware and how to use them.

### Parameters

There are two main parameters required by the software, mainly

1. An input directory to zip
2. An output filename to zip it in

```sh
$ ./main.sh src_folder_path dest_path/dest_filename
```

- `src_folder_path` is the absolute path of the folder you want to back-up.
- `dest_path/dest_filename` is the absolute path of the folder followed by the filename (*without an extension*) you want to back-it-up in.

> **NOTE**: The software automatically saves it as a bz2 zipped format, for efficiency purposes and thus, you don't need to
provide a file extension.

Example

```sh
$ ./main.sh /var/www /opt/backups/websites
```

In case if an output file name is not provided, it will automatically save it with the current timestamp.

### Logging

The software automatically saves a `.log` file along with the `bz2` zipped file. This will
contain the paths of the files copied/zipped.

### Skip Files and Folders

The software also allows you to omit/skip files and folders which you might not want to zip. This
can be mentioned in the `.gitignore` file.
