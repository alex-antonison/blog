dev:
	uv run pelican --listen --autoreload

build:
	uv run pelican content -s publishconf.py -o output

clean:
	rm -rf output