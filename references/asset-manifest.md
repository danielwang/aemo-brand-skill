# Asset Manifest

This manifest records every binary asset bundled in this package: where it lives locally, its
original filename, what it is, where it came from, when it was obtained, its format, and any
usage/licensing restriction that applies. Read the **Licensing summary** at the end before reusing
any asset outside this package.

---

## Logos — `assets/logos/` (8 files, public use)

**Source page:** https://gel.aemo.com.au/docs/branding/logo
**Download URL (explicitly labelled "Public Use" on the source page):**
`https://gel.aemo.com.au/AEMO%20LOGOs.zip`
**Download date:** 2026-10-15
**Format:** PNG, RGBA (transparent background)
**Verification:** Each file's MD5 checksum was confirmed to be byte-identical between the
official "Public Use" ZIP and the files originally supplied in the session's `logos/` folder.
**Licensing / usage restriction:** The source page permits use of these specific files ("Public
Use" download) but explicitly prohibits editing, distorting, recolouring, or reconfiguring them —
*"Consistency is important – please don't edit, change, distort, recolour or reconfigure it.
Always use the logo files provided."* Use the files as-is; do not derive new logo artwork from them.

| Local path | Original filename | Variant | Dimensions | Colour (verified) |
|---|---|---|---|---|
| `assets/logos/Purple AEMO logo-centred.png` | `Purple AEMO logo-centred.png` | Primary, stacked, colour | 752×804 | #6B3077 on transparent |
| `assets/logos/Purple AEMO logo-horizontal.png` | `Purple AEMO logo-horizontal.png` | Primary, horizontal, colour | 1456×478 | #6B3077 on transparent |
| `assets/logos/Purple AEMO logo-simple-centred-no text.png` | `Purple AEMO logo-simple-centred-no text.png` | Secondary (simplified, no wordmark/sub-line), stacked, colour | 739×738 | #6B3077 on transparent |
| `assets/logos/Purple AEMO logo-simple-horizontal-no text.png` | `Purple AEMO logo-simple-horizontal-no text.png` | Secondary (simplified, no wordmark/sub-line), horizontal, colour | 1450×478 | #6B3077 on transparent |
| `assets/logos/White AEMO logo-centred.png` | `White AEMO logo-centred.png` | Primary, stacked, reverse/white | 752×804 | #FFFFFF on transparent |
| `assets/logos/White AEMO logo-horizontal.png` | `White AEMO logo-horizontal.png` | Primary, horizontal, reverse/white | 1456×478 | #FFFFFF on transparent |
| `assets/logos/White AEMO logo-simple-centred_no text.png` | `White AEMO logo-simple-centred_no text.png` | Secondary (simplified), stacked, reverse/white | 739×738 | #FFFFFF on transparent |
| `assets/logos/White AEMO logo_simple-horizontal_no text.png` | `White AEMO logo_simple-horizontal_no text.png` | Secondary (simplified), horizontal, reverse/white | 1450×478 | #FFFFFF on transparent |

**Known gap:** the source page also describes a **black** logo variant for "black and white or
grayscale designs," but no black-coloured file is present in the Public Use ZIP. Only Purple
(colour) and White (reverse) variants are available publicly; a black variant may exist only in
the restricted "AEMO Employee Use" SharePoint folder (not accessible, not verified). Do not
recreate a black logo by colour-shifting the Purple file — this would violate the "don't
recolour" rule. If a black/grayscale logo is genuinely required, obtain it through AEMO's
internal brand channel.

All 8 files were opened and pixel-verified with Pillow during package assembly; no corruption.

---

## Pictographs — `assets/pictographs/` (383 files, restricted use)

**Source page:** https://gel.aemo.com.au/docs/branding/pictographs
**Restricted PNG download (NOT used, AEMO-internal SharePoint):**
`https://aemocloud.sharepoint.com/:f:/r/Brand%20%20Templates/Icon%20Library/Icon%20Library?csf=1&web=1&e=qysgtu`
**Provenance of the bundled SVG files:** supplied directly by the requesting user from a local
`icons/` folder (not downloaded by this package-building process from the GEL site or SharePoint).
Their category structure (folder names and grouping) matches exactly the four categories
displayed in the live pictograph gallery on the source page, which independently corroborates that
they are the official AEMO pictograph library.
**Obtained/added to this package:** 2026-10-15
**Format:** SVG (vector), all validated as well-formed XML.
**Dominant colours observed in the artwork:** `#6c3078` (381 occurrences — matches the official
`$gel-color-primary-purple-500` design token exactly) and `#a4519b` (550 occurrences — a lighter
purple **not found in any published colour token or brand-palette value**; treat as an
as-shipped artwork colour, not a documented token). A handful of near-duplicate stray hex values
(`#6d2f79`, `#a4529a`, uppercase variants, `#6d2f78`) and two unrelated one-off colours
(`#3cb1c8`, `#005f83`) also appear once or a few times each; these look like minor source-file
inconsistencies rather than intentional additional brand colours and are not documented as tokens.

### ⚠️ Licensing / usage restriction — read before reusing

The source page states, verbatim, in a "Copyright Disclaimer" callout:

> "This pictograph library provided by AEMO is protected by copyright law and is intended solely
> for use within AEMO's projects and services. Unauthorized reproduction, distribution, or
> modification of these icons is strictly prohibited."

This is **not** a public/open licence. These files are bundled in this package **only** because:
(a) the requesting user already held them from a legitimate internal source and explicitly
instructed that they be loaded into this package, and (b) this skill package's own stated purpose
— helping design and review **AEMO's** interfaces — falls squarely within "AEMO's projects and
services," the exact scope the disclaimer permits.

**Consequences for anyone reusing this package:**
- Do **not** redistribute `assets/pictographs/` outside AEMO or AEMO-authorised contexts.
- Do **not** publish this package (e.g. to a public repository, public npm/marketplace listing,
  public documentation site) with the pictographs folder included.
- Do **not** modify, recolour, trace, or derive new icons from these files; request new pictographs
  from AEMO's Communications and Corporate Affairs team instead (per source-page guidance).
- If you need a redistributable or public-facing copy of this skill package, **remove
  `assets/pictographs/` first** and reference the restricted SharePoint library URL above instead
  (a placeholder note to that effect is included at `assets/pictographs/NOTICE.md`).

### Inventory

383 SVG pictographs across 4 categories (counts match the live gallery's category grouping):

| Category (folder name) | File count |
|---|---|
| `Business finance` | 130 |
| `Energy fuel technology` | 127 |
| `Maps, climate, landscape, transport` | 41 |
| `People and consumers` | 85 |

A complete per-file listing (category, filename, local path) is provided in
[pictograph-inventory.csv](./pictograph-inventory.csv) rather than reproduced as a 383-row table
here. All 383 files were parsed and validated as well-formed XML/SVG during package assembly;
0 errors.

---

## Typeface — not bundled (lawful external loading only)

**Source page:** https://gel.aemo.com.au/docs/branding/typeface
**Primary typeface "Figtree":** publicly available, open-licensed, via Google Fonts —
`https://fonts.google.com/specimen/Figtree`. **Not bundled** in this package. No font binaries are
included; see `design.md` → Typography → "Web-loading guidance" for the recommended `<link>` /
`@import` / self-hosting-from-Google-Fonts approach.
**Fallback typeface "Arial Nova":** a Microsoft/system-licensed font pre-installed on Windows/Mac;
**not bundled** (not freely redistributable), used only as a CSS `font-family` fallback name.

---

## Licensing summary

| Asset | Bundled? | Licence basis | Redistribution outside AEMO |
|---|---|---|---|
| Logos (`assets/logos/`) | ✅ Yes | Official "Public Use" download, explicit on source page | Permitted, **as-is only** (no edits/recolouring) |
| Pictographs (`assets/pictographs/`) | ✅ Yes, restricted | "Intended solely for use within AEMO's projects and services" (copyright disclaimer) | **Not permitted** — AEMO-internal use only |
| Figtree font | ❌ No (link only) | Open licence via Google Fonts | N/A — link to Google Fonts instead of bundling |
| Arial Nova font | ❌ No (name only) | System/OS-licensed, not freely redistributable | N/A — reference as a CSS fallback name only |
