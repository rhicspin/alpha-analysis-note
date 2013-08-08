#!/usr/bin/env python

import os
import sys
import shutil
import tempfile

def ps_strip(filename):
	fp = open(filename, 'r')
	contents = fp.readlines()
	fp.close()
	skipmode = False
	(_, backup_filename) = tempfile.mkstemp()
	shutil.copy(filename, backup_filename)
	try:
		fp = open(filename, 'w')
		for line in contents:
			if line.startswith("%%BeginResource: "):
				print "stripped %s;" % line[len("%%BeginResource: "):].rstrip("\n")
				skipmode = True
			if not skipmode:
				fp.write(line)
			if line.startswith("%%EndResource"):
				skipmode = False
		fp.close()
	except Exception, e:
		os.rename(backup_filename, filename)
		raise e
	os.unlink(backup_filename)

if __name__ == '__main__':
	for filename in sys.argv[1:]:
		print "stripping %s" % filename
		ps_strip(filename)
