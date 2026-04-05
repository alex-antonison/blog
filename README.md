# blog

Personal blog source for https://www.alex-antonison.com built with Pelican.

## Local Development

1. Install `uv`:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

2. Sync dependencies (creates and manages `.venv` automatically):

```bash
uv sync
```

This project targets Python `3.14` (see `pyproject.toml` and `uv.lock`).

3. Start the development server:

```bash
make dev
```

The local server will run at `http://127.0.0.1:8000`.

## Build For Production

```bash
make build
```

The production output is generated in `output/`.

## Content Layout

- Blog posts: `content/posts/*.md`
- Static pages: `content/pages/*.md`
- Images: `content/images/`
- Extra files copied to root of site: `content/extra/`

## Deploying To GitHub Pages

Deployment is managed by `.github/workflows/publish.yml`:

- On push to `main`, GitHub Actions builds with Pelican.
- CI installs dependencies with `uv sync --frozen` to enforce `uv.lock`.
- The generated site in `output/` is published to `gh-pages` branch.
- `CNAME` is published automatically from `content/extra/CNAME`.

## Giscus Comments Setup

Comments are enabled in `theme/templates/article.html` and configured in `pelicanconf.py`.

1. Install the Giscus app on the GitHub repo.
2. Enable Discussions in the repo settings.
3. Create a Discussion category (example: `Announcements`).
4. Use https://giscus.app to generate values.
5. Update these settings in `pelicanconf.py`:

```python
GISCUS_REPO = "alex-antonison/blog"
GISCUS_REPO_ID = "REPLACE_WITH_REPO_ID"
GISCUS_CATEGORY = "Announcements"
GISCUS_CATEGORY_ID = "REPLACE_WITH_CATEGORY_ID"
```

If `GISCUS_REPO_ID` or `GISCUS_CATEGORY_ID` still has placeholder values, comments are hidden.
