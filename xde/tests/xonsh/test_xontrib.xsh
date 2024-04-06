#!/usr/bin/env xonsh

xpip install xontrib-sh > /dev/null 2> /dev/null
xpip install xontrib-clp > /dev/null 2> /dev/null

xontrib load sh > /dev/null 2> /dev/null
xontrib load clp > /dev/null 2> /dev/null

from xonsh.xontribs import get_xontribs
print(' '.join(n for n,x in get_xontribs().items() if x.is_loaded), end='')
