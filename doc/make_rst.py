import glob
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
    with open(f'source/{i}.rst', 'w') as outfile:
        outfile.write(f'{i}\n')
        outfile.write('=' * len(i) + '\n')
        for j in output[i]:
            outfile.write('::\n')
            with open(j, 'r') as infile:
                for line in infile.readlines():
                    outfile.write(f'    {line}')
                outfile.write('\n')
            outfile.write('\n')
