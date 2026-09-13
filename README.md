# Vinod Kumar Rodda — Portfolio (CV)

Personal portfolio website of **Vinod Kumar Rodda**, Quality Analyst
(call quality auditing, RCA, process improvement).

Live site: `https://roddavinod99.github.io/CV/` (via GitHub Pages)

## Pages

| File | Description |
| ---- | ----------- |
| `index.html` | Single-page portfolio: hero, stats, experience timeline, achievements, audit method, skills, education, websites, languages, hobbies, contact |
| `resume.html` | Printable résumé document with a Print / Save-as-PDF button |
| `Contact Me.html` | Contact details + direct contact actions |
| `My Hobbies.html` | Hobbies & interests gallery |
| `Vinod_Kumar_Rodda_Quality_Analyst_Resume.pdf` | Downloadable résumé (wired to all Download Résumé buttons) |
| `style.css` | Whole-site theme (pure CSS, no framework) |

## Design

- Palette (ColorHunt): `#27374D` navy · `#526D82` slate · `#9DB2BF` muted · `#DDE6ED` mist
- Type: Sora (headings) + Inter (body) via Google Fonts
- Components inspired by Mamba UI blocks; icons by Lucide (CDN)
- Illustration: Open Doodles “Reading Side” by Pablo Stanley (CC0) in `Image/`
- Responsive breakpoints at 900px / 560px, `prefers-reduced-motion` respected,
  print stylesheet included, sticky header with scroll-margin anchors

## Run locally

Any static server from the repo root, e.g. VS Code Live Server
(`http://127.0.0.1:5500/index.html`), or:

```powershell
python -m http.server 5500
```

## Deploy

Pushed to `main` on `github.com/roddavinod99/CV.git`.
GitHub **Settings → Pages → Deploy from a branch → `main` / root**.
`.nojekyll` is included so Pages serves files as-is.

## Notes

- Contact actions use direct `mailto:`/`tel:` links plus copy-to-clipboard;
  no backend or form service required.
- Share menus build share-intent URLs at runtime from `location.href`,
  with native Web Share and copy-link fallbacks.
- Local-only files (`.agents/`, `opencode.json`, `*.zip`) are git-ignored.
