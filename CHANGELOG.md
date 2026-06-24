# Change Log
**All notable changes to this project will be documented in this file.**

<h2>R1.0.3_22.06.26a / June 22, 2026 (Preview)</h2>

- Hotfix update (again)!
- "STATIC" Scale Mode has been fixed; previously, scaling was only relative to the X-axis; now it is relative to both the X and Y axes.

<h2>R1.0.3_22.06.26 / June 22, 2026 (Preview)</h2>

- Hotfix update!
- Variable _LayerOffset for Quad and Polygon were not being used; they are now
- Variable _FixValue in Quad was not being used; it is now
- Variable _FixValue has been removed from Polygon since it isn’t needed
- The rules for the _API variable in Info Object have been changed; for Direct3D8, Direct3D9, and Direct3D11, it now returns Direct3D 8, Direct3D 9, and Direct3D 11 *(i know, big change lol)*
- For iOS and Android, _API now returns OpenGL ES
- For macOS, _API now returns OpenGL

<h2>R1.0.3_04.04.26 / April 4, 2026 (Preview)</h2>

- There are now two types of polygons! - The old polygons (which were included in versions R1.0.1 and R1.0.2) are now labeled "Quad"; the new polygons feature perspective corrections and do not disappear when they are too close.
- Calls to behavior calculations for engine objects are now explicit - the engine code contains a loop that calls each function individually.
- Partial support for Depth Buffer has been added (for Direct3D 9 only; Beta test).
- Fixed the "TO_CAMERA_XYZ" Layer Mode - the Z position is now calculated correctly.
- Entire Visible Mode has been fixed.
- Background Gradient objects have been updated to support camera positioning along the Z-axis for negative coordinates.
- Clickteam Fusion 2.5+ (Build 296.9) or later is required

<h2>R1.0.2_29.11.25</h2>
Release date: <strong>November 29, 2025</strong>

- From this version onwards, there is a lack of compatibility with some modes because their names have been changed.
- Improvements in optimization by adding a new Tails7 Cache object
- Added "Rotation mode" which allows you to decide how the object should be rotated
- New Modes for Mapping Screen Mode etc.
- Added compatibility for Android, iOS, and Mac
- Partially fixed the gradient system for camera rotation points.

---

<h2>R1.0.2_18.05.25</h2>
Release date: <strong>May 18, 2025 (This release was supposed to come out in May, but I forgot to publish it ;w;)</strong>

- New Mapping Mode that supports camera rotation around the Y axis
- Fixed a bug with ground texture scaling/offset
- Rebuilt background gradient system to work with camera rotation in Y axis
- Unused variables left in R1.0.1 for mapping calculations were used

---
