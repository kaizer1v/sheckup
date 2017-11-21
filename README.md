# Sheckup

A shell based file backing-up software.

- 7z command explained [Ref Link - 1](https://www.howtoforge.com/tutorial/how-to-install-and-use-7zip-file-archiver-on-ubuntu-linux/)
- tar command explained [Ref Link - 2](https://www.howtoforge.com/tutorial/linux-tar-command/)
- tar command [Ref Link - 3](http://www.gnu.org/software/tar/manual/html_node/file.html#SEC107)


## Usage

You can use this software on your shell command like so:

```sh
$ ./main.sh src_folder_path dest_path/dest_filename
```

- `src_folder_path` is the absolute path of the folder you want to back-up.
- `dest_path/dest_filename` is the absolute path of the folder followed by the filename (*without an extension*) you want to back-it-up in.

> **NOTE**: The software automatically saves it as a bz2 zipped format, for efficiency purposes and thus, you don't need to
provide a file extension.
