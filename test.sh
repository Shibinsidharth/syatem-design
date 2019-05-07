mca1749@mca-pc51:~$ cd D
Desktop/   Documents/ Downloads/ 
mca1749@mca-pc51:~$ cd Desktop/S4/shell/
mca1749@mca-pc51:~/Desktop/S4/shell$ ./sum 5 
invalid number of arguments
mca1749@mca-pc51:~/Desktop/S4/shell$ ./sum 5 4
9
mca1749@mca-pc51:~/Desktop/S4/shell$ ./sum 5 4
9
mca1749@mca-pc51:~/Desktop/S4/shell$ gedit forloop.sh
mca1749@mca-pc51:~/Desktop/S4/shell$ chmod +x forloop
chmod: cannot access 'forloop': No such file or directory
mca1749@mca-pc51:~/Desktop/S4/shell$ chmod +x forloop.sh
mca1749@mca-pc51:~/Desktop/S4/shell$ ./forloop.sh
1
2
3
4
5
6
7
8
9
10
mca1749@mca-pc51:~/Desktop/S4/shell$ more

Usage:
 more [options] <file>...

A file perusal filter for CRT viewing.

Options:
 -d          display help instead of ringing bell
 -f          count logical rather than screen lines
 -l          suppress pause after form feed
 -c          do not scroll, display text and clean line ends
 -p          do not scroll, clean screen and display text
 -s          squeeze multiple blank lines into one
 -u          suppress underlining
 -<number>   the number of lines per screenful
 +<number>   display file beginning from line number
 +/<string>  display file beginning from search string match
 -V          display version information and exit

For more details see more(1).
mca1749@mca-pc51:~/Desktop/S4/shell$ more ./forloop.sh
for i in {1..10}
do
echo $i
done

mca1749@mca-pc51:~/Desktop/S4/shell$ more -l  ./forloop.sh
for i in {1..10}
do
echo $i
done

mca1749@mca-pc51:~/Desktop/S4/shell$ more -f forloop.sh
for i in {1..10}
do
echo $i
done

mca1749@mca-pc51:~/Desktop/S4/shell$ more -1 forloop.sh
for i in {1..10}
do
echo $i
done

mca1749@mca-pc51:~/Desktop/S4/shell$ less
Missing filename ("less --help" for help)
mca1749@mca-pc51:~/Desktop/S4/shell$ less --help
sh: 1: /bin/csh: not found
mca1749@mca-pc51:~/Desktop/S4/shell$ ./sum 5 4
9
mca1749@mca-pc51:~/Desktop/S4/shell$ ./sum 5 
invalid number of arguments
mca1749@mca-pc51:~/Desktop/S4/shell$ ./sum 5 d 34
invalid number of arguments
mca1749@mca-pc51:~/Desktop/S4/shell$ less  forloop.sh
sh: 1: /bin/csh: not found
mca1749@mca-pc51:~/Desktop/S4/shell$ gedit test.sh
mca1749@mca-pc51:~/Desktop/S4/shell$ chmod +x test.sh
mca1749@mca-pc51:~/Desktop/S4/shell$ less  test.sh
sh: 1: /bin/csh: not found
mca1749@mca-pc51:~/Desktop/S4/shell$ less  test.sh
sh: 1: /bin/csh: not found
mca1749@mca-pc51:~/Desktop/S4/shell$ more test.sh
John Prakash <johnprakash@gmail.com>
	
AttachmentsJan 29, 2019, 9:14 AM (2 days ago)
	
to mca_cet_2017_2020 Unsubscribe
Students,

Todays exercise is to get familiarized with shell comands.
Shell is the command interpreter for Linux.
use these commands along with its various options.

1. echo, read
2. more, less
3. man
4. chmod, chown
5. cd, mkdir, pwd, ls, find
6. cat, mv, cp, rm
7. wc, cut, paste
8. head, tail, grep, expr
9. Redirections & Piping
10. useradd, usermod, userdel, passwd
11. tar

Go through the resource material attached.
Prepare a documentation for the above commands not exceeding 11 pages and submit in A4 double side - hand written in plastic slide folder uncli
pped o
Skip to content

    Home
    About
    Linux Shell Scripting TutoriaL
    RSS/Feed
    Donations
    Search

nixCraft

Linux and Unix tutorials for new and seasoned sysadmin
nixCraft
Bash For Loop Examples
last updated December 17, 2018 in Categories BASH Shell, CentOS, Debian / Ubuntu, FreeBSD, Linux, Solaris-Unix, Suse, Ubuntu Linux, UNIX

How do I use bash for loop to repeat certain task under Linux / UNIX operating system? How do I set infinite loops using for statement? How do 
I use three-parameter for loop control expression?

A ‘for loop’ is a bash programming language statement which allows code to be repeatedly executed. A for loop is classified as an iteration sta
tement i.e. it is the repetition of a process within a bash script. For example, you can run UNIX command or task 5 times or read and process l
ist of files using a for loop. A for loop can be used at a shell prompt or within a shell script itself.
Bash for loop examples for Macos/Linux and Unix

for loop syntax

Numeric ranges for syntax is as follows:

for VARIABLE in 1 2 3 4 5 .. N
do
	command1
	command2
	commandN
done

OR

for VARIABLE in file1 file2 file3
do
	command1 on $VARIABLE
	command2
	commandN
done

OR

for OUTPUT in $(Linux-Or-Unix-Command-Here)
do
	command1 on $OUTPUT
	command2 on $OUTPUT
	commandN
done

Examples

This type of for loop is characterized by counting. The range is specified by a beginning (#1) and ending number (#5). The for loop executes a 
sequence of commands for each member in a list of items. A representative example in BASH is as follows to display welcome message 5 times with
 for loop:

#!/bin/bash
for i in 1 2 3 4 5
do
   echo "Welcome $i times"
done

Sometimes you may need to set a step value (allowing one to count by two’s or to count backwards for instance). Latest bash version 3.0+ has in
built support for setting up ranges:

#!/bin/bash
for i in {1..5}
do
   echo "Welcome $i times"
done

Bash v4.0+ has inbuilt support for setting up a step value using {START..END..INCREMENT} syntax:

#!/bin/bash
echo "Bash version ${BASH_VERSION}..."
for i in {0..10..2}
  do 
     echo "Welcome $i times"
 done

Sample outputs:

Bash version 4.0.33(0)-release...
Welcome 0 times
Welcome 2 times
Welcome 4 times
Welcome 6 times
Welcome 8 times
Welcome 10 times

The seq command (outdated)
WARNING! The seq command print a sequence of numbers and it is here due to historical reasons. The following examples is only recommend for old
er bash version. All users (bash v3.x+) are recommended to use the above syntax.

The seq command can be used as follows. A representative example in seq is as follows:

#!/bin/bash
for i in $(seq 1 2 20)
do
   echo "Welcome $i times"
done

There is no good reason to use an external command such as seq to count and increment numbers in the for loop, hence it is recommend that you a
void using seq. The builtin command are fast.
Three-expression bash for loops syntax

This type of for loop share a common heritage with the C programming language. It is characterized by a three-parameter loop control expression
; consisting of an initializer (EXP1), a loop-test or condition (EXP2), and a counting expression (EXP3).

for (( EXP1; EXP2; EXP3 ))
do
	command1
	command2
	command3
done

A representative three-expression example in bash as follows:

#!/bin/bash
for (( c=1; c<=5; c++ ))
do  
   echo "Welcome $c times"
done

Sample output:

Welcome 1 times
Welcome 2 times
Welcome 3 times
Welcome 4 times
Welcome 5 times

How do I use for as infinite loops?

Infinite for loop can be created with empty expressions, such as:

#!/bin/bash
for (( ; ; ))
do
   echo "infinite loops [ hit CTRL+C to stop]"
done

Conditional exit with break

You can do early exit with break statement inside the for loop. You can exit from within a FOR, WHILE or UNTIL loop using break. General break 
statement inside the for loop:

for I in 1 2 3 4 5
do
  statements1      #Executed for all values of ''I'', up to a disaster-condition if any.
  statements2
  if (disaster-condition)
  then
	break       	   #Abandon the loop.
  fi
  statements3          #While good and, no disaster-condition.
done

Following shell script will go though all files stored in /etc directory. The for loop will be abandon when /etc/resolv.conf file found.

#!/bin/bash
for file in /etc/*
do
	if [ "${file}" == "/etc/resolv.conf" ]
	then
		countNameservers=$(grep -c nameserver /etc/resolv.conf)
		echo "Total  ${countNameservers} nameservers defined in ${file}"
		break
	fi
done

Early continuation with continue statement

To resume the next iteration of the enclosing FOR, WHILE or UNTIL loop use continue statement.

for I in 1 2 3 4 5
do
  statements1      #Executed for all values of ''I'', up to a disaster-condition if any.
  statements2
  if (condition)
  then
	continue   #Go to next iteration of I in the loop and skip statements3
  fi
  statements3
done

This script make backup of all file names specified on command line. If .bak file exists, it will skip the cp command.

#!/bin/bash
FILES="$@"
for f in $FILES
do
        # if .bak backup file exists, read next file
	if [ -f ${f}.bak ]
	then
		echo "Skiping $f file..."
		continue  # read next file and skip the cp command
	fi
        # we are here means no backup file exists, just use cp command to copy file
	/bin/cp $f $f.bak
done


...skipping 1 line

This tutorial is also available in a quick video format. The video shows some additional and practical examples such as converting all flac mus
ic files to mp3 format, all avi files to mp4 video format, unzipping multiple zip files or tar balls, gathering uptime information from multipl
e Linux/Unix servers, detecting remote web-server using domain names and much more.


Video 01: 15 Bash For Loop Examples for Linux / Unix / OS X Shell Scripting

Conclusion

You learned how to use the bash for loop with various example. See the following resources for more info.

    See all sample for loop shell script in our bash shell directory
    Bash for loop syntax and usage page from the Linux shell scripting wiki
    man bash
    help for
    help {
    help break
    help continue

Share on Facebook Twitter

Posted by: Vivek Gite

The author is the creator of nixCraft and a seasoned sysadmin, DevOps engineer, and a trainer for the Linux operating system/Unix shell scripti
ng. Get the latest tutorials on SysAdmin, Linux/Unix and open source topics via RSS/XML feed or weekly email newsletter.
Your support makes a big difference:

I have a small favor to ask. More people are reading the nixCraft. Many of you block advertising which is your right, and advertising revenues 
are not sufficient to cover my operating costs. So you can see why I need to ask for your help. The nixCraft takes a lot of my time and hard wo
rk to produce. If everyone who reads nixCraft, who likes it, helps fund it, my future would be more secure. You can donate as little as $1 to s
upport nixCraft:

Become a Supporter Make a contribution via Paypal/Bitcoin
Start the discussion at www.nixcraft.com
Historical Comment Archive
[Comments] 254 comment

    Jadu Saikia says:
    November 2, 2008 at 3:37 pm

    Nice one. All the examples are explained well, thanks Vivek.

...skipping 1 line
    seq 1 2 20
    output can also be produced using jot

    jot – 1 20 2

    The infinite loops as everyone knows have the following alternatives.

    while(true)
    or
    while :

    //Jadu
    Sean says:
    November 4, 2008 at 2:20 am

    The last example can also be produced without the ” in $FILES”:

    #!/bin/sh

    for f
    do

    # For-Loop body

    done

    If the ” in …” is excluded, the loop will run as if “in $@” was given.
    Andreas says:
    November 13, 2008 at 4:53 am

    Nice explanation tutorial.
    Manish says:
    November 25, 2008 at 6:33 am

    hey vivek i tried the following syntax for for loop suggested by u but both dint work…
    1.
    #!/bin/bash
    for (( c=1; c<=5; c++ ))
    do
    echo “Welcome $c times…”
    done


...skipping 1 line
    #!/bin/bash
    for i in {1..5}
    do
    echo “Welcome $i times”
    done

    got error for both the syntax
    1. unexpected ‘(‘
    2. it printed welcome {1..5} times instead repeating it…

    help..?
        balamurugan says:
        August 11, 2010 at 5:24 am

        hi manish your both coding are correct… before execute you must give the execution permission for that file… so you try following steps
…
        1.goto terminal
        2. vim simple
        3.then write the following code..

        for (( c=1; c<=5; c++ ))
        do
        echo â€œWelcome $c timesâ€¦â€
        done

        4.then save and quit
        5.chmod 744 simple
        6. ./simple

        i hope surely it will help you…
        Manish Kumar Mishra says:
        February 3, 2011 at 5:16 am

        It works properly just check it again..
        Dr. Stefan Gruenwald says:
        April 1, 2011 at 3:53 am

        I can help you on 2. — You were not using the Bash 3.0 or higher. Upgrade your bash and it will work.
        Niranjan says:
        May 10, 2011 at 1:35 am

        Hi All,
mca1749@mca-pc51:~/Desktop/S4/shell$ ./sum 5 4
./sum: line 6: a+b: command not found

mca1749@mca-pc51:~/Desktop/S4/shell$ man
What manual page do you want?
mca1749@mca-pc51:~/Desktop/S4/shell$ man --help 
Usage: man [OPTION...] [SECTION] PAGE...

  -C, --config-file=FILE     use this user configuration file
  -d, --debug                emit debugging messages
  -D, --default              reset all options to their default values
      --warnings[=WARNINGS]  enable warnings from groff

 Main modes of operation:
  -f, --whatis               equivalent to whatis
  -k, --apropos              equivalent to apropos
  -K, --global-apropos       search for text in all pages
  -l, --local-file           interpret PAGE argument(s) as local filename(s)
  -w, --where, --path, --location
                             print physical location of man page(s)
  -W, --where-cat, --location-cat
                             print physical location of cat file(s)

  -c, --catman               used by catman to reformat out of date cat pages
  -R, --recode=ENCODING      output source page encoded in ENCODING

 Finding manual pages:
  -L, --locale=LOCALE        define the locale for this particular man search
  -m, --systems=SYSTEM       use manual pages from other systems
  -M, --manpath=PATH         set search path for manual pages to PATH

  -S, -s, --sections=LIST    use colon separated section list

  -e, --extension=EXTENSION  limit search to extension type EXTENSION

  -i, --ignore-case          look for pages case-insensitively (default)
  -I, --match-case           look for pages case-sensitively

      --regex                show all pages matching regex
      --wildcard             show all pages matching wildcard

      --names-only           make --regex and --wildcard match page names only,
                             not descriptions

  -a, --all                  find all matching manual pages
  -u, --update               force a cache consistency check

      --no-subpages          don't try subpages, e.g. 'man foo bar' => 'man
                             foo-bar'

 Controlling formatted output:
  -P, --pager=PAGER          use program PAGER to display output
  -r, --prompt=STRING        provide the `less' pager with a prompt

  -7, --ascii                display ASCII translation of certain latin1 chars
  -E, --encoding=ENCODING    use selected output encoding
      --no-hyphenation, --nh turn off hyphenation
      --no-justification,                              --nj   turn off justification
  -p, --preprocessor=STRING  STRING indicates which preprocessors to run:
                             e - [n]eqn, p - pic, t - tbl,
g - grap, r - refer, v - vgrind

  -t, --troff                use groff to format pages
  -T, --troff-device[=DEVICE]   use groff with selected device

  -H, --html[=BROWSER]       use www-browser or BROWSER to display HTML output
  -X, --gxditview[=RESOLUTION]   use groff and display through gxditview
                             (X11):
                             -X = -TX75, -X100 = -TX100, -X100-12 = -TX100-12
  -Z, --ditroff              use groff and force it to produce ditroff

  -?, --help                 give this help list
      --usage                give a short usage message
  -V, --version              print program version

Mandatory or optional arguments to long options are also mandatory or optional
for any corresponding short options.

Report bugs to cjwatson@debian.org.
mca1749@mca-pc51:~/Desktop/S4/shell$ man ls
mca1749@mca-pc51:~/Desktop/S4/shell$ man cp
mca1749@mca-pc51:~/Desktop/S4/shell$ ./test
bash: ./test: No such file or directory
mca1749@mca-pc51:~/Desktop/S4/shell$ ./test.sh


+
mca1749@mca-pc51:~/Desktop/S4/shell$ 
mca1749@mca-pc51:~/Desktop/S4/shell$ ./test.sh
4
5
4+5
mca1749@mca-pc51:~/Desktop/S4/shell$ ./test.sh
3
4
7
mca1749@mca-pc51:~/Desktop/S4/shell$ chown shibi test.sh
chown: invalid user: ‘shibi’
mca1749@mca-pc51:~/Desktop/S4/shell$ chown mca1747 test.sh
chown: changing ownership of 'test.sh': Operation not permitted
mca1749@mca-pc51:~/Desktop/S4/shell$ cd
mca1749@mca-pc51:~$ pwd
/var/nfs/.home/mca2017/mca1749
mca1749@mca-pc51:~$ ls -l
total 96
-rwxr-xr-x 1 mca1749 mca2017 7474 Aug 17  2017 a.out
-rw-r--r-- 1 mca1749 mca2017  229 Aug 17  2017 armstrong.c~
drwxr-xr-x 4 mca1749 mca2017 4096 Jan 29 14:22 Desktop
drwxr-xr-x 4 mca1749 mca2017 4096 Sep 16  2017 Documents
drwxr-xr-x 2 mca1749 mca2017 4096 Jan 29 14:30 Downloads
-rw-r--r-- 1 mca1749 mca2017 8980 Aug  8  2017 examples.desktop
-rw-r--r-- 1 mca1749 mca2017   52 Aug  8  2017 hello.c~
-rw-r--r-- 1 mca1749 mca2017  153 Aug  8  2017 multtable.c~
drwxr-xr-x 2 mca1749 mca2017 4096 Aug  8  2017 Music
-rw-r--r-- 1 mca1749 mca2017  153 Aug  8  2017 oddoreven.c~
drwxr-xr-x 3 mca1749 mca2017 4096 Oct 23 10:44 oradiag_mca1749
-rw-r--r-- 1 mca1749 mca2017  226 Aug 17  2017 palindrome.c~
-rw-r--r-- 1 mca1749 mca2017  364 Aug 17  2017 palinstr.c~
-rw-r--r-- 1 mca1749 mca2017  370 Aug 17  2017 palinstrs.c~
-rw-r--r-- 1 mca1749 mca2017 1926 Mar 19  2018 para1.c~
drwxr-xr-x 2 mca1749 mca2017 4096 Aug  8  2017 Pictures
drwxr-xr-x 2 mca1749 mca2017 4096 Aug  8  2017 Public
-rw-r--r-- 1 mca1749 mca2017  179 Aug  8  2017 sum.c~
drwxr-xr-x 2 mca1749 mca2017 4096 Aug  8  2017 Templates
-rw-r--r-- 1 mca1749 mca2017 2950 Jan 31  2018 Untitled Document 1~
drwxr-xr-x 2 mca1749 mca2017 4096 Aug  8  2017 Videos
mca1749@mca-pc51:~$ cd Desktop/S4/shell/
mca1749@mca-pc51:~/Desktop/S4/shell$ cd
mca1749@mca-pc51:~$ cd Desktop/S4/shell/
mca1749@mca-pc51:~/Desktop/S4/shell$ pwd
/var/nfs/.home/mca2017/mca1749/Desktop/S4/shell
mca1749@mca-pc51:~/Desktop/S4/shell$ ls -l
total 368
-rwx--x--x 1 mca1749 mca2017     64 Jan 29 15:05 firstshell
-rwxr-xr-x 1 mca1749 mca2017     34 Jan 31 11:34 forloop.sh
-rw-r--r-- 1 mca1749 mca2017  62751 Jan 29 14:28 shell-script.pdf
-rwxr-xr-x 1 mca1749 mca2017     98 Jan 31 11:50 sum
-rwxr-xr-x 1 mca1749 mca2017     28 Jan 31 11:54 test.sh
-rw-r--r-- 1 mca1749 mca2017 294912 Jan 29 14:29 UGC-CS-10-unix.ppt
mca1749@mca-pc51:~/Desktop/S4/shell$ find
.
./firstshell
./forloop.sh
./sum
./shell-script.pdf
./.~lock.UGC-CS-10-unix.ppt#
./test.sh
./UGC-CS-10-unix.ppt
mca1749@mca-pc51:~/Desktop/S4/shell$ find fi
find: ‘fi’: No such file or directory
mca1749@mca-pc51:~/Desktop/S4/shell$ find test.sh
test.sh
mca1749@mca-pc51:~/Desktop/S4/shell$ find test
find: ‘test’: No such file or directory
mca1749@mca-pc51:~/Desktop/S4/shell$ find ./shell - name test.sh
find: ‘./shell’: No such file or directory
find: ‘-’: No such file or directory
find: ‘name’: No such file or directory
test.sh
mca1749@mca-pc51:~/Desktop/S4/shell$ find ./shell -name test.sh
find: ‘./shell’: No such file or directory
mca1749@mca-pc51:~/Desktop/S4/shell$ cd
mca1749@mca-pc51:~$ find Desktop/S4/shell -name test.sh
Desktop/S4/shell/test.sh
mca1749@mca-pc51:~$ cd Desktop/S4/shell/
mca1749@mca-pc51:~/Desktop/S4/shell$ cd
mca1749@mca-pc51:~$ find Desktop/S4/shell -name *.sh
Desktop/S4/shell/forloop.sh
Desktop/S4/shell/test.sh
mca1749@mca-pc51:~$ cd Desktop/S4/shell/
mca1749@mca-pc51:~/Desktop/S4/shell$ mkdir ~/shibi
mca1749@mca-pc51:~/Desktop/S4/shell$ cd shibi
bash: cd: shibi: No such file or directory
mca1749@mca-pc51:~/Desktop/S4/shell$ cd /shibi
bash: cd: /shibi: No such file or directory
mca1749@mca-pc51:~/Desktop/S4/shell$ mkdir shibi
mca1749@mca-pc51:~/Desktop/S4/shell$ cd /shibi
bash: cd: /shibi: No such file or directory
mca1749@mca-pc51:~/Desktop/S4/shell$ cd shibi
mca1749@mca-pc51:~/Desktop/S4/shell/shibi$ cd
mca1749@mca-pc51:~$ cd Desktop/S4/shell/
mca1749@mca-pc51:~/Desktop/S4/shell$ cat
^[[A^[[A^Z
[1]+  Stopped                 cat
mca1749@mca-pc51:~/Desktop/S4/shell$ cat --help
Usage: cat [OPTION]... [FILE]...
Concatenate FILE(s) to standard output.

With no FILE, or when FILE is -, read standard input.

  -A, --show-all           equivalent to -vET
  -b, --number-nonblank    number nonempty output lines, overrides -n
  -e                       equivalent to -vE
  -E, --show-ends          display $ at end of each line
  -n, --number             number all output lines
  -s, --squeeze-blank      suppress repeated empty output lines
  -t                       equivalent to -vT
  -T, --show-tabs          display TAB characters as ^I
  -u                       (ignored)
  -v, --show-nonprinting   use ^ and M- notation, except for LFD and TAB
      --help     display this help and exit
      --version  output version information and exit

Examples:
  cat f - g  Output f's contents, then standard input, then g's contents.
  cat        Copy standard input to standard output.

GNU coreutils online help: <http://www.gnu.org/software/coreutils/>
Full documentation at: <http://www.gnu.org/software/coreutils/cat>
or available locally via: info '(coreutils) cat invocation'
mca1749@mca-pc51:~/Desktop/S4/shell$ cat one.txt two.txt
shibin
sidharth
mca1749@mca-pc51:~/Desktop/S4/shell$ cp one.txt two.txt
mca1749@mca-pc51:~/Desktop/S4/shell$ cat one.txt two.txt
shibin
shibin
mca1749@mca-pc51:~/Desktop/S4/shell$ cat one.txt two.txt
shibin
sidharth
mca1749@mca-pc51:~/Desktop/S4/shell$ mv one.txt two.txt
mca1749@mca-pc51:~/Desktop/S4/shell$ cat one.txt two.txt
cat: one.txt: No such file or directory
shibin
mca1749@mca-pc51:~/Desktop/S4/shell$ cat two.txt three.txt
shibin
cat: three.txt: No such file or directory
mca1749@mca-pc51:~/Desktop/S4/shell$ rm two.txt
mca1749@mca-pc51:~/Desktop/S4/shell$ wc
^Z
[2]+  Stopped                 wc
mca1749@mca-pc51:~/Desktop/S4/shell$ wc test.sh
 3  6 28 test.sh
mca1749@mca-pc51:~/Desktop/S4/shell$ cut -b 1 test.sh
r
r
e
mca1749@mca-pc51:~/Desktop/S4/shell$ paste one.txt two.txt 
A	1
B	2
C	3
D	4
E	5
mca1749@mca-pc51:~/Desktop/S4/shell$ head test.sh

Conversation opened. 1 read message.

Skip to content
Using Gmail with screen readers
Enable desktop notifications for Gmail.   OK  No thanks
SD LAB - Exercise - 1
John Prakash <johnprakash@gmail.com>
	
AttachmentsJan 29, 2019, 9:14 AM (2 days ago)
mca1749@mca-pc51:~/Desktop/S4/shell$ tail test.sh
Thiruvananthapuram - 695 016
ph: 9495502400.


email : john@cet.ac.in
2 Attachments
	
	
	

mca1749@mca-pc51:~/Desktop/S4/shell$ grep -c "john" test.sh
2
mca1749@mca-pc51:~/Desktop/S4/shell$ grep -c "John" test.sh
2
mca1749@mca-pc51:~/Desktop/S4/shell$ grep -c "mca_cet" test.sh
1
mca1749@mca-pc51:~/Desktop/S4/shell$ grep -w "mca_cet" test.sh
mca1749@mca-pc51:~/Desktop/S4/shell$ grep -w "John" test.sh
John Prakash <johnprakash@gmail.com>
John Prakash Joseph,
mca1749@mca-pc51:~/Desktop/S4/shell$ expr 1 + 2
3
mca1749@mca-pc51:~/Desktop/S4/shell$ cd
mca1749@mca-pc51:~$ ls
a.out         Documents         hello.c~      oddoreven.c~     palinstr.c~   Pictures  sum.c~                Videos
armstrong.c~  Downloads         multtable.c~  oradiag_mca1749  palinstrs.c~  Public    Templates
Desktop       examples.desktop  Music         palindrome.c~    para1.c~      shibi     Untitled Document 1~
mca1749@mca-pc51:~$ ls | head -3 | tail -2
armstrong.c~
Desktop
mca1749@mca-pc51:~$ ls | head -3
a.out
armstrong.c~
Desktop
mca1749@mca-pc51:~$ mkdir sid | ls
a.out         Documents         hello.c~      oddoreven.c~     palinstr.c~   Pictures  sid        Untitled Document 1~
armstrong.c~  Downloads         multtable.c~  oradiag_mca1749  palinstrs.c~  Public    sum.c~     Videos
Desktop       examples.desktop  Music         palindrome.c~    para1.c~      shibi     Templates
mca1749@mca-pc51:~$ cd Desktop/S4/shell/
mca1749@mca-pc51:~/Desktop/S4/shell$ mkdir sid | ls
firstshell  forloop.sh  one.txt  shell-script.pdf  shibi  sid  sum  test.sh  two.txt  UGC-CS-10-unix.ppt
mca1749@mca-pc51:~/Desktop/S4/shell$ ls > one.txt
mca1749@mca-pc51:~/Desktop/S4/shell$ less one.txt
sh: 1: /bin/csh: not found
mca1749@mca-pc51:~/Desktop/S4/shell$ grep -w "John" test.sh >> one.txt
mca1749@mca-pc51:~/Desktop/S4/shell$ less one.txt
sh: 1: /bin/csh: not found
mca1749@mca-pc51:~/Desktop/S4/shell$ tar -cvf xyz.tar test.sh
test.sh
mca1749@mca-pc51:~/Desktop/S4/shell$ cd Desktop/S4/shell/
bash: cd: Desktop/S4/shell/: No such file or directory
mca1749@mca-pc51:~/Desktop/S4/shell$ cd
mca1749@mca-pc51:~$ cd Desktop/S4/shell/
mca1749@mca-pc51:~/Desktop/S4/shell$ gedit copy.sh
mca1749@mca-pc51:~/Desktop/S4/shell$ 

