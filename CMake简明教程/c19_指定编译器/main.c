#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

#include "config.h"

int main(int argc, char *argv[])
{
	printf("build time:%d-%d-%d, author:%s\n", BUILD_TIME_YEAR, BUILD_TIME_MONTH, BUILD_TIME_DAY, BUILD_AUTHOR);
    printf("debug level:%d\n", DEBUG_LEVEL);
#if MEM_CHECKER
    printf("use memory checker\n");
#endif

	return 0;
}
