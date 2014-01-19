check: compile

compile:
	emacs -q -batch -f batch-byte-compile image-dired+.el
