import sys, os
import pystache, yaml

usage="Usage:\n   %s data.yml template.mustache" % sys.argv[0]

def file_or_stdin(f):
    if f == '-':
        return ''.join(sys.stdin.readlines())
    else:
        return open(f).read()

try:
    data_file = sys.argv[1]
    data = yaml.load(file_or_stdin(data_file))
    template_file = sys.argv[2]
    template = file_or_stdin(template_file)
except IOError:
    exit(usage)

print pystache.render(template, data)
