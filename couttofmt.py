#!/bin/python3

import argparse

parser = argparse.ArgumentParser(description='Update cout to fmt script')
parser.add_argument('--update', help="modifys the file", action='store_true')
parser.add_argument('--no-update', help="prints to console", dest='update', action='store_false')
parser.add_argument("--file", help="The file to run the script over", type=str)
parser.set_defaults(update=False)
args = parser.parse_args()

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

if not (args.file):
    parser.error('No file provided.')

with open(args.file, 'r', encoding='utf-8') as file:
    data = file.readlines()

output = []
for line in data:
    oxenlog_position = line.find("oxen::log")
    cout_position = line.find("<<")
    # print("line: ", line)
    if oxenlog_position >= 0 and cout_position >= 0:
        start_parentheses = line.find("(")
        # print("start parenthesis: ", start_parentheses)
        # print("start parenthesis: ", line[start_parentheses])

        end = find_parentheses_match(line[start_parentheses:])
        # print("searching for end: ", line[start_parentheses:])
        # print("end parenthesis: ", end)
        if end == 0:
            end = len(line[start_parentheses:])
        # print("end parenthesis: ", end)
        if line[start_parenthesis+1:start_parenthesis+9] == "logcat, ":
            start_parenthesis = start_parenthesis + 8
        # start includes the index and we do not want to include the parentheses, the end does NOT include so we just specify end
        params_in_log = line[start_parentheses+1:start_parentheses+end].split("<<")

        # print("params in log ", params_in_log)
        # print("searching for params: ", line[start_parentheses+1:start_parentheses+end])
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
        if len(newparams) > 0:
            newparams = ", " + newparams
        # print("completed line ", line[:start_parentheses+1] + '"' + newstring + '"' + newparams + line[start_parentheses+end:])
        # print("\n")
        output.append(line[:start_parentheses+1] + '"' + newstring + '"' + newparams + line[start_parentheses+end:])


    else:
        output.append(line)

if args.update:
    with open(args.file, 'w', encoding='utf-8') as file:
        file.writelines(output)
else:
    print("".join(output))




