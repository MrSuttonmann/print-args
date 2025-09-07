#include <stdio.h>
#include <string.h>

void printHelp() {
	printf("A utility to print a list of arguments passed to the program.\n");
}

void printArgs(int argc, char **argv) {
	for(int i = 0; i < argc; i++) {
		printf("arg%d: %s\n", i, argv[i]);
	}
}

int main(int argc, char **argv) {
	for(int i = 0; i < argc; i++) {
	    if (strcmp(argv[i], "--help") == 0 || strcmp(argv[i], "-h") == 0) {
              printHelp();
              return 0;
            }
	}

        printArgs(argc, argv);
	return 0;
}

