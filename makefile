all:
	emacs --batch -l ./config.el
clean:
	rm ./*html
	rm ./*~
