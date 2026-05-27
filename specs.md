# TPU Inflatable Tethered Balloon — Specification

## 1. Material: TPU Film Bladder + Ripstop Nylon Shell

**Selected architecture:** Two-layer envelope. An inner **TPU film bladder** holds helium; an outer **uncoated ripstop nylon shell** carries shape, mounts hardware, and provides UV/abrasion protection. The two layers are mechanically independent — the bladder is retained inside the shell purely by its own inflation, with no bonded interface between them.

**Rationale:** Suitable for a 2–3 m outdoor tethered lenticular disc operating in moderate-to-strong wind while carrying glow hardware.

### 1.1 Inner bladder — TPU film

Pure thermoplastic polyurethane film, no fabric backing. The bladder is the only airtight component.

**Properties:**

- Extremely lightweight
- Heat-weldable airtight with a household iron — no sewing or glue required for seams
- Flexible to -40°C
- > 500% elongation; rated for over 1 million flex cycles
- Field-repairable with TPU film patches and iron welding
- Semi-translucent, suitable for internal glow

**Suggested thickness:** 4–6 mil (~0.10–0.15 mm) for a 2–3 m envelope at low gauge pressure. Thicker reduces helium permeation and puncture risk; thinner saves weight.

**Seam welding procedure** (film-to-film):

1. Overlap edges ~15–25 mm.
2. Cover with parchment paper or Teflon sheet.
3. Press with a flat iron at ~200°C (400°F) for 10–20 seconds per section.
4. Roll firmly with a silicone roller while the seam cools.
5. Verify strength — a good weld should tear the film before the seam fails.

### 1.2 Outer shell — uncoated ripstop nylon

Standard outdoor-grade ripstop nylon, no coating required. The shell is **not airtight** — it is a structural and visual garment over the bladder.

**Properties:**

- Excellent UV, abrasion, and puncture resistance
- Tear-resistant ripstop weave (small tears don't propagate)
- Flexible across full temperature range
- Sewn construction; seams need no sealing because the shell carries no pressure
- Carries all mechanical loads: ring shock-mounts, tether reinforcements, LED/glow hardware mounts
- Easily replaced or restyled independently of the bladder

**Fabric weights:**

- **40D–70D ripstop** — top and bottom faces
- **190–420D** — sidewall band and reinforcement patches

**Construction:** sewn panels with a standard 5–10 mm seam allowance. No seam tape, no welding.

### 1.3 Why dual-layer

Single-wall TPU-coated ripstop is the conventional DIY-inflatable choice and was the original selection for this project. It was rejected after practitioner feedback flagged a recurring failure mode: the TPU coating **delaminates** from the ripstop weave under repeated inflation/deflation and wind-flex cycling. Once delamination starts, the fabric balloons locally where the coating has lifted, which both leaks and concentrates further stress.

Separating the airtight layer from the structural layer eliminates the bond that fails:

- The bladder is solid TPU film all the way through — no coating-to-fabric interface to delaminate.
- The shell never sees pressure load and never needs to be airtight, so it has no coating at all.
- All external loads (ring shock-mounts, tethers, lights) attach to the shell and are mechanically isolated from the gas envelope.
- The bladder and shell can be replaced or upgraded independently.

Reference for the failure mode and the bladder-film approach: [American Polyfilm — TPU film for inflatables and advertising](https://www.americanpolyfilm.com/inflatables-and-advertising-tpu-film).

---

## 2. Envelope Geometry Options

Three envelope topologies were evaluated. Each produces a roughly disc/lens silhouette but distributes seams, stress, and material differently.

> The geometries below describe the **inner bladder** shape — the part that is welded airtight from TPU film. The **outer shell** is cut to a slightly oversized matching profile (typically ~2–3% larger linear dimensions, ~6–9% larger volume) so the bladder inflates to fill it without putting the shell skin under tension. The shell carries no pressure load; its panel layout follows whichever geometry the bladder uses, but its seams are sewn rather than welded.

### 2.1 Two flat circles + rectangular sidewall band 

**Construction:** Two circular faces (top and bottom) joined by a rectangular band whose length equals the circle circumference and whose width sets the disc thickness. All welds are made on flat panels; the band stands vertically only after inflation.

**Cons:**

- Two full-circumference seams — more total weld length than a single-seam lens.
- Flat circular faces still deform from flat into a shallow cap on inflation (Gaussian-curvature mismatch); absorbed elastically by TPU stretch, but not strictly conflict-free.
- Three panels to cut and align instead of two.
- Produces a "pillow on a barrel" silhouette rather than a true smooth lens.

### 2.2 Two discs with bent rims, overlapping sidewall band

**Construction:** Each half-shell is a flat circular disc with its outer rim bent upward by 90° to form a short cylindrical lip. The two half-shells are assembled face-to-face with their lips nested concentrically — one slightly inside the other — so that each lip extends across the entire sidewall, from its own disc's bend on one side to the opposite disc's bend on the other. The overlapping double layer is then heat-welded along the equator as a single circumferential seam through both layers, or optionally as a continuous weld across the whole overlap band.

The result is a near-lens silhouette with a thin equatorial collar. Making the lip narrower pushes the silhouette closer to a true lens; making it wider gives more weld surface and a more defined cylindrical band.

**Cons:**

- **Forced-fold pleating at each free edge.** Bending a flat ring of fabric up by 90° forces its outer edge to fit a smaller circle than it was cut for. The excess material has to gather as pleats — and it does so at the bend opposite to the disc the lip belongs to (the top of the lower lip and the bottom of the upper lip). The wider the lip, the more excess fabric and the more visible the pleating.
- The equator seam is loaded in **peel** under inflation pressure, which is the weak direction for heat welds. Welding the full overlap area instead of just the equator line largely fixes this, but it costs much more iron time, makes the whole sidewall band stiff, and creates a stiffness discontinuity where the band meets the disc faces (which itself becomes a fatigue stress concentrator).
- Stress concentrates at every gather point; failures under wind cycling tend to initiate at the pleated free edges.
- Difficult to jig: the two bent flanges must be held concentric and aligned while the curved overlap is ironed in place.
- The pleated free edges are visually rough — subtle when the lip is small, prominent when it is larger.

**Pros:**

- Near-lens silhouette with no visually distinct sidewall when the lip is small.
- Only two panels to cut (no separate sidewall band rectangle); fewer pieces to align than §2.1.
- One circumferential equator seam instead of §2.1's two top/bottom seams.

### 2.3 Gored construction (orange-peel panels)

**Construction:** The target curved surface (true sphere or lens) is decomposed into many non-rectangular gore panels. Each gore is cut flat and welded edge-to-edge to its neighbors; the assembly closes into the intended 3D curved shape without forced stretch.

**Cons:**

- Many more panels — typically 8–24 gores, each requiring precise non-trivial pattern cutting.
- Many more seams; total weld length scales with gore count, and each seam is an additional leak path.
- Pattern generation requires CAD or careful manual layout (gore shape depends on radius, target curvature, and gore count).
- Cutting tolerance is critical: a 1–2 mm error per gore accumulates into visible shape distortion across 12+ panels.
- Sensitive to fabric grain — gore alignment relative to the ripstop weave affects final inflated shape.
- Higher material waste (gore packing efficiency on roll fabric is worse than rectangles + circles).
- No flat cylindrical sidewall for tether attachment; tethers must attach to a curved seam, requiring custom reinforcement geometry.
- Overkill for a 2–3 m low-pressure festival inflatable; gores are typically reserved for builds where shape fidelity is critical (weather balloons, blimps, hot-air balloons).

### 2.4 Selection

The **rectangular sidewall band** design (§2.1) is selected. It accepts mild elastic face deformation in exchange for shear-loaded seams, controllable thickness, simple panel cutting, and a clean cylindrical surface for tether/glow mounting. The bent-rim overlap (§2.2) is rejected because of forced-fold pleating and peel-loaded seams. Gored construction (§2.3) is rejected because the additional pattern complexity is not justified at this scale.

---

## 3. Support Ring

A rigid hoop concentric with the envelope and lying in its equatorial plane. It carries the LED lighting, provides ground-tether anchor points, and decouples lighting and anchor loads from the envelope skin. The ring design is identical for both flight modes (§4); only the choice of which attachment points carry tethers changes between modes.

### 3.1 Purpose

- Mounts LED strip / EL wire along the perimeter for a defined lit outline visible from any angle.
- Provides hard anchor points for ground tethers, isolating peak tether loads from the TPU skin.
- Maintains the disc's circular silhouette under wind loading; the envelope alone could deform under asymmetric pressure.
- Acts as a shock-mount cradle for the envelope (analogous to a microphone shock-mount), damping wind oscillation and accommodating helium volume changes with temperature.

### 3.2 Geometry

- **Diameter:** ~10–20% larger than the envelope diameter. For a 3 m envelope, ring diameter ~3.3–3.6 m.
- **Radial gap** between ring and envelope: ~15–30 cm (clearance for shock-mount springs, LED brackets, envelope expansion).
- **Tube cross-section:** circular, ~25–32 mm OD.
- **Plane of ring:** coincident with the envelope's equatorial sidewall band.

### 3.3 Material Options

| Material | Pros | Cons |
|---|---|---|
| Aluminum tube (1" OD, 0.058" wall, 6061-T6) | Light, stiff, affordable, easily worked | Visible joint hardware if segmented |
| Carbon fiber tube | Lightest, stiffest, best strength-to-weight | Expensive; brittle on impact; careful joint design needed |
| Fiberglass rod | Light, flexible (forgives gusts), low cost | May flex too much at 3 m diameter — hoop loses shape under load |
| HDPE hula hoop / irrigation tubing | Cheapest, easy to source, transports easily | Insufficient stiffness at 3 m for tether loads |

**First-prototype selection:** aluminum tube (1" OD × 0.058" wall, 6061-T6) — best balance of stiffness, weight, and cost.

### 3.4 Construction

- Ring segmented into 4–6 arcs (~1.5–2 m each) for transport.
- Segments join via internal aluminum sleeve ferrules (~5–10 cm long, friction-fit, pinned with stainless steel hitch pins).
- Bending: each arc rolled to the correct radius with a tube roller, or assembled from straight segments as a 12–16-side polygonal approximation (shape error <1% for 3 m diameter).
- LED strip mounted on the outer face of the tube (adhesive backing or transparent zip ties).
- Power cable routed through the tube interior; junction at one segment joint with a weatherproof connector.

### 3.5 Attachment to Envelope

All attachments target the **outer shell only**. The inner TPU bladder is mechanically isolated from the ring, the tethers, and the lights — it sees no concentrated point loads and no skin penetrations beyond its single inflation valve. The bladder is held inside the shell by inflation alone (positive volume fit), not by any glue, weld, or tether between layers.

The shell is suspended within the ring at 4 cardinal points using elastic tensioners — analogous to a microphone shock-mount.

**Per attachment point:**

- Sewn nylon webbing loop on the shell's sidewall band, backed with a 10–15 cm sewn-on ripstop reinforcement patch (double layer + bar-tack stitching).
- Stainless-steel split ring or small carabiner clipped to the loop.
- Tension element between carabiner and ring, one of:
  - Coiled stainless steel extension spring (~5 cm, 3–5 kg working load)
  - Shock cord (3–5 mm) with adjustable tensioner
  - Elastic bungee strap
- Tension element terminated at the ring via a stainless-steel saddle clamp or tube clamp.

**Why elastic suspension:**

- Accommodates envelope volume changes (helium expands/contracts ~0.4% per °C) without skin stress.
- Damps wind-induced oscillation between envelope and ring.
- Distributes asymmetric loads across all attachment points (a rigid attachment would concentrate stress).
- Decouples ring dimensional stability from shell tension, which is in turn decoupled from bladder pressure.

**Number of attachment points:** 4 cardinal points (90° apart) is the minimum for symmetric suspension and matches the 4-tether layout of Mode A. More points (6 or 8) reduce per-point load and improve centering, at the cost of more shell hardware. Note that adding shell attachment points is cheap (sewn patches only) — no bladder penetrations are involved.

**Reinforcement:** All 4 shell attachment points are reinforced identically. The same points serve as tether anchors in Mode A and as suspension points in Mode B; load on each point varies with flight mode.

---

## 4. Flight Modes

The ring + envelope assembly supports two flight orientations using identical hardware. Tether routing differs between modes; ring construction and envelope-to-ring suspension are unchanged.

### 4.1 Mode A: Horizontal Disc ("Saucer")

**Orientation:**

- Ring axis vertical; ring lies in the horizontal plane.
- Envelope's circular faces point up and down.

**Visual:** From directly below, observers see a perfect circle — lit ring framing the glowing disc face.

**Anchoring:**

- 4 ground tethers attached at the 4 cardinal points of the ring.
- Tethers run downward and outward to 4 ground anchors arranged in a square or rectangle wider than the ring (typically ≥1.5× ring diameter).
- The 4-tether inverted-pyramid geometry provides restoring moments against tilt: any tilt slackens one tether and tensions the opposite.

**Stability characteristics:**

- Inherently neutral in pitch/roll — tether attachments are coplanar with the center of buoyancy; stability comes entirely from tether spread.
- Ground-anchor footprint must be wider than the ring projection; narrow footprints allow tilt and oscillation.
- Wind load distributes evenly across all 4 tethers when wind direction aligns with an anchor diagonal; uneven distribution otherwise.

**Best for:** Low-to-moderate wind; performance contexts where the audience is below the disc.

### 4.2 Mode B: Vertical Disc ("Microphone")

**Orientation:**

- Ring axis horizontal; ring stands upright.
- Envelope's circular faces point in opposite horizontal directions.

**Visual:** From the side, observers see a microphone-grille silhouette — lit ring framing a glowing lenticular envelope.

**Anchoring options:**

- **2-tether (V-tether):** Tethers attached to the lower-left and lower-right of the ring, going down and outward to 2 ground anchors. Allows free yaw around the vertical axis — disc weathervanes edge-into-wind, minimizing drag.
- **3-tether (tripod):** Tethers at lower-left, lower-right, and bottom-center of the ring. Locks yaw if the disc must face a fixed direction (e.g., toward an audience).

**Stability characteristics:**

- Center of buoyancy is above tether attachments → pendulum stability against pitch and roll. More inherently stable than Mode A.
- 2-tether weathervaning naturally minimizes wind loading; favorable in gusty conditions.
- 3-tether locks orientation but increases drag if wind shifts off-axis.

**Best for:** Moderate-to-strong wind (lower drag profile when weathervaning); display contexts where the audience is at ground level beside the balloon.

### 4.3 Mode Switching

The ring and envelope hardware is identical for both modes. To switch:

1. Detach all current ground tethers from the ring.
2. Tilt the assembly into the target orientation while maintaining helium lift control (keep one safety tether attached during the transition).
3. Re-clip ground tethers to the new attachment points.
4. Re-tension and verify even load distribution.

All 4 ring attachment points are reinforced identically so any subset can serve as a tether anchor without modification.

---

## 5. Material Suppliers

Two material lines need sourcing — TPU film for the bladder, uncoated ripstop nylon for the shell.

### 5.1 TPU film (inner bladder)

Pure TPU film, 4–6 mil typical, sold by the roll or yard. No fabric backing.

| Vendor                              | Website                                                                                          | Price Range                                                  | Shipping to Berkeley, CA          | Notes                                                                                     |
| ----------------------------------- | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------ | --------------------------------- | ----------------------------------------------------------------------------------------- |
| **American Polyfilm**               | [americanpolyfilm.com](https://www.americanpolyfilm.com/inflatables-and-advertising-tpu-film)    | Quote-based; standard inflatables/advertising TPU film lines | Ships from Branford, CT (US).     | Primary recommendation. Specifically sells TPU film for inflatable structures and blimps. |
| **DIY Packraft (TPU film)**         | [diypackraft.com](https://www.diypackraft.com)                                                   | ~$10–20/yd for plain TPU film widths                         | Ships from Europe (~7–14 days).   | Sells unbacked TPU alongside their coated-fabric line.                                    |
| **Extremtextil (TPU film options)** | [extremtextil.de](https://www.extremtextil.de/en/)                                               | €8–18/m (~$9–20/yd) depending on thickness                   | Ships from Germany (~10–14 days). | Multiple film thicknesses; good for bladder weight tuning.                                |

### 5.2 Ripstop nylon (outer shell, uncoated)

Standard outdoor-grade ripstop. Any uncoated or DWR-treated nylon ripstop works — no airtight coating required.

| Vendor                  | Website                                              | Price Range                                                            | Shipping to Berkeley, CA          | Notes                                                                |
| ----------------------- | ---------------------------------------------------- | ---------------------------------------------------------------------- | --------------------------------- | -------------------------------------------------------------------- |
| **Ripstop by the Roll** | [ripstopbytheroll.com](https://ripstopbytheroll.com) | $5–14/yd for 30D–70D ripstop nylon; wide color range                   | Ships from North Carolina (US).   | Primary US source for uncoated ripstop. Many weights and colors.     |
| **Rockywoods Fabrics**  | [rockywoods.com](https://rockywoods.com)             | $8–18/yd for 40D–210D ripstop nylon                                    | Ships from Colorado (~3–5 days).  | Includes FR-treated and heavier weights for sidewall and patches.    |
| **Emmakites**           | [emmakites.com](https://www.emmakites.com)           | $5–8/yd small qty; $229/50yd roll (40D ripstop, 19 colors)             | Ships from US warehouse (~5–7 d). | Cheap by the yard; useful for full color match.                      |
| **Discount Fabrics**    | Berkeley & SF locations                              | Walk-in pricing varies                                                 | **Local pickup**.                 | Limited technical selection but quick local source for prototype lots. |

**Bulk option:** Alibaba (search "ripstop nylon fabric uncoated") — ~$1–3/yd at 200–1000 m MOQ; 2–4 week shipping.

---

## 6. Local Bay Area Resources


| Resource                    | Contact                                                                                                             | Use                                                          |
| --------------------------- | ------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------ |
| **INFLATABILL**             | [inflatabill.com](https://inflatabill.com), 707-536-1611, [contact@inflatabill.com](mailto:contact@inflatabill.com) | Construction techniques, festival best practices             |
| **Discount Fabrics**        | Berkeley & SF locations                                                                                             | Prototyping materials, seam tape, tools                      |
| **Big Ideas Parade Giants** | [biggideas.com](https://biggideas.com)                                                                              | Reference for professional urethane-coated nylon inflatables |


---

## 7. Inflation Port: Boston Valve

**Specified valve:** Heat-sealable Boston valve (reusable).

A lightweight plastic check valve (~44 g) with screw cap and internal one-way flap. Supports inflation, topping up, and deflation without permanent sealing.

**Rationale:**

- Reusable across many inflation cycles
- One-way flap prevents helium loss during hose disconnect
- Supports top-up during multi-day events (helium permeates fabric over time)
- Proven in packrafts and large inflatables

### 7.1 Installation on the bladder

The valve installs on the **inner TPU bladder only** — never on the outer shell. Performed during bladder construction while the film is flat:

1. Select location near bottom or back of bladder (away from glow hardware and visual focal points). The location must align with the shell access port (§7.4).
2. Mark and cut a **4 cm circle** in the TPU film panel.
3. Insert valve body from the **inside** so the flange sits flat against the interior surface. Three raised alignment bumps face inward.
4. Cut reinforcement ring from matching TPU film: ~12 cm outer diameter, 4 cm center hole.
5. Place ring over valve flange on the **outside** of the bladder (film against bladder skin).
6. Cover with parchment paper or Teflon sheet.
7. Heat-weld from center outward (6–8 seconds per section at ~200°C/400°F). Work outward to expel air bubbles.
8. Remove parchment, roll firmly while cooling, verify bond with gentle tug test.

### 7.2 Operation

- **Fill / top-up:** Open the shell access port (§7.4), unscrew top cap on the bladder valve, attach helium regulator hose (standard nozzle), inflate to target pressure. Check valve prevents backflow on hose removal. Close the shell access port.
- **Deflate:** Open the shell access port, unscrew middle section of the valve for wide port and fast gas release.

### 7.3 Valve Sources

| Source                                                                                                                  | Price  | Notes                                   |
| ----------------------------------------------------------------------------------------------------------------------- | ------ | --------------------------------------- |
| [DIY Packraft](https://www.diypackraft.com/shop/merchandise/valves/heat-sealable-boston-valve/) (TPU-compatible flange) | ~$8–11 | Preferred — flange welds directly to TPU film. |
| Amazon / AliExpress (generic)                                                                                           | ~$2–5  | May require adhesive instead of welding |


Order early to practice reinforcement-ring welding on scrap TPU film before final installation.

### 7.4 Shell access port

Because the valve lives on the bladder under the shell, the shell needs a closeable opening directly over the valve so the valve can be reached for fill, top-up, and deflate without disassembling the envelope.

**Design:**

- Cut a ~10–15 cm diameter circular opening in the shell, centered over the bladder valve location.
- Reinforce the opening's edge with a sewn-on ripstop facing strip (double layer).
- Closure: hook-and-loop (Velcro) flap, sewn on three sides like a pocket, opening downward so it stays closed under any orientation. Hook-and-loop is preferred over a zipper for cost, weight, weather sealing, and absence of metal hardware near the valve.
- Mark the flap exterior with a discreet label or color so the operator can find the fill point quickly in the field.

**Why a port instead of an exposed valve:** the shell exists specifically to protect the bladder and host hardware. An exposed valve would require either cutting a permanent hole in the shell (defeating UV/abrasion protection at that point) or putting the valve through a sewn-in grommet that loads the bladder skin during inflation. A pocketed access flap keeps the valve hidden, isolates the bladder from any port-edge stress, and stays serviceable.

---

## 8. Prototyping Plan

The two layers are validated separately before being assembled, so problems in one layer are caught before they're hidden by the other.

| Phase | Scope                       | Materials / Actions                                                                                                                                                 |
| ----- | --------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1     | 1 m bladder only            | TPU film from American Polyfilm (~5–10 yd, 4–6 mil). Weld flat-circles + sidewall band geometry. Install Boston valve. **Leak test**: inflate with air and hold ≥24 h. |
| 2     | 1 m shell only              | 5–10 yd uncoated ripstop from Ripstop by the Roll. Sew matching geometry, slightly oversized. Add the 4 ring attachment patches and a §7.4 access port. Fit-check on a foam mock-up of the ring. |
| 3     | 1 m integrated assembly     | Insert bladder into shell, inflate. Verify retention (bladder fills shell, doesn't bunch), valve accessibility through the access port, and that ring attachments load the shell only.  |
| 4     | Full 2–3 m build            | Scale both layers; outdoor wind test with glow payload.                                                                                                              |
| 5     | Refinement                  | If shell is undersized, recut. If bladder permeates too fast, step up TPU film thickness. If wind loading deforms the silhouette, revisit shell weight.              |
| 6     | Glow integration            | Test LED strip / EL wire mounting using the shell's sewn patches (no bladder modification needed at any point).                                                      |
| 7     | Expert review               | Consult INFLATABILL with prototype photos.                                                                                                                          |


**Required tools:**

- Flat iron (or leather iron with flat bottom) — for bladder welding
- Parchment paper or Teflon sheet
- Silicone seam roller
- Sharp fabric scissors / rotary cutter
- Heat-sealable Boston valve + spare TPU film for reinforcement rings
- Sewing machine (domestic is sufficient for 40D–70D ripstop) — for shell construction
- Polyester sewing thread, ripstop-appropriate needles
- Hook-and-loop tape (~30 cm) for the §7.4 shell access port

---

## 9. Open Items

- Panel cutting patterns (for both bladder and shell)
- Fabric quantity calculations (TPU film and ripstop)
- TPU film thickness selection (4 mil vs 6 mil vs heavier)
- Shell-to-bladder size ratio empirical tuning (target ~2–3% linear oversize for shell)
- Whether the bladder needs internal tethers or alignment tabs to stay centered in the shell, or whether inflation alone keeps it centered
- Shell access port closure detail (Velcro size/grade, flap geometry)
- Tether reinforcement method (shell patch construction)
- Step-by-step assembly order (bladder build → shell build → bladder insertion → inflation)
- Glow mounting details (LED strip routing on ring; shell-internal lighting if any)
- Ring segment count and ferrule hardware sourcing
- Tension element selection (springs vs. shock cord vs. bungee) — empirical test
- Ground anchor hardware and footprint dimensions per flight mode
- Bill of materials

