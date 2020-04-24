"""
Takes a file path and a home path and returns the path in a format appropriate for the bash prompt.
"""
import sys
debug_file = '~/debug'


path = sys.argv[1]
home = sys.argv[2]
dirs = path.replace(home, '~')
dirs = dirs.split('/')

if len(dirs) > 3:
    print(('/').join(d[:4]+' \u05bb' if len(d) > 4 else d for d in dirs[:-2]) + 
        '/' +
        ('/').join(dirs[-2:]))
else:
    print(('/').join(dirs))
