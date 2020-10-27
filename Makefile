TARGET := ./test-prog

OBJECTS := main.o file1.o file2.o file3.o

$(TARGET): $(OBJECTS)
	g++ -o $(TARGET) $(OBJECTS)

test:
	$(TARGET)

%.o: %.pc
	cat $< | gcc -c -o $@ -x c -

%.o: %.pcc
	cat $< | g++ -c -o $@ -x c++ -