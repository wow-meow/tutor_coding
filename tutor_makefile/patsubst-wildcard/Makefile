STRING1 = $(subst t,e, maktfilt.txt)
STRING2 = $(wildcard *.txt src/*.txt)
STRING3 = $(patsubst %.c, %.o, maktfilt.c bar.c x.c.c)

SRC_SUBDIR = ./src
SRC_NONE = *.c $(SRC_SUBDIR)/*.c
SRC = $(wildcard *.c $(SRC_SUBDIR)/*.c)

OBJS_NONE = $(patsubst %.c, %.o, $(SRC_NONE))
OBJS = $(patsubst %.c, %.o, $(SRC))

all:
	#echo "STRING1:" $(STRING1) "\n"
	#echo "STRING2:" $(STRING2) "\n"
	#echo "STRING3:" $(STRING3) "\n"
	echo "SRC_SUBDIR:" $(SRC_SUBDIR) "\n"
	echo "SRC_NONE:" "$(SRC_NONE)" "\n"
	echo "SRC_NONE:" $(SRC_NONE) "\n"
	echo "SRC:" $(SRC) "\n"
	echo "OBJS_NONE:" $(OBJS_NONE) "\n"
	echo "OBJS:" $(OBJS) "\n"
