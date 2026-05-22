# TPU Inflatable Tethered Balloon — Specification

## 1. Material: TPU-Coated Nylon Ripstop

**Selected material:** TPU-coated ripstop nylon.

**Rationale:** Suitable for a 2–3 m outdoor tethered lenticular disc operating in moderate-to-strong wind while carrying glow hardware.

**Properties:**

- Extremely lightweight (critical for flight stability and tether stress)
- Heat-weldable airtight with a household iron — no sewing or glue required for seams
- Excellent UV, abrasion, and puncture resistance
- Flexible to -40°C
- > 500% elongation; rated for over 1 million flex cycles
- Field-repairable with TPU fabric patches and iron welding
- Some weights are semi-translucent, suitable for internal glow

**Seam welding procedure:**

1. Overlap edges ~15–25 mm (TPU side to TPU side).
2. Cover with parchment paper or Teflon sheet.
3. Press with a flat iron at ~200°C (400°F) for 10–20 seconds per section.
4. Roll firmly with a silicone roller while the seam cools.
5. Verify strength — a good weld should tear the fabric before the seam fails.

**Fabric weights:**

- **40D–70D ripstop** — top and bottom faces
- **190–420D** — sidewall band and reinforcement patches

---

## 2. Envelope Geometry Options

Three envelope topologies were evaluated. Each produces a roughly disc/lens silhouette but distributes seams, stress, and material differently.

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

The envelope is suspended within the ring at 4 cardinal points using elastic tensioners — analogous to a microphone shock-mount.

**Per attachment point:**

- TPU webbing loop welded to the envelope's sidewall band, reinforced with a 10–15 cm TPU patch.
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
- Decouples ring dimensional stability from envelope skin tension.

**Number of attachment points:** 4 cardinal points (90° apart) is the minimum for symmetric suspension and matches the 4-tether layout of Mode A. More points (6 or 8) reduce per-point load and improve centering, at the cost of more hardware and more envelope penetrations.

**Reinforcement:** All 4 attachment points are reinforced identically. The same points serve as tether anchors in Mode A and as suspension points in Mode B; load on each point varies with flight mode.

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

## 5. TPU Fabric Suppliers

Small-to-medium quantity sources:


| Vendor                                   | Website                                              | Price Range                                                              | Shipping to Berkeley, CA                                         | Notes                                            |
| ---------------------------------------- | ---------------------------------------------------- | ------------------------------------------------------------------------ | ---------------------------------------------------------------- | ------------------------------------------------ |
| **OWF Inc** (Outdoor Wilderness Fabrics) | [owfinc.com](https://www.owfinc.com)                 | $6.59/yd (4.8 oz TPU heat-sealable nylon, 59" wide); discounts at 20+ yd | Ships from Idaho. 2–3 day processing, ~4–6 days UPS/USPS ground. | Primary US source for prototypes.                |
| **DIY Packraft**                         | [diypackraft.com](https://www.diypackraft.com)       | ~$32/yd (190 GSM ripstop, TPU both sides). Sample packs available.       | Ships from Europe (~7–14 days).                                  | High quality. Sells heat-sealable Boston valves. |
| **Extremtextil**                         | [extremtextil.de](https://www.extremtextil.de/en/)   | €12–25/m (~$13–27/yd) for 30D–210D TPU ripstop. Sold by the meter.       | Ships from Germany (~10–14 days).                                | Wide range of weights and colors.                |
| **Adventurexpert**                       | [adventurexpert.com](https://www.adventurexpert.com) | ~$21/yd (840D heavy TPU double-sided).                                   | Ships from Europe (~7–14 days).                                  | Reinforcement patches.                           |


**Bulk option:** Alibaba (search "TPU coated ripstop nylon inflatable") — ~$2–6/yd at 200–1000 m MOQ; 2–4 week shipping.

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

### 7.1 Installation

Performed during construction while fabric is flat:

1. Select location near bottom or back of envelope (away from glow hardware and visual focal points).
2. Mark and cut a **4 cm circle** in the TPU panel.
3. Insert valve body from the **inside** so the flange sits flat against the interior surface. Three raised alignment bumps face inward.
4. Cut reinforcement ring from matching TPU fabric: ~12 cm outer diameter, 4 cm center hole.
5. Place ring over valve flange on the **outside** (TPU side against balloon skin).
6. Cover with parchment paper or Teflon sheet.
7. Heat-weld from center outward (6–8 seconds per section at ~200°C/400°F). Work outward to expel air bubbles.
8. Remove parchment, roll firmly while cooling, verify bond with gentle tug test.

### 7.2 Operation

- **Fill / top-up:** Unscrew top cap, attach helium regulator hose (standard nozzle), inflate to target pressure. Check valve prevents backflow on hose removal.
- **Deflate:** Unscrew middle section for wide port and fast gas release.

### 7.3 Valve Sources


| Source                                                                                                                  | Price  | Notes                                   |
| ----------------------------------------------------------------------------------------------------------------------- | ------ | --------------------------------------- |
| [DIY Packraft](https://www.diypackraft.com/shop/merchandise/valves/heat-sealable-boston-valve/) (TPU-compatible flange) | ~$8–11 | Preferred                               |
| Amazon / AliExpress (generic)                                                                                           | ~$2–5  | May require adhesive instead of welding |


Order early to practice reinforcement-ring welding on scrap fabric before final installation.

---

## 8. Prototyping Plan


| Phase | Scope              | Materials / Actions                                                                                              |
| ----- | ------------------ | ---------------------------------------------------------------------------------------------------------------- |
| 1     | 1 m diameter model | 10–15 yd from OWF Inc (~$70–100) + one Boston valve. Validate pattern, welding, valve install, inflation.        |
| 2     | Full 2–3 m build   | Install Boston valve. Outdoor wind test with glow payload.                                                       |
| 3     | Refinement         | If 4.8 oz fabric is insufficient in wind, upgrade to 190 GSM (DIY Packraft) or add welded reinforcement patches. |
| 4     | Glow integration   | Test LED strip / EL wire mounting with welded TPU patches before final assembly.                                 |
| 5     | Expert review      | Consult INFLATABILL with prototype photos.                                                                       |


**Required tools:**

- Flat iron (or leather iron with flat bottom)
- Parchment paper or Teflon sheet
- Silicone seam roller
- Sharp fabric scissors / rotary cutter
- Heat-sealable Boston valve + spare TPU for reinforcement rings

---

## 9. Open Items

- Panel cutting patterns
- Fabric quantity calculations
- Tether reinforcement method
- Step-by-step assembly order
- Glow mounting details (LED strip routing on ring; envelope-internal lighting if any)
- Ring segment count and ferrule hardware sourcing
- Tension element selection (springs vs. shock cord vs. bungee) — empirical test
- Ground anchor hardware and footprint dimensions per flight mode
- Bill of materials

