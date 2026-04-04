from __future__ import annotations

AUTHOR = "Alex Antonison"
SITENAME = "Alex Antonison's Blog"
SITEURL = ""
SITESUBTITLE = "Data engineering, architecture, and practical delivery"
TIMEZONE = "UTC"
DEFAULT_LANG = "en"

PATH = "content"
ARTICLE_PATHS = ["posts"]
PAGE_PATHS = ["pages"]
ARTICLE_URL = "posts/{slug}/"
ARTICLE_SAVE_AS = "posts/{slug}/index.html"
PAGE_URL = "{slug}/"
PAGE_SAVE_AS = "{slug}/index.html"

DEFAULT_PAGINATION = 10

STATIC_PATHS = [
    "images",
    "extra/CNAME",
    "extra/styles.css",
]

EXTRA_PATH_METADATA = {
    "extra/CNAME": {"path": "CNAME"},
    "extra/styles.css": {"path": "styles.css"},
}

MENUITEMS = [
    ("Blog", "/"),
    ("Talks", "/talks/"),
    ("Projects", "/projects/"),
    ("Resume", "/resume/"),
]

DISPLAY_PAGES_ON_MENU = False
DISPLAY_CATEGORIES_ON_MENU = False

LINKS = ()
SOCIAL = (
    ("GitHub", "https://github.com/alex-antonison"),
    ("LinkedIn", "https://www.linkedin.com/in/alexantonison/"),
)

THEME = "notmyidea"
THEME_TEMPLATES_OVERRIDES = ["theme/templates"]
CSS_FILE = "main.css"

MARKDOWN = {
    "extension_configs": {
        "markdown.extensions.codehilite": {"css_class": "highlight"},
        "markdown.extensions.extra": {},
        "markdown.extensions.meta": {},
        "markdown.extensions.toc": {"permalink": "#"},
    },
    "output_format": "html5",
}

# Giscus comment integration for articles.
GISCUS_ENABLED = True
GISCUS_REPO = "alex-antonison/blog"
GISCUS_REPO_ID = "REPLACE_WITH_REPO_ID"
GISCUS_CATEGORY = "Announcements"
GISCUS_CATEGORY_ID = "REPLACE_WITH_CATEGORY_ID"
GISCUS_MAPPING = "pathname"
GISCUS_STRICT = "0"
GISCUS_REACTIONS_ENABLED = "1"
GISCUS_EMIT_METADATA = "0"
GISCUS_INPUT_POSITION = "top"
GISCUS_THEME = "preferred_color_scheme"
GISCUS_LANG = "en"
GISCUS_LOADING = "lazy"

DEFAULT_DATE = "fs"

ARTICLE_ORDER_BY = "reversed-date"
