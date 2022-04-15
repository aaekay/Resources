
### bash
is bourne again shell

### shortcuts
able 2-2: Command-Line Keystrokes

Keystroke	Action
CTRL-B	Move the cursor left
CTRL-F	Move the cursor right
CTRL-P	View the previous command (or move the cursor up)
CTRL-N	View the next command (or move the cursor down)
CTRL-A	Move the cursor to the beginning of the line
CTRL-E	Move the cursor to the end of the line
CTRL-W	Erase the preceding word
CTRL-U	Erase from cursor to beginning of line
CTRL-K	Erase from cursor to end of line
CTRL-Y	Paste erased text (for example, from CTRL-U)


#### cat
1. input and outoput streams - standard input and output stdin stdout
streams flexible
    1. input 
        file device terminal window output stream of a process
    2. output
    3. standard error
#### cp
cp file1 file2
cp file dir
cp file1 file2 file3 dir

#### touch
For example, to create an empty file, enter this:

touch file

#### rm
rm -r dir to delete a directory and its contents
#### cd
The cd command is a shell built-in. It wouldn’t work as a separate program because if it were to run as a subprocess, it could not (normally) change its parent’s current working directory. This may not seem a particularly important distinction at the moment, but there are times when knowing this fact can clear up confusion.
#### mkdir
#### rmdir

#### globbing
1. *
   at* expands to all filenames that start with at.
*at expands to all filenames that end with at.
*at* expands to all filenames that contain at.
2.  ?
b?at matches boat and brat

#### grep
1. to print the lines in the /etc/passwd file that contain the text root, enter this:
grep root /etc/passwd
2. For example, if you want to check every file in /etc that contains the word root, you could use this command:
grep root /etc/*
3. options
    1. -i for case senstive matches
    2. -v for inverting the search
    3. -w for looking for the exact word
4. if you want to search more than 1 word and
    1. search grep "123456\|123457"
4. regular expressions
.* matches any number of characters, including none (like the * in globs and wildcards).
.+ matches any one or more characters.
. matches exactly one arbitrary character.    



####  pwd
-P for full path

#### diff

#### file
to check the format of the fiel

#### find
find dir -name file -print

#### less
To page through a big file like /usr/share/dict/words, you can use the command less /usr/share/dict/words. When running less, you’ll see the contents of the file one screenful at a time. Press the spacebar to go forward in the file and press b (lowercase) to skip back one screenful. To quit, press q.

#### ln
ln -s target linkname
The linkname argument is the name of the symbolic link, the target argument is the path of the file or directory that the link points to, and the -s flag specifies a symbolic link

#### ls
-a = for dot files


ctrl d vs ctrl c
Pressing CTRL-D on an empty line stops the current standard input entry from the terminal with an EOF (end-of-file) message (and often terminates a program). Don’t confuse this with CTRL-C, which usually terminates a program regardless of its input or output

#### getting help with man
man ls
man -k keyword
info command  | less
### environment variable
An environment variable is like a shell variable, but it’s not specific to the shell. All processes on Unix systems have environment variable storage. The main difference between environment and shell variables is that the operating system passes all of your shell’s environment variables to programs that the shell runs, whereas shell variables cannot be accessed in the commands that you run.

#### PATH
PATH is a special environment variable that contains the command path (or path for short), a list of system directories that the shell searches when trying to locate a command. For example, when you run ls, the shell searches the directories listed in PATH for the ls program. If programs with the same name appear in several directories in the path, the shell runs the first matching program.

If you run echo $PATH, you’ll see that the path components are separated by colons (:)
PATH=dir:$PATH --> to add first look directories
PATH=$PATH:dir --> to append the list

### SHell Input and Output
1. command 
command > file
command >> file
To send the standard output of a command to the standard input of another command, use the pipe character (|)
2. standard error
    You can redirect the standard error if you like. For example, to send standard output to f and standard error to e, use the 2> syntax, like this:
    ls /fffffffff > f 2> e

3. standard input redirection
    To channel a file to a program’s standard input, use the < operator:
    head < /proc/cpuinfo

4. Background processes:
    Normally, when you run a Unix command from the shell, you don’t get the shell prompt back until the program finishes executing. However, you can detach a process from the shell and put it in the “background” with the ampersand (&); this gives you the prompt back
    1. gunzip file.gz & 

### permissions
or example, to add group (g) and world (o, for “other”) read (r) permissions to file, you could run these two commands:
chmod g+r file
chmod o+r file
Table 2-4: Absolute Permission Modes

Mode	Meaning	Used for
644	user: read/write; group, other: read	files
600	user: read/write; group, other: none	files
755	user: read/write/execute; group, other: read/execute	directories, programs
700	user: read/write/execute; group, other: none	directories, programs
711	user: read/write/execute; group, other: execute	directories


### compressing and archiving
formats

| ----- | -----|
| format |     |
| gz | |
| tar | |
| xz | |
| bz2 | | 

1. gzip
    1. single file only
    2. gzip
    3. gunzip
2. tar: works like zip
    tar cvf archive.tar file1 file2 file3
cvf     c = crate mode
        v = verbose diagnostice output
        print name of files and directories
        another v = file size permissions
        f = file option
xvf
     x = extract
t   to check the content table
p   to preserve permission

3. gunzip -dc file.tar.gz | tar xvf - 
4. zcat file.tar.gz | tar xvf -
5. tar ztvf file.tar.gz

### Reference books
1. Learning the UNIX Operating System
2. UNIX for the Impatient
3. The Linux Command Line
4. If you like math and are interested in where regular expressions come from, look up Introduction to Automata Theory, Languages, and Computation, 3rd edition, by Jeffrey Ullman and John Hopcroft (Prentice Hall, 2006).
5. Learning the vi and Vim Editors: Unix Text Processing, 7th edition, by Arnold Robbins, Elbert Hannah, and Linda Lamb (O’Reilly, 2008), can tell you everything you need to know about vi. For Emacs, use the online tutorial: start Emacs, press CTRL-H, and then type T. Or read GNU Emacs Manual, 18th edition, by Richard M. Stallman (Free Software Foundation, 2018).