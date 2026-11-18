# Contributing to PixelForge

First off, thank you for considering contributing to **PixelForge**! It's people like you that make open-source software great.

PixelForge is maintained and sponsored by **[SPManchester Private Limited](https://www.spmanchester.com)** under the technical leadership of **Sayed Mudassar Akbar**. We welcome bug reports, feature proposals, format enhancements, documentation improvements, and pull requests from engineers worldwide.

---

## Code of Conduct

By participating in this project, you agree to abide by our **[Code of Conduct](./CODE_OF_CONDUCT.md)**. Please report unacceptable behavior to **[info@spmanchester.com](mailto:info@spmanchester.com)**.

---

## How Can I Contribute?

### 1. Reporting Bugs
Before creating bug reports, please check the existing GitHub Issues list to make sure it hasn't already been addressed. When filing a bug:
- Use our official **Bug Report Form**.
- Include your operating system, browser name, and browser version (e.g. Chrome 124, Safari 17.4, Firefox 125).
- Specify the input format, output format, file size, and approximate resolution of the image that caused the issue.
- Provide clear, reproducible steps and console errors (if any).

### 2. Suggesting Enhancements & New Formats
We love innovative ideas! Whether it's adding WebAssembly codecs, HEIC support, SVG vectorization, or UI optimizations:
- Open an issue using the **Feature Request Form**.
- Describe the business or developer value of the feature.
- Explain whether it operates client-side without violating our strict **Zero-Server-Upload** privacy model.

### 3. Submitting Pull Requests
Follow these steps to contribute code:

1. **Fork the repo** and create your branch from `main`:
   ```bash
   git checkout -b feat/your-feature-name
   ```
2. **Make your changes**:
   - Ensure clean, modern vanilla JavaScript / ES6+ standards.
   - Strictly adhere to client-side memory safety (dispose of large Canvas contexts, revoke object URLs when done).
   - Ensure mobile responsiveness and dark mode compatibility.
3. **Commit using Conventional Commits**:
   - `feat: add progressive JPEG quality downsampling`
   - `fix: resolve memory leak on batch ZIP generation`
   - `docs: update deployment guidelines for Cloudflare Pages`
   - `perf: optimize offscreen canvas pixel extraction`
4. **Push to your fork**:
   ```bash
   git push origin feat/your-feature-name
   ```
5. **Open a Pull Request** against the `main` branch, following our Pull Request template.

---

## Coding Standards & Architectural Principles

- **Zero Remote Dependencies:** Conversion scripts must run self-contained in the browser. Do not introduce CDN tracking scripts or remote backend APIs.
- **Privacy First:** Never transmit file metadata or file buffers outside the client sandbox.
- **Performance:** For batch conversions, process sequentially or throttle workers to prevent browser thread locking.
- **Cross-Browser Verification:** Verify your changes across Chrome/Chromium, Firefox, and WebKit/Safari.

---

## Questions and Support

For questions, community discussions, or enterprise consulting:
- Visit **[www.spmanchester.com](https://www.spmanchester.com)**
- Email: **[info@spmanchester.com](mailto:info@spmanchester.com)**

Thank you for building high-privacy open source with SPManchester Private Limited!
