
@echo "Making dot s files..."
gcc -x c -c -O4 -Wall -g -lineinfo -masm=intel -S main.c