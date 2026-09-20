# jacksonstonee.github.io

Personal site of **Jackson Stone** — Incident Response & Offensive Security.

Built on [Jekyll](https://jekyllrb.com/) with the
[Minimal Mistakes](https://mmistakes.github.io/minimal-mistakes/) remote theme,
hosted on GitHub Pages at <https://jacksonstonee.github.io/>.

---

## Local development

```bash
bundle install
bundle exec jekyll serve
```

Then browse to <http://127.0.0.1:4000/>. Rebuilds happen on save; refresh the
browser to see changes.

### One-time Ruby 3.2+ workaround (local only)

The `github-pages` gem pins an old `liquid` (4.0.3) that calls
`String#tainted?`, which Ruby 3.2 removed. GitHub Pages' build environment
patches this; local Ruby 3.2 / 3.3 / 3.4 needs a shim. This repo ships
[`_plugins/liquid_tainted_shim.rb`](./_plugins/liquid_tainted_shim.rb) for that.

`github-pages` also forces Jekyll into safe mode, which **skips** `_plugins/`,
so the shim must be preloaded via `RUBYOPT` before invoking Jekyll. Run:

```powershell
# PowerShell
$env:RUBYOPT = "-r./_plugins/liquid_tainted_shim.rb"
bundle exec jekyll serve
```

```bash
# bash / zsh
RUBYOPT="-r./_plugins/liquid_tainted_shim.rb" bundle exec jekyll serve
```

None of this is needed for production — GitHub Pages ignores `_plugins/`
entirely, and its build environment doesn't hit the `tainted?` bug. The shim
is a pure local-dev crutch and is safe to delete if you ever pin newer gems
that drop the taint API dependency.

## Adding a new post

1. Create `_posts/YYYY-MM-DD-your-slug.md`.
2. Copy the front matter from
   [`_posts/2026-09-20-example-first-post.md`](./_posts/2026-09-20-example-first-post.md)
   and edit `title`, `date`, `categories`, and `tags`.
3. Write the body in Markdown.
4. Commit and push to `main` — GitHub Pages rebuilds and deploys automatically
   in ~30–60 seconds.

## Adding a new page

1. Create `_pages/your-page.md`.
2. Set `permalink: /your-page/` in the front matter.
3. Link it from `_data/navigation.yml` if it should appear in the masthead.

## Hover-enlarge animation on the sidebar avatar

The scale-on-hover effect ported from the old Chirpy theme lives in exactly
**one file**: [`_sass/custom.scss`](./_sass/custom.scss).

```scss
.author__avatar {
  img {
    transition: transform 0.5s ease-in-out;  // <- timing / curve
    transform-origin: center center;

    &:hover {
      transform: scale(1.15);                // <- enlarge factor
    }
  }
}
```

- **Scale factor** — `scale(1.15)` is a 15% enlarge. Chirpy's default is closer
  to `scale(1.05)` (5%, subtler). Common Minimal Mistakes choices are `1.10`,
  `1.15`, or `1.20`. Change one number.
- **Transition timing** — `0.5s` is a smooth half-second. Try `0.3s` for
  snappier, `0.7s` for lazier.
- **Curve** — `ease-in-out` feels balanced. For a Chirpy-exact
  material-design feel, swap in `cubic-bezier(0.4, 0, 0.2, 1)`. Avoid `linear`
  (robotic) and `ease` (too snappy).

We animate `transform: scale()` rather than width/height so the sidebar
layout never reflows while the image grows.

## Swapping the color skin

Set `minimal_mistakes_skin:` in [`_config.yml`](./_config.yml) to any of:

| Skin       | Feel                         |
| ---------- | ---------------------------- |
| `default`  | Clean light (current)        |
| `air`      | Airy, blue-tinted light      |
| `aqua`     | Bright teal accents          |
| `contrast` | High-contrast light          |
| `dark`     | Full dark mode               |
| `dirt`     | Warm cream + brown           |
| `mint`     | Cool green light             |
| `neon`     | Dark w/ neon pink/blue       |
| `plum`     | Purple/plum-toned dark       |
| `sunrise`  | Warm orange/red dark         |

The Sass entry point at
[`assets/css/main.scss`](./assets/css/main.scss) reads `site.minimal_mistakes_skin`
directly, so changing that one config value is enough — no other files to edit.

## Hosting

- Deployed at <https://jacksonstonee.github.io/> — the **default GitHub Pages
  URL** for the user-level site.
- **No `CNAME` file**; no custom domain. If you ever add one, drop a `CNAME`
  file in the repo root containing just the domain (e.g. `jacksonstone.dev`).
- `_config.yml` uses `url: "https://jacksonstonee.github.io"` and `baseurl: ""`
  (user-level Pages sites are served at the domain root, so `baseurl` is empty).

## Logo / avatar

The original Chirpy logo is preserved in **two** locations:

- [`assets/img/sample/gp.png`](./assets/img/sample/gp.png) — original path,
  kept for any old posts that may reference it.
- [`assets/images/bio-photo.png`](./assets/images/bio-photo.png) — Minimal
  Mistakes convention for the author sidebar avatar. Byte-identical copy of
  `gp.png`.

To swap the avatar image, replace `assets/images/bio-photo.png` with a new PNG
(square, 512×512 or larger recommended).

## Structure

```text
.
├── _config.yml              # site config
├── _data/
│   └── navigation.yml       # masthead nav
├── _pages/
│   └── exploits.md          # /exploits/
├── _posts/
│   └── YYYY-MM-DD-*.md      # blog posts
├── _sass/
│   └── custom.scss          # avatar hover override (only custom SCSS)
├── assets/
│   ├── css/
│   │   └── main.scss        # MM Sass entry: skin + theme + custom
│   ├── img/                 # legacy images from Chirpy (favicons + sample logo)
│   └── images/
│       └── bio-photo.png    # MM author avatar
├── index.md                 # homepage (Boku-style category sections)
├── Gemfile
└── .gitignore
```
