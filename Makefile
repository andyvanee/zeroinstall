default: bin/mustache.zip

.PHONY: bin/mustache.zip
bin/mustache.zip:
	rm -f bin/mustache.zip
	cd src/mustache && zip -r ../../bin/mustache.zip *
