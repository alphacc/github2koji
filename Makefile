CC=gcc
CFLAGS=-c -Wall
LDFLAGS=
EXECUTABLE=github2koji

all:
	$(CC) $(LDFLAGS) -o $(EXECUTABLE) src/github2koji.c	

sources:
	test ! -f $(EXECUTABLE)-1.0.tar.gz || /bin/rm $(EXECUTABLE)-1.0.tar.gz
	rm -rf $(EXECUTABLE)-1.0
	test -d $(EXECUTABLE)-1.0 || mkdir -p $(EXECUTABLE)-1.0
	cp -ra src Makefile *spec $(EXECUTABLE)-1.0/
	tar cvzf $(EXECUTABLE)-1.0.tar.gz $(EXECUTABLE)-1.0/
	rm -rf $(EXECUTABLE)-1.0
	
install:
	cp $(EXECUTABLE) /usr/local/bin/
		
	
