
\#include <...> (system include files) or \#include "..." (header files)

c pre processor is given the program, modifies it, then hands the modified c compiler


defn.h header file
\#ifndef DEFN_H
\#define DEFN_H
... defn.h header file content ...
\#endif

what does it do
	if DEFN_H is not defined, define it
	if defn.h is included twice in a .c file, it prevents it to only be defined once
	-
	would prevent content in defn.h not be defined multiple times by multiple calls to include defn.h

gcc -DENV passes the environment variable along when compiling