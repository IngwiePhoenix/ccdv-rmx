CC = gcc
.DEFAULT_GOAL = ccdv

%-ccdv: ccdv.c
	$(CC) ccdv.c -o ccdv

install:
	cp ccdv /usr/local/bin

clean:
	rm ccdv
