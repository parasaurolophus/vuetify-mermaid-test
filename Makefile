BROWSER = chromium-browser

# use recursive target invocations to force serial execution, even when -j is
# in use and in the absence of working versions of .WAIT or .NOTPARALLEL
all:
	$(MAKE) clean
	$(MAKE) build

clean:
	if [ -d dist ]; then rm -rf dist; fi

build:
	npm run build

dev:
	npm run dev

browse:
	sleep 1; $(BROWSER) http://localhost:3000

# always use '-j' when invoking the targets on which 'test' depends so that
# their recipes run in parallel
test:
	$(MAKE) -j dev browse
