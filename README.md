# The compiler beautyfier - CCDV.

This wasn't originaly my project, but this one: http://sourceforge.net/projects/ccdv/

But, I am editing this tool, to make it a little more modern. What I added so far:

- It now knows what cpp files are.
- If you are using the -c flag, it will list that named target - it'll skip -o. If no -c is specified, it'll fall back to the default and show the argument to -o.
- Adding TRUE and FALSE as integers
- Adding a makefile and ninja file.
- Added support for .lo files - Libtool objects. That was due to PHP.


## ToDo

- Option to change display mode. Examples:
```
GCC	file.c
# or
CXX	file.cpp
# or even add something non-compiler. Maybe useful in makefiles
CP	file -> /dir/file
# It may also recognize the first programm name if this mode of displaying was specified:
SCRIPT	flags

# The other display mode:
file.c			[OK]
```

- A scripted copy of this to use when prepairing to use the compiled binary.
- MAYBE. Reading commands seperated with \n from the command line and executing one after another...an alternative if NO BUILDSYSTEM AT ALL is present - or whatever.



If you like this, feel free to contact me or the original developer about this. I think its a nice tool. It's real meaning is to be used in makefiles to beautify the output. 

The help reads:

```
$ ccdv
Usage: ccdv /path/to/cc CFLAGS...

I wrote this to reduce the deluge Make output to make finding actual problems
easier.  It is intended to be invoked from Makefiles, like this.  Instead of:

	.c.o:
		$(CC) $(CFLAGS) $(DEFS) $(CPPFLAGS) $< -c

Rewrite your rule so it looks like:

	.c.o:
		@ccdv $(CC) $(CFLAGS) $(DEFS) $(CPPFLAGS) $< -c

ccdv 1.1.0 is Free under the GNU Public License.  Enjoy!
  -- Mike Gleason, NcFTP Software <http://www.ncftp.com>
  -- Edited by Ingwie Phoenix, 2013 <http://ingwie.me>
```

Enjoy.
