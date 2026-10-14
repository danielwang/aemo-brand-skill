# Sources

This file records every authoritative source consulted to build this package, the access method,
the access date, relevant linked assets found on each page, and any access problems, ambiguities,
or contradictions discovered. All six pages listed in the task brief were successfully accessed and
inspected, including client-rendered content (this site is a Docusaurus React app; a real browser
render was used in addition to the raw HTTP response to confirm no content was missed).

**Access date for all pages below: 2026-10-15.** Each page's own "Last updated" footer reads
**9 Oct 2026**, so the content was current as of research.

---

## 1. Logo

- **URL:** https://gel.aemo.com.au/docs/branding/logo
- **Page title:** "AEMO Logos | Global Experience Language"
- **Access method:** Fetched rendered content + verified via full browser DOM snapshot (page is
  client-rendered; raw HTML alone shows an empty shell before hydration).
- **Key content:** Primary logo (horizontal + stacked formats), Secondary logo (simplified, no
  sub-line, for small sizes / screenprinting / embroidery), Colour variations (colour on white,
  black on white, reverse/white on solid colour only — not on patterns/photos), a Download section,
  and a usage warning against editing/distorting/recolouring/reconfiguring the logo.
- **Relevant asset URLs found:**
  - Public download (explicitly labelled **"Public Use"**): `https://gel.aemo.com.au/AEMO%20LOGOs.zip`
    — downloaded and verified (see [asset-manifest.md](./asset-manifest.md)). Contains exactly the
    8 PNG files bundled in `assets/logos/`.
  - Restricted download (explicitly labelled **"AEMO Employee Use"**, requires AEMO SharePoint
    access): `https://aemocloud.sharepoint.com/:f:/r/Brand%20%20Templates/AEMO%20Logos/Designer%20use?csf=1&web=1&e=IiV2Kp`
    — **not accessed** (outside AEMO SSO; access was not attempted since it is explicitly
    restricted to AEMO employees, not "public use").
  - Two illustrative diagram images (`logo-guidelines-*.png`, `primary-*.png`, `variants-*.png`)
    are embedded for visual reference only; they are documentation illustrations, not downloadable
    brand assets, and were not extracted.
- **Ambiguities / gaps:**
  - The page text states a **black logo variant** exists ("The black logo is available when black
    and white or grayscale designs are needed"), but the Public Use ZIP contains only **Purple**
    and **White** variants — no black/grayscale file. The black variant may only exist in the
    restricted "AEMO Employee Use" SharePoint folder. **Not resolved — flagged as a gap.**
  - **No clear-space requirement is stated** on this page (no minimum padding/exclusion-zone rule).
  - **No minimum-size requirement is stated** on this page (no minimum logo width/height in px or mm).
  - A local file `AEMO_BrandGuidelines.pdf` (dated January 2022) was present in the working
    directory alongside the attached assets and does contain "Clear space" and "Minimum size"
    sections. This PDF is **not one of the six authoritative GEL URLs specified for this task**,
    and the live GEL site has since evolved (e.g. it now has "simple" logo variants and a
    purple/colour-token system not present in that PDF). Per the task's instruction not to infer
    rules from unlisted sources, **its
    clear-space/minimum-size figures were deliberately NOT reproduced in this package.** If exact
    clear-space/minimum-size values are required, verify current figures directly against the live
    GEL site or AEMO's Communications and Corporate Affairs team.

## 2. Visual Identity

- **URL:** https://gel.aemo.com.au/docs/branding/visual
- **Page title:** "Visual Identity | Global Experience Language"
- **Access method:** Fetched rendered content + verified via full browser DOM snapshot.
- **Key content:** Describes the AEMO design language (colour, shape, shadow to draw the eye;
  accessibility/readability as key); states interfaces primarily consist of white space, text, and
  iconography; subtle colour blocks/shadows lift content; colour adds emphasis/dynamism. Three
  named values: **Depth** (contrast, shading, interaction → confidence through structure and
  creativity), **Colour** (brighter colours extend the brand, represent creativity/innovation),
  **Utility** (fast-loading, to-the-point, supportive, user-empowering).
- **Relevant asset URLs found:** None (text-only page, no downloadable assets).
- **Ambiguities / gaps:** None identified; content is short and fully captured.

## 3. Typeface

- **URL:** https://gel.aemo.com.au/docs/branding/typeface
- **Page title:** "Typeface | Global Experience Language"
- **Access method:** Fetched rendered content + verified via full browser DOM snapshot (an
  interactive "Figtree Typeface Explorer" widget is present and was inspected for weight/style
  options but does not alter the documented facts).
- **Key content:** Primary typeface **Figtree** (modern geometric sans-serif), four weights —
  Light (300), Regular (400), Heavy (650), Extra Bold (800); usage guidance (Regular for body,
  Extra Bold for headings, Light/Heavy for emphasis in captions/tables/diagrams); prefer
  title/sentence case, all caps reserved for charts/labels/UI navigation; avoid outlines, shadows,
  or other effects. Alternative/fallback typeface **Arial Nova**, for contexts that cannot embed
  Figtree (HTML email, Microsoft Office templates, PowerPoint).
- **Relevant asset URLs found:**
  - Figtree download link: **`https://fonts.google.com/specimen/Figtree`** (Google Fonts). Figtree
    is an open-source, freely licensed Google Font — no redistribution restriction applies to
    linking/loading it; this package does not bundle font binaries (see
    [asset-manifest.md](./asset-manifest.md)).
  - A brand-guideline SharePoint link ("Read more… brand guideline on MO") to
    `https://aemocloud.sharepoint.com/:f:/r/Brand%20%20Templates/Brand%20Guidelines?csf=1&web=1&e=4tZS2g`
    — restricted to AEMO staff, not accessed.
  - "See also" link to `/docs/guides/foundations/typography` ("Typography in Software
    Development") — **out of scope** (not one of the six required URLs); not fetched. Noted here
    only as a pointer for future research, not used as a source for any rule in this package.
- **Ambiguities / gaps:** No numeric type scale (font-size/line-height steps) is published on this
  page. Per the task instruction, **no type scale has been invented** — see `design.md` Typography
  section.

## 4. Colour Palette

- **URL:** https://gel.aemo.com.au/docs/branding/colours/colour-palette
- **Page title:** "Colour Palette | Global Experience Language"
- **Access method:** Fetched rendered content + verified via full browser DOM snapshot (the initial
  markdown fetch returned empty "Name" table cells; the browser DOM snapshot confirmed the actual
  rendered colour **names**, which are present in the DOM as accessible labels/button text even
  though the plain-markdown conversion dropped them).
- **Key content:** Three named colour groups with hex values and short usage descriptions:
  - **Hero Colours:** Purple Primary (#6B3077), Dark Purple (#3C1053), Purple Pop (#B056BC).
  - **Secondary Colours:** Rose Red (#A82140), Blue Violet (#777DA7), Blue Sky (#ADE0EE), Blue Grey
    (#F3F7F9).
  - **Extension Colours:** Teal Pop (#34B9B3), Orange Pop (#FE5F55), Yellow Pop (#FFD565), Green
    Pop (#A1D978).
- **Relevant asset URLs found:** "See also" link to the **AEMO Colour Contrast Checker**
  (`/docs/guides/accessibility/accessible-colours`) — out of scope, not fetched, noted only as a
  pointer. A "Next" link to `/docs/branding/colours/fuel-types` — also out of scope, not fetched.
- **Ambiguities / contradictions:**
  - **CONFLICT:** "Purple Primary" here is **#6B3077**, but the design-tokens page's
    `$gel-color-primary-purple-500` is **#6c3078** — visually near-identical, not byte-identical.
    The official logo PNG assets (verified by pixel sampling) use **#6B3077** exactly. Per the task
    instruction to prefer the more specific design-token documentation for *implementation* values
    while documenting the conflict, `tokens/colors.css`/`colors.json` keep **both** values under
    distinct names and flag the conflict explicitly — it is not silently resolved.
  - **GAP:** "Blue Grey" (#F3F7F9, "Secondary palette neutral") has **no exact match** in the
    design-tokens table. The closest documented tokens are Blue 100 (#f4fbfc) and Slate 50
    (#fafafa) — neither is identical. Treated as a brand-palette-only value with no confirmed
    token mapping.
  - All other hex values on this page (Dark Purple, Purple Pop, Rose Red, Blue Violet, Blue Sky,
    Teal Pop, Orange Pop, Yellow Pop, Green Pop) have an **exact** match in the design-tokens table
    (see `design.md` Colour section for the full mapping table).

## 5. Design Tokens — Colour

- **URL:** https://gel.aemo.com.au/docs/guides/design-tokens/color
- **Page title:** "Colours | Global Experience Language"
- **Access method:** The plain markdown fetch returned only one stray code line
  (`color:var(--gel-color-primary-purple-500);`), because this page is heavily client-rendered.
  A full browser DOM snapshot was required and used to extract the complete token tables.
- **Key content:** Four token tables — **Primary** (Purple 100–800, 8 steps), **Secondary** (Blue,
  Green, Orange, Red — each 100/200/300/500 — plus Denim 300/500, Teal, Yellow, Aqua, Violet
  500/900), **Tertiary** (Black, White, Slate 50–1100, 12 steps), **Fuel** (16 named fuel/technology
  colours). Each row gives an example swatch, Name, hex Value, and SCSS variable
  (e.g. `$gel-color-primary-purple-500`). A "Code" section shows the same token expressed in CSS
  custom property, Sass, Less, JavaScript, XML (Android), and Swift syntax.
- **Relevant asset URLs found:** None (no downloadable file; this is the canonical token reference
  reproduced machine-readably in `tokens/colors.json` / `tokens/colors.css`).
- **Ambiguities / contradictions:** See the Hero/Secondary conflict and the Blue Grey gap recorded
  under item 4 above. No other internal inconsistencies were found within this page itself.

## 6. Pictographs

- **URL:** https://gel.aemo.com.au/docs/branding/pictographs
- **Page title:** "Pictographs | Global Experience Language"
- **Access method:** Fetched rendered content + verified via full browser DOM snapshot (the page
  renders an inline gallery of every pictograph as embedded SVG data URIs, organised into the same
  four categories as the locally supplied `icons/` folder: *Business finance*, *Energy fuel
  technology*, *Maps, climate, landscape, transport*, *People and consumers*).
- **Key content:** Describes the pictograph library's purpose (abstract concepts/physical objects,
  paired with type for reports/documents/presentations) and includes a prominent **"Copyright
  Disclaimer"** callout: *"This pictograph library provided by AEMO is protected by copyright law
  and is intended solely for use within AEMO's projects and services. Unauthorized reproduction,
  distribution, or modification of these icons is strictly prohibited."* A "tip" callout directs
  requests for new pictographs to AEMO's Communications and Corporate Affairs team.
  - **Important:** this disclaimer describes a project/service‑internal licence, not a public
    licence — see [asset-manifest.md](./asset-manifest.md) for how this package handles the
    bundled pictograph files under that restriction.
- **Relevant asset URLs found:**
  - PNG download: **restricted SharePoint link** (explicitly labelled, not "Public Use"):
    `https://aemocloud.sharepoint.com/:f:/r/Brand%20%20Templates/Icon%20Library/Icon%20Library?csf=1&web=1&e=qysgtu`
    — not accessed (restricted to AEMO).
  - "See also" link to `/docs/guides/foundations/icons` ("Iconography") — out of scope, not fetched.
- **Ambiguities / contradictions:** None within the page itself. The key constraint is the
  copyright/use restriction noted above, which materially affects how pictographs may be used
  and distributed (see `design.md` "Pictographs and visual assets" and
  [asset-manifest.md](./asset-manifest.md)).

---

## Pages referenced but intentionally out of scope

The following pages were linked from the six required pages but were **not** part of the task
brief and were **not fetched or used as sources** for any rule in this package. They are listed here
only for traceability, in case future revisions of this skill want to extend coverage:

- `/docs/guides/foundations/typography` ("Typography in Software Development")
- `/docs/guides/accessibility/accessible-colours` ("AEMO Colour Contrast Checker")
- `/docs/branding/colours/fuel-types` ("Fuel Types")
- `/docs/guides/foundations/icons` ("Iconography")

## Non-authoritative local file (not used as a source)

- `AEMO_BrandGuidelines.pdf` — found in the working directory root alongside the attached
  `logos/` and `icons/` folders. This is an AEMO internal brand-guidelines PDF dated **January
  2022**. It was **not** one of the six URLs specified as authoritative for this task, and its
  content (e.g. logo clear-space/minimum-size rules, older colour palette, additional
  accent-colour sections) was **deliberately not used** to populate `design.md`, `SKILL.md`, or the
  token files, to avoid mixing a possibly superseded document with the current live GEL site. Its
  existence is recorded here for transparency only.
