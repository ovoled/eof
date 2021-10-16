#include <io.h>
#include <stdio.h>

int main(void) {
	return eof(STDIN_FILENO) ? 0 : 1;
}
