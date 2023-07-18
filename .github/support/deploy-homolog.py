import sys
import re

errors = []

def parseBranches(payload):
    matches = re.search("##\s+Branches\s*([^#]*)", payload, re.IGNORECASE + re.MULTILINE)
    return matches.group(1).strip() if matches != None else ''

try:
    command = sys.argv[1]
    payload = sys.argv[2]

    if command == 'parse-branches':
        print(parseBranches(payload))
        exit()

    print('["invalid-command"]')

except IndexError as error:
    print('["error"]')
