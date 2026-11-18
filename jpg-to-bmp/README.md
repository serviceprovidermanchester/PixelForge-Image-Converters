# JPG to BMP — PixelForge

A standalone, responsive, **free image converter** designed for GitHub Pages. No Python/server/build/npm dependencies are needed. All processing happens in the browser, with no image uploads.

## Quick start / GitHub Pages

1. Unzip this folder into the root of a new GitHub repository (with `index.html` in the root).
2. In the repository, go to **Settings → Pages → Build and deployment**.
3. Select **Deploy from a branch**, your primary branch, and **/(root)**. Save.
4. Once GitHub publishes your site, open its GitHub Pages URL.

Or simply open `index.html` locally in a recent browser.

## Features

- Drag and drop / multi-file selection
- Image preview, batch processing, per-file saving and ZIP downloading
- Resize options, including custom width (aspect ratio preserved)
- Quality adjustment where applicable
- Works on mobile and desktop; local-only processing

## Specific limitations

BMP exports use 24-bit RGB and flatten transparency onto white.

Input: **JPG**. Output: **BMP**.

SVG output embeds a PNG bitmap and does **not** turn raster artwork into vectors. GIF conversions use only the first frame. When a browser cannot decode an input format, the tool reports an error. No misleading fallback format is generated. 36-megapixel output/image processing limit; 25 MB per input file. For Base64 input, paste a full `data:image/...;base64,...` URL or supply a `.txt`/`.b64` file containing one.

## Tech & license

HTML5, CSS3, vanilla JavaScript. No external library, CDN, build system, backend or API key required.
MIT license. See LICENSE.
