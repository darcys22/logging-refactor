#!/bin/python3

import sys

def find_parentheses_match(input_string):
    s = []
    balanced = True
    index = 0
    while index < len(input_string) and balanced:
        token = input_string[index]
        if token == "(":
            s.append(token)
        elif token == ")":
            if len(s) == 0:
                balanced = False
            else:
                s.pop()
                if len(s) == 0:
                    return index

        index += 1

    return 0

with open(sys.argv[1], 'r', encoding='utf-8') as file:
    data = file.readlines()

output = []
for line in data:
    result = line.find("OXEN_LOG(")
    if result >= 0:
        end = find_parentheses_match(line[result+8:])
        if end == 0:
            end = len(line[result+8:])
        levelcomma = line[result+8:].find(",")
        params_in_log = line[result+10+levelcomma:result+10+levelcomma+end-1].split("<<")
        new_string = []
        new_params = []
        for param in params_in_log:
            if len(param.strip()) != 0:
                if param.strip()[0] == '"':
                    new_string.append(param.strip()[1:-1])
                else:
                    new_string.append("{}")
                    new_params.append(param.strip())

        newstring = "".join(new_string)
        newparams = ", ".join(new_params)
        output.append(line[:result+9+levelcomma] + ' "' + newstring + '", ' + newparams + line[result+9+end-1:])


    else:
        output.append(line)

# print("".join(output))
with open(sys.argv[1], 'w', encoding='utf-8') as file:
    file.writelines(data)



