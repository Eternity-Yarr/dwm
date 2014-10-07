# dwm version
VERSION = 6.1

# Customize below to fit your system

# paths
PREFIX = ~/dwm
MANPREFIX = ${PREFIX}/share/man

X11INC = /nix/store/cq72jwk3ypi5br1xv5inmxq9xvjn6n3c-xproto-7.0.26/include -I/nix/store/7plr96lk6sb43z5zcqlg0w70pxbsrx0l-libX11-1.6.2/include
X11LIB = /nix/store/cq72jwk3ypi5br1xv5inmxq9xvjn6n3c-xproto-7.0.26/lib -L/nix/store/7plr96lk6sb43z5zcqlg0w70pxbsrx0l-libX11-1.6.2/lib -L/nix/store/vlx1fnpr4y119lfhbrsgi3zdn2sjww06-libXinerama-1.1.3/lib -L/nix/store/i11d0d4015p0vbdnjq7lb509v9pwp049-glibc-2.19/lib

# Xinerama, comment if you don't want it
# XINERAMALIBPATH =
# XINERAMALIBS  = -lXinerama -L${XINERAMALIBPATH}
XINERAMAFLAGS = -DXINERAMA
XINERAMAINC = /nix/store/vlx1fnpr4y119lfhbrsgi3zdn2sjww06-libXinerama-1.1.3/include

# includes and libs
INCS = -I${X11INC} -I${XINERAMAINC}
LIBS = -L${X11LIB}  -lXinerama -lX11
# ${XINERAMALIBS}

# flags
CPPFLAGS = -D_BSD_SOURCE -D_POSIX_C_SOURCE=2 -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}

#CFLAGS   = -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Os ${INCS} ${CPPFLAGS} -ggdb3 -O0 -g

CFLAGS   =  -std=c99 -pedantic -Wall -Wno-deprecated-declarations -Wvariadic-macros ${INCS} ${CPPFLAGS} -Os

LDFLAGS  = -s ${LIBS} -v


# compiler and linker
CC = clang
