#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

typedef u_int8_t byte;
typedef u_int16_t word;

typedef struct {
    byte insID;
    byte op1, op2, op3;
    word constant;
    bool const_enable;

    void *next_ins, *prev_ins;
} instruction;

void debug_print_ins(instruction *ins) {
    printf("%x %x %x %x/%x (%d)\n", ins->insID, ins->op1, ins->op2, ins->op3, ins->constant, ins->const_enable);
    if(ins->next_ins != NULL)
        debug_print_ins(ins->next_ins);
}

int parse_line(FILE *input_fptr, instruction *program, int line_number) {
    char next_char, buffer[256];
    while((next_char = fgetc(input_fptr)) == ' ' || next_char == '\t') {}

    int i = 0, res = 0;
    for(; i<256; i++) {
        next_char = fgetc(input_fptr);
        if(next_char == EOF) {
            res = -1;
            break;
        } else if(next_char == '\n' || next_char == '\r' || next_char == ';')
            break;
    }

    if(i == 256) {
        fprintf(stderr, "Line %d is too long (max 255 chars per line)", line_number);
        return 1;
    }

    char *first_token = buffer;


    return res;
}


int assemble(FILE *input_fptr, FILE *output_fptr) {
    char next_char;
    int line_number = 1, res;
    instruction program;
    instruction *program_head = &program;

    while(1) {
        res = parse_line(input_fptr, program_head, line_number);
        if (res == -1)
            return 0;
        else if(res != 0)
            return res;
        line_number++;
    }
}

int main(int argc, char *argv[]) {

    // Parsing Arguments to get input and output file names
    char *input_file = NULL, *output_file = NULL;

    if(argc <= 1) {
        printf("Missing parameters\nUsage: %s <input file> [<output file>]\n", argv[0]);
        return 1;
    } else if(argc == 2) {
        input_file = argv[1];
        output_file = malloc((strlen(input_file) + 4) * sizeof(char));
        strcpy(output_file, input_file);
        const char std_ending[5] = ".out";
        for(int i=0; i<5; i++)
            output_file[strlen(input_file) + i] = std_ending[i];
    } else {
        input_file = argv[1];
        output_file = argv[2];
    }

    FILE *input_fptr = fopen(input_file, "rb");
    FILE *output_fptr = fopen(output_file, "wb");

    int res;
    if(input_fptr == 0) {
        fprintf(stderr, "%s not found!", input_file);
        res = 1;
    } else {
        res = assemble(input_fptr, output_fptr);
    }

    fclose(input_fptr);
    fclose(output_fptr);

    if(argc == 2)
        free(output_file);

    return res;
}
