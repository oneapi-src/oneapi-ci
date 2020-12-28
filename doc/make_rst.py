import glob
import os
import sys

prefix = sys.argv[1]

output = {
    "windows": [],
    "linux": [],
    "linux_apt": [],
    "linux_yum_dnf": [],
    "macos": [],
}
for name in glob.glob(f'{prefix}_*'):
    [
        output[i].append(name)
        for i in output
        if name.split(f'{prefix}_')[1].startswith(i)
    ]

for i in output:
    with open(f'{i}.rst', 'w') as outfile:
        for j in output[i]:
            with open(j, 'r') as infile:
                outfile.write(infile.read())
