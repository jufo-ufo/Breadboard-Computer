#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

// Instruction IDs
#define INVALID -1;

#define NOP  0b0000
#define ADD  0b0001
#define SUB  0b0010
#define XOR  0b0011
#define TEST 0b0100
#define IN   0b0101
#define OUT  0b0110
#define MOV  0b0111
#define CALL 0b1000
#define RET  0b1001
#define PUSH 0b1010
#define POP  0b1011
#define STR  0b1100
#define LD   0b1101
#define JE   0b1110
#define JO   0b1111


#define LABEL_LENGTH 16
#define INS_NAME_LENGTH 8

static int line = 1;
const int DATA = -1;

// Linked List for storing Labels and coresponding addresses
struct Label {
    char name[LABEL_LENGTH];
    int address;

    void* next;
    void* origen;
};

struct Label* create_label() {
    struct Label* new = malloc(sizeof(struct Label));
    new->next = NULL;
    new->address = -1;
    for(int i=0; i<LABEL_LENGTH; i++)
        new->name[i] = '\x00';
    return new;
}

struct Label* insert_new_Label(struct Label* head) {
    struct Label* tmp = head;
    struct Label* new = malloc(sizeof(struct Label));

    while (tmp->next) {
        tmp = tmp->next;
    }
    tmp->next = new;
    return new;
}

void free_labels(struct Label* head) {
    struct Label* tmp = head;
    struct Label* tmp2 = head;    

    while(tmp->next) {
        tmp2 = tmp->next;
        free(tmp);
        tmp = tmp2;
    }
    free(tmp);
}

struct Label* get_address_labels(struct Label* head, char* name) {
    struct Label* tmp = head->next;
    
    while(tmp && strcmp(tmp->name, name)) {
        tmp = tmp->next;
    }

    if(tmp)
        return tmp;
    else 
        return -1;
}

// Funkion for resolving Syntax
struct Statement {
    int id;
    struct Label* label;
};

int decode_instruction(char* ins) {
    int sum = 0;
    for(int i=0; i<INS_NAME_LENGTH; i++) { // Ignoreing all special chars and making everything lowercase
        if(ins[i] > 0x60 && ins[i] < 0x7b)
            sum ^= ins[i];
        else if(ins[i] > 0x40 && ins[i] < 0x5b)
            sum ^= (ins[i] + 0x20);
    }
    
    switch(sum) { // FIXME: XOR-Sum is BAD. Replace with something better
        case 133: // "nop"
            return NOP;
        case 97: // "add"
            return ADD;
        case 100: // "sub"
            return SUB;
        case 101: // "xor"
            return XOR;
        case 22: // "test"
            return TEST;
        case 7: // "in"
            return IN;
        case 110: // "out"
            return OUT;
        case 116: // "mov"
            return MOV;
        case 99: // "ret"
            return RET;
        case 30: // "push"
            return PUSH;
        case 111: // "pop"
            return POP;
        case 117: // "str"
            return STR;
        case 8: // "ld"
            return LD;
        case 5: // "jo"
            return JO;
        case 15: // "je"
            return JE;
        default:
            return INVALID;
    }
}

bool check_whitespace(char c) {
    if(c == '\n' || c == '\r')
        line++;

    return c == ' ' || c == '\t' || c == '\n' || c == '\r' || c == ',';
}

char read_until_non_whitespace(FILE* fd) {
    char next_char;
    do {
        next_char = fgetc(fd);
    } while (check_whitespace(next_char));
    return next_char;
}

struct Statement* pull_Next_Statement(FILE* fd, struct Label* label_list) {
    struct Statement* new_statement = malloc(sizeof(struct Statement));
    new_statement->label = NULL;

    // Seek until next no whitespace-char
    start_of_read:
    char next_char = read_until_non_whitespace(fd);

    if(feof(fd)) {
        return 0;
    }

    if(next_char == ';') { // hit a comment
        do {
            next_char = fgetc(fd);
        } while (next_char != '\n');
        line++;
        goto start_of_read; // This is bad but there is no cleaner solution i want to think of
    }
    
    // search for label
    long start_of_statement = ftell(fd); 
    bool uses_label = false;
    char label[LABEL_LENGTH];

    for(int i=0; i<LABEL_LENGTH; i++)
        label[i] = 0;
    
    fseek(fd, start_of_statement-1, SEEK_SET);

    for(int i=0; i<LABEL_LENGTH; i++) {
        next_char = fgetc(fd);
        
        if(check_whitespace(next_char))
            break;
        
        else if(next_char == ':') {
            uses_label = true;
            new_statement->label = insert_new_Label(label_list);
            new_statement->label->address = NULL;
            new_statement->label->origen = new_statement;

            for(int i=0; i<LABEL_LENGTH; i++)
                new_statement->label->name[i] = label[i];

            break;
        } else {
            label[i] = next_char;
        }
    }

    if(uses_label) {
        read_until_non_whitespace(fd);
        if(!strlen(label)) {
            fprintf(stderr, "Missing Labelname at line %i\n", line);
            return 0;
        }

    } else {
        fseek(fd, start_of_statement, SEEK_SET);
    }

    fseek(fd, -1, SEEK_CUR);

    char ins_name[INS_NAME_LENGTH];
    for(int i=0; i<INS_NAME_LENGTH; i++)
        ins_name[i] = 0;


    for(int i=0; i<INS_NAME_LENGTH; i++) {
        next_char = getc(fd);

        if(check_whitespace(next_char))
            break;
        ins_name[i] = next_char;
    }

    new_statement->id = decode_instruction(ins_name);

    printf("%i\n", new_statement->id);
}



// Main Function
int main(int argc, char* argv[]) {
    FILE* fd = fopen("test.asm", "r");
    struct Label* label_list = create_label();
    struct Statement* statement1;
    
    while((statement1 = pull_Next_Statement(fd, label_list)) != 0); 
    fclose(fd);
}