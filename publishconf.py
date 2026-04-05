from __future__ import annotations

import os
from pathlib import Path

# Load base settings from pelicanconf.py without relying on import path setup.
exec((Path(__file__).with_name("pelicanconf.py")).read_text(), globals())

SITEURL = os.getenv("SITEURL", "https://www.alex-antonison.com")
RELATIVE_URLS = False

FEED_ALL_ATOM = "feeds/all.atom.xml"
CATEGORY_FEED_ATOM = "feeds/{slug}.atom.xml"

DELETE_OUTPUT_DIRECTORY = True

DISQUS_SITENAME = ""

GOOGLE_ANALYTICS = ""
