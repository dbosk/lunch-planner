.PHONY: all
all: lunch.pdf lunch.py

NOWEAVEFLAGS= 	-t2
NOTANGLEFLAGS= 	-t2

.PHONY: clean
clean:
	${RM} lunch.py lunch.tex lunch.pdf

INCLUDE_MAKEFILES=./makefiles
include ${INCLUDE_MAKEFILES}/noweb.mk
include ${INCLUDE_MAKEFILES}/tex.mk
