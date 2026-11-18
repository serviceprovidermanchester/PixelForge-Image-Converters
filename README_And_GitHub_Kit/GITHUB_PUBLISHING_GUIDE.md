# PixelForge: GitHub Publishing Guide — 60 Standalone Tools

This guide belongs to a collection of **60 independent, static image-converter websites**. Each tool has a standalone repo-ready ZIP and a complete, format-specific `README.md`.

## Recommended workflow

1. Choose a tool from `manifest.csv`, e.g. `png-to-webp`.
2. Download its matching ZIP from `Individual_Tool_ZIPs`.
3. Extract the ZIP. **Upload the files inside the extracted directory to the root** of a new GitHub repository, not the ZIP itself.
4. Set the repository name to the slug (example: `png-to-webp`).
5. Copy the suggested **GitHub description** and **GitHub topics** from `README.md` or `GITHUB_AND_LINKEDIN_COPY.md`.
6. From the GitHub repository's **Settings → Pages**, choose **Deploy from a branch**, `main` and `/(root)`.
7. Wait for the Pages deployment to finish and check the live URL shown by GitHub.
8. Replace `YOUR-USERNAME` placeholders in the README and social copy with your real GitHub username and published URL.
9. Test conversion of at least one real file on desktop and mobile, then share the live URL.

## Single-repository option

The master ZIP contains a root `index.html` with links to the 60 projects. This can be hosted as a static project site too. The **individual ZIP** workflow is better when each tool needs a separate repository.

## What's in each repository

| File | Purpose |
|---|---|
| `index.html` | Converter frontend and page metadata |
| `style.css` | Responsive layout |
| `app.js` | Full conversion logic |
| `favicon.svg` | Brand icon |
| `README.md` | Detailed feature list, how-to, format behavior, GitHub deployment, limitations, troubleshooting, and a LinkedIn caption |
| `GITHUB_AND_LINKEDIN_COPY.md` | Short copy-and-paste repo info and LinkedIn caption |
| `LICENSE` | MIT license |

## Important accuracy notes

- No server/API is included; images are processed locally in the browser.
- PDF output is one A4 PDF for each input image, not one merged PDF.
- GIF input keeps only the first frame.
- SVG output is an SVG wrapper around an embedded PNG; it is **not** raster-to-vector tracing.
- Base64 output generates a new **PNG** data URL, saved in `.txt`.
- ICO output has a single 256×256 image entry, not a multi-size favicon pack.
- Browser-dependent AVIF, ICO and WebP decoding/encoding may fail on unsupported devices.
- Typical image limits: 25 MB/file and 36 megapixels; see each README.

## Publishing tips

Use source-format-specific screenshots (from a real running instance), descriptive repository topics, short accurate descriptions, and a different practical use-case example for each repository. Do not paste a fake demo URL, guarantee ranking, or claim features that are not in the source.
