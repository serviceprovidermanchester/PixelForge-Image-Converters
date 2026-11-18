# Security Policy

At **SPManchester Private Limited**, security and client-side data privacy are the foundation of everything we build. Because PixelForge executes 100% within the browser runtime with zero server ingestion, the architecture is inherently immune to server-side image injection, remote code execution (RCE) on cloud transcoders, and server-side data leakage.

However, client-side memory safety, prototype pollution prevention, Cross-Site Scripting (XSS) defenses, and Content Security Policy (CSP) enforcement remain crucial.

---

## Supported Versions

We actively maintain and provide security patches for the following versions:

| Version | Supported | Release Notes |
| :--- | :--- | :--- |
| **1.0.x** | :white_check_mark: Active | Official SPManchester Monorepo & Suite |
| < 1.0.0 | :x: Deprecated | Legacy unbranded individual bundles |

---

## Reporting a Vulnerability

If you discover a security vulnerability or security bug in PixelForge:

1. **Do NOT publicly disclose the issue** on GitHub Issues, public discussions, or social media.
2. Email full technical details, proof-of-concept (PoC), and impact assessment to:
   - **Security Contact:** [info@spmanchester.com](mailto:info@spmanchester.com)
   - **Company:** SPManchester Private Limited ([www.spmanchester.com](https://www.spmanchester.com))
   - **Lead Contact:** Sayed Mudassar Akbar

### What to Include
- Detailed description of the vulnerability.
- Steps to reproduce or a link to a minimal PoC.
- Potential impact on client browser environments (e.g. DOM XSS via malformed SVG payloads).
- Proposed remediation (if available).

### Our Security Response SLA
- **Initial Acknowledgment:** Within **24–48 hours**.
- **Assessment & Triage:** Within **3 business days**.
- **Fix & Public Advisory:** Released as soon as the patch is verified and backported.
- **Credit:** We will gladly credit you in our Release Notes and Security Acknowledgments (unless you prefer anonymity).

---

## Security Best Practices for Self-Hosters

If you host PixelForge on your own servers or internal enterprise networks:
- Always enforce **HTTPS / TLS 1.3**.
- Set appropriate **Content Security Policy (CSP)** headers (refer to our production [`nginx.conf`](./nginx.conf)).
- Disallow framing from untrusted origins with `X-Frame-Options: SAMEORIGIN` or CSP `frame-ancestors`.

Thank you for helping keep SPManchester open-source projects safe and secure for the community!
