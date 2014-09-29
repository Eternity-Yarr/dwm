# dwm version
VERSION = 6.1

# Customize below to fit your system

# paths
PREFIX = ~/dwm
MANPREFIX = ${PREFIX}/share/man

X11INC = /nix/store/as5sx03nj0d96w01lb1jhlc7796wwdy0-libX11-1.6.2/include
X11LIB = /nix/store/as5sx03nj0d96w01lb1jhlc7796wwdy0-libX11-1.6.2/lib

XPROTOINC = /nix/store/i2l7kxx39l8pf7jv0xkpchjqdk0yfl6j-xproto-7.0.26/include
XPROTOLIB = /nix/store/i2l7kxx39l8pf7jv0xkpchjqdk0yfl6j-xproto-7.0.26/lib

# Xinerama, comment if you don't want it
XINARAMALIBPATH = /nix/store/vlx1fnpr4y119lfhbrsgi3zdn2sjww06-libXinerama-1.1.3/lib
XINERAMALIBS  = -lXinerama -L${XINARAMALIBPATH}
XINERAMAFLAGS = -DXINERAMA
XINERAMAINC = /nix/store/vlx1fnpr4y119lfhbrsgi3zdn2sjww06-libXinerama-1.1.3/include

# includes and libs
INCS = -I${X11INC} -I${XPROTOINC} -I${XINERAMAINC}
LIBS = -L${X11LIB} -lX11 ${XINERAMALIBS} -L${XPROTOLIB}

# flags
CPPFLAGS = -D_BSD_SOURCE -D_POSIX_C_SOURCE=2 -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
#CFLAGS   = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS}
CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os ${INCS} ${CPPFLAGS}
LDFLAGS  = -s ${LIBS}

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = cc
