#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <regex.h>

int main(int argc, char *argv[]) {
    if (argc != 4) {
        fprintf(stderr, "Usage: %s 'regex' 'text' 'replacement'\n", argv[0]);
        return 1;
    }

    char *pattern = argv[1];
    char *text = argv[2];
    char *replacement = argv[3];

    regex_t regex;
    regmatch_t matches[1];

    if (regcomp(&regex, pattern, REG_EXTENDED) != 0) {
        fprintf(stderr, "Could not compile regex\n");
        return 1;
    }

    size_t new_text_size = strlen(text) + 1;
    char *new_text = malloc(new_text_size);
    if (!new_text) {
        fprintf(stderr, "Memory allocation error\n");
        regfree(&regex);
        return 1;
    }
    new_text[0] = '\0';

    char *current_pos = text;
    while (regexec(&regex, current_pos, 1, matches, 0) == 0) {

        strncat(new_text, current_pos, matches[0].rm_so);
        strcat(new_text, replacement);
        current_pos += matches[0].rm_eo;

        new_text_size += strlen(replacement);
        char *temp = realloc(new_text, new_text_size);
        if (!temp) {
            fprintf(stderr, "Memory reallocation error\n");
            free(new_text);
            regfree(&regex);
            return 1;
        }
        new_text = temp;
    }

    strcat(new_text, current_pos);

    printf("%s\n", new_text);

    free(new_text);
    regfree(&regex);

    return 0;
}

