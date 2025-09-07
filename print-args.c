#include <stdio.h>
#include <string.h>

void print_usage(char **argv) {
	printf(
		"Usage: %s [OPTIONS] [INPUT]\n\n"
		"Options:\n"
		"    -h, --help    Show this help message and exit"
		"\n", argv[0]);
}

void print_args(int argc, char **argv) {
	for(int i = 0; i < argc; i++) {
		printf("arg%d: %s\n", i, argv[i]);
	}
}

int main(int argc, char **argv) {
	if (argc > 1 && strcmp(argv[1], "--help") == 0 || strcmp(argv[1], "-h") == 0) {
		print_usage(argv);
		return 0;
	}

    print_args(argc, argv);
	return 0;
}

