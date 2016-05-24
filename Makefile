#define variables
CC=gcc
CFLAGS = -Wall

#DIFINE THE EXE FILE
cipher: cipher.o vigenere.o
	$(CC) $(CFLAGS) cipher.o vigenere.o -o cipher
#DIFINE CIPHER OBJECT
cipher.o: cipher.c vigenere.h  
	$(CC) $(CFLAGS) $< -c
#DIFINE VIGENERE OBJECT
vigenere.o: vigenere.c vigenere.h
	$(CC) $(CFLAGS) $< -c

.PHONY: test
	
#MAKE TEST COMMAND
test: cipher
	./cipher<test.dat


.PHONY: clean
#REMOVE THE CIPHER EXE FILLE 
clobber: clean
	rm cipher 
#REMOVE ALL THE OBJECT FILES
clean: 
	rm *.o
