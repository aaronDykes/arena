#include "arena_table.h"

int main(int argc, char **argv)
{
    initialize_global_memory(PAGE);

    destroy_global_memory();
    return EXIT_SUCCESS;
}