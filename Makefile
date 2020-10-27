TARGET := ./test-prog

OBJECTS := main.o file1.o file2.o file3.o

$(TARGET): $(OBJECTS)
	g++ -o $(TARGET) $(OBJECTS)

test:
	$(TARGET)

%.o: %.pc
	cat $< | grep -v "EXEC SQL" | gcc -c -o $@ -x c -

%.o: %.pcc
	cat $< | grep -v "EXEC SQL" | g++ -c -o $@ -x c++ -