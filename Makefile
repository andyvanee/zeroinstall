default: bin/mustache

mustache_src=$(find src/mustache -type f)

bin/mustache: $(mustache_src)
	echo '#!/usr/bin/env python' > $@
	python -m zipfile -c mustache_tmp.zip src/mustache/*
	cat mustache_tmp.zip >> $@
	chmod +x $@
	rm mustache_tmp.zip
