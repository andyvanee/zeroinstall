default: bin/mustache

mustache_src=$(shell find src/mustache -type f)

bin/mustache: $(mustache_src)
	echo '#!/usr/bin/env python -S -E' > $@
	python -m zipfile -c mustache_tmp.zip src/mustache/*
	cat mustache_tmp.zip >> $@
	chmod +x $@
	rm mustache_tmp.zip
