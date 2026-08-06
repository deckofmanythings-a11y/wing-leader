# WING LEADER
## Master Rules Document — v0.8

---

# OVERVIEW

Wing Leader is a Star Wars-themed autobattler. Each player manages a squadron of three starships, each assigned a pilot and outfitted with parts. Player agency lives entirely in the Draft and Build phases. Combat is fully automated: once loadouts are locked, the battle resolves without further input and the player watches the outcome play out.

A full game consists of exactly 3 Rounds. Each Round follows the same structure:

**Draft > Build > Combat**

Points are accumulated across all three Loops. The player with the most points at the end of Round 3 wins.

Wing Leader is designed for a large matchmaking pool. You are never at a fixed table with fixed opponents. Each Round you are matched against one other player on the same Round as you, drawn from the global pool. You may face the same opponent more than once across Loops, though the platform will deprioritize rematches where possible.

---

# GAME STRUCTURE

## Rounds

A game consists of exactly 3 Rounds. Each Round contains one match.

**Round Structure:**
1. Draft Phase
2. Build Phase
3. Combat (one match against a same-Round opponent)

## Scoring

| Result | Points |
|---|---|
| Win | 3 |
| Draw | 1 |
| Loss | 0 |

Maximum possible score: 9 points across 3 Rounds. Tiebreaker at end of game: total damage dealt across all matches. If still tied, the result is a shared victory.

## Persistence Between Loops

- Ships, pilots, and parts persist between Loops.
- Damage resets fully at the start of each new Round.
- Rounds 2 and 3 begin with an Upgrade Draft rather than a full draft.

---

# COMPONENTS

## Personal Decks

Each player has their own private decks for each component category. Draft draws are made from your own personal pool. There is no shared draft pool between players.

## Rarity Tiers

| Color | Tier | Notes |
|---|---|---|
| Gray | Shop / Very Common | Not in draft pool. Available via Shop only. |
| White | Common | In draft pool. |
| Green | Uncommon | In draft pool. |
| Blue | Rare | In draft pool. |
| Purple | Very Rare | In draft pool. |
| Orange | Legendary | In draft pool. |
| Black | Black Market | Seeded rewards only. Never in general draft pool. |

## Parts Deck Composition

Each player's parts deck contains 80 cards per category (Weapons, Shields/Armor, Engines, Systems), for a total of 320 parts cards.

The deck is balanced so that the number of V1 cards equals the combined total of V2+V3 cards, and also equals the combined total of V4+V5 cards. This ensures equal probability of drawing a part suited to Small, Medium, or Large ships.

| Rarity | Copies per Category |
|---|---|
| Common | 30 |
| Uncommon | 20 |
| Rare | 15 |
| Very Rare | 10 |
| Legendary | 5 |
| **Total** | **80 per category** |

## Seeded Reward Cards

Certain cards are not in the general draft pool. They become eligible only when a player meets a specific prerequisite.

**Eligibility gate:** The card enters the draft pool only if the prerequisite is met.

**Rarity gate:** Even when eligible, the card appears in picks according to its rarity tier.

Seeded rewards are checked at the start of Rounds 2 and 3. Qualifying players are offered their eligible reward card as an additional pick-one-of-three alongside one round of their normal parts draft. Declining forfeits that reward card for the game.

---

# PILOTS

Each pilot card defines three base stats and a set of ship certifications.

## Base Stats (Card Labels)

| Card Label | Mechanical Name | Drives |
|---|---|---|
| Piloting | Instinct | Response, Comfort, Initiative |
| Gunnery | Reaction Time | Response, Attack, Initiative |
| Systems | System Manipulation | Efficiency |

Base stats are rated 1-9 on the card. Each round of combat they are randomized within a range determined by their tier.

| Card Value | Tier | Random Range |
|---|---|---|
| 1-2 | Low | 1-20 |
| 3-4 | Medium-Low | 21-40 |
| 5-6 | Medium | 41-60 |
| 7-8 | Medium-High | 61-80 |
| 9 | High | 81-100 |

## Familiarity

Familiarity is a fourth input to derived Aspects. It is fixed (does not randomize) and is determined by the match between the pilot's certifications and the ship they are assigned to.

**Familiarity Table:**

| | Pilot's Custom Ship | Specified Sub-model | Model | Role/Class | Size | No Match |
|---|---|---|---|---|---|---|
| Pilot's Custom Ship | 95 | 76 | 57 | 38 | 19 | 0 |
| Specified Sub-model | 85 | 85 | 68 | 51 | 34 | 0 |
| Model | 75 | 75 | 75 | 60 | 45 | 0 |
| Role/Class | 65 | 65 | 65 | 65 | 52 | 0 |
| Size | 60 | 60 | 60 | 60 | 60 | 0 |

If a pilot has multiple qualifying certifications for their assigned ship, use the highest applicable value. If a pilot has no qualifying certifications, Familiarity is 0.

## Derived Aspects

Derived Aspects are calculated each combat round from the randomized stat values and fixed Familiarity score.

| Aspect | Formula | Used For |
|---|---|---|
| Response | (Instinct + Reaction Time) / 2 | Maneuver success checks |
| Attack | (Reaction Time + Familiarity) / 2 | Attack quality determination |
| Comfort | (Instinct + Familiarity) / 2 | Universal modifier on all checks |
| Initiative | (Instinct + Reaction Time + Familiarity) / 3 | Turn order |
| Efficiency | (System Manipulation + Familiarity) / 2 | System activation |

Round all results to the nearest whole number.

## Comfort: Universal Modifier

Comfort applies as a modifier to the effective threshold of every roll made by that ship each round. This includes Response checks, Efficiency Tests, and Attack quality rolls.

| Comfort Value | Modifier |
|---|---|
| 1-20 | -15 |
| 21-40 | -10 |
| 41-60 | -5 |
| 61-80 | +0 |
| 81-100 | +5 |

## Pilot Roster

Pilot certifications use the full ship classification hierarchy. A pilot certified on a sub-model (e.g. T-65 X-wing) gains higher Familiarity than one certified only on the model (X-wing) or role class (Starfighter). The "All" certification grants maximum Familiarity with any ship.

**Very Rare**
- Anakin Skywalker (Galactic Republic) — P:9 G:9 S:5 — Certified: All
- Ahsoka Tano (Galactic Republic) — P:8 G:7 S:8 — Certified: Jedi Starfighter (Eta-2 Actis), Jedi Starfighter (Delta-7B Aethersprite), Jedi Starfighter, RZ-1 A-wing, A-wing, Starfighter

**Rare**
- Poe Dameron (Resistance) — P:9 G:8 S:3 — Certified: All
- Han Solo (Rebel) — P:8 G:8 S:8 — Certified: YT-1300 Freighter, YT-2400 Freighter, YT, Freighter, X-wing
- Darth Vader (Empire) — P:9 G:9 S:5 — Certified: TIE/x1 Advanced, Jedi Starfighter (Eta-2 Actis), TIE, Starfighter
- General Merrick (Rebel) — P:9 G:8 S:3 — Certified: RZ-1 A-wing, A-wing, T-65 X-wing, X-wing, Starfighter

**Uncommon**
- Wedge Antilles (Rebel) — P:9 G:6 S:4 — Certified: T-65 X-wing, X-wing, BTL Y-wing, Y-wing, Starfighter
- Soontir Fel (Empire) — P:8 G:8 S:4 — Certified: TIE/ln Fighter, TIE/IN Interceptor, TIE, Interceptor
- Kylo Ren (First Order) — P:8 G:9 S:5 — Certified: TIE/wi Whisper, TIE, Starfighter
- Warthog (Galactic Republic) — P:7 G:6 S:4 — Certified: BTL Y-wing, Y-wing, ARC-170, ARC, Bomber
- Obi-Wan Kenobi (Galactic Republic) — P:7 G:7 S:4 — Certified: Jedi Starfighter (Eta-2 Actis), Jedi Starfighter (Delta-7B Aethersprite), Jedi Starfighter, Starfighter
- Cienna Rhee (Empire) — P:6 G:6 S:6 — Certified: TIE/ln Fighter, TIE/IN Interceptor, TIE, Starfighter
- Iden Versio (Empire) — P:5 G:8 S:4 — Certified: TIE/ln Fighter, TIE/IN Interceptor, TIE, Starfighter
- General Grievous (Separatist) — P:9 G:8 S:3 — Certified: Belbullab-22, Belbullab, Starfighter
- IG-100 MagnaGuard (Separatist) — P:9 G:8 S:3 — Certified: Belbullab-22, Belbullab, Starfighter
- Jango Fett (Separatist) — P:7 G:7 S:6 — Certified: Firespray-31, Firespray, Starfighter
- Rey (Resistance) — P:7 G:7 S:4 — Certified: YT-1300 Freighter, YT, Freighter, Starfighter
- Major Vonreg (First Order) — P:7 G:7 S:4 — Certified: TIE/fo Fighter, TIE, Interceptor
- Din Djarin (Mandalorian) — P:6 G:7 S:5 — Certified: Razor Crest, Shuttle, Starfighter
- Bo-Katan Kryze (Mandalorian) — P:5 G:8 S:4 — Certified: Gauntlet Starfighter, Gauntlet, Kom'rk-class Fighter/Transport, Kom'rk-class, Shuttle, Starfighter
- Bhodi Rook (Empire) — P:6 G:4 S:7 — Certified: Lambda-class Shuttle, Shuttle, Freighter

**Common**
- Hera Syndulla (Rebel) — P:7 G:5 S:3 — Certified: YT-2400 Freighter, YT, Freighter, Starfighter
- Zorii Bliss (Resistance) — P:5 G:5 S:6 — Certified: BTA-NR2 Y-wing, Y-wing, Freighter
- Boba Fett (Mandalorian) — P:6 G:7 S:5 — Certified: Firespray-31, Firespray, Starfighter
- Captain Phasma (First Order) — P:5 G:5 S:5 — Certified: TIE/fo Fighter, TIE
- Asajj Ventress (Separatist) — P:7 G:4 S:7 — Certified: Fanblade, Starfighter
- Luke Skywalker (Rebel) — P:8 G:8 S:5 — Certified: T-65 X-wing, X-wing, Starfighter


## Ship Traits

Every ship has fixed Advantages and Drawbacks reflecting its canonical design. These cannot be removed or modified.

### Advantages

**Solar Wings (X)** — +X Excess Power per round. Cannot combine with Removed Fairings.
**Combat Transformation** — Auto-first Initiative in Round 1. Ties between Combat Transformation ships broken by normal Initiative roll. Applies to any ship with deployable or reconfiguring wings (X-wings, B-wing, Fanblade, U-wing, Kom'rk, Gauntlet, Omicron).
**Removed Fairings (X)** — +X Excess Power per round. Cannot equip Armor. Cannot combine with Solar Wings.
**Rotating Cockpit (X)** — +X to Comfort each round.
**Bomber (X)** — Ordinance weapons may fire X additional times per match.
**Gunship** — May equip one Weapon beyond Engine capacity at no power cost.
**Tough (X)** — X installed items have one extra hit point. The first hit to each protected item is ignored.
**Fast (X)** — +X to Initiative each round.

### Drawbacks

**Blind Spots** — Attacks against this ship from Tailed position gain one quality step. Reflects rearward visibility gaps from wing geometry or cockpit placement.
**Fragile (X)** — X randomly selected items begin each match at DS1.

## Ship Roster

**Resistance:** T-70 X-wing (Common, Medium), RZ-2 A-wing (Uncommon, Small), BTA-NR2 Y-wing (Uncommon, Medium), YT-1300 Freighter (Uncommon, Large)

**Rebel:** T-65 X-wing (Uncommon, Medium), RZ-1 A-wing (Uncommon, Small), A/SF-01 B-wing (Rare, Medium), BTL Y-wing (Common, Medium), UT-60D U-wing (Common, Large), YT-2400 Freighter (Rare, Large)

**Empire:** TIE/x1 Advanced (Very Rare, Small), TIE Defender (Rare, Small), TIE/IN Interceptor (Uncommon, Small, Blank left slot), TIE Fighter (Common, Small, Blank left slot), TIE/sa Bomber (Rare, Medium), Lambda-class Shuttle (Uncommon, Large)

**First Order:** TIE Whisper (Rare, Small), FO TIE Fighter (Common, Small, Blank left slot), Upsilon-class Shuttle (Uncommon, Large), TIE Echelon (Uncommon, Large)

**Separatist:** Belbullab-22 (Rare, Small), Fanblade Starfighter (Uncommon, Small), Sheathipede-class Shuttle (Common, Large), Geonosian Fighter (Common, Small)

**Galactic Republic:** Jedi Starfighter — Eta-2 Actis / Delta-7B Aethersprite (Rare, Small, Blank left slot), ARC-170 (Common, Medium), Nu-class Shuttle (Uncommon, Large), Omicron-class Attack Shuttle (Uncommon, Medium)

**Mandalorian:** Firespray-31 (Common, Medium), Kom'rk-class Fighter/Transport (Uncommon, Medium), Gauntlet Starfighter (Rare, Large), Razor Crest (Rare, Large)

---

# PARTS

## Assembly Rules

**Highest Connector Side First:** The side with the most connectors serves as the initial connection point and cannot be left unconnected. Its color must match the parent edge.

**Power Constraints:** Engines define how many and what types of powered items they support. Weapons, Shields, Armor, and Systems consume power.

**Excess Power Costs:** Some systems cost Excess Power to activate. This cost is paid before the Maneuver Pool is calculated each round.

**Color Mismatch Cost:** Each non-highest-side connection between two parts of different colors costs +1 Excess Power per round from the owning ship's pool. Costs stack.

## Damage State Penalties

| Item Type | DS1 Penalty | DS2 Penalty | DS3 |
|---|---|---|---|
| Cannon / Turret / Ordinance | Attack quality reduced one step | Attack quality reduced two steps | Destroyed |
| Shields | Mitigation reduced by 1 | Mitigation reduced by 2 | Destroyed |
| Armor | Mitigation reduced by 1 | Mitigation reduced by 2 | Destroyed |
| Engine | Powered item capacity reduced by 1 | Powered item capacity reduced by 2 | Destroyed |
| System | Efficiency threshold reduced by 20 | Efficiency threshold reduced by 40 | Destroyed |

## Weapons

| Name | Rarity | Type | Notes |
|---|---|---|---|
| Basic Cannon | Shop (V1/V3/V5) | Cannon | Forward-firing. Low damage. Available in Small, Medium, and Large variants. |
| Basic Turret | Shop (V1/V3/V5) | Turret | 360-degree fire arc. Low damage. Available in Small, Medium, and Large variants. |
| Cannon | Common | Cannon | Standard forward-firing weapon. |
| Turret — Common | Common | Turret | 360-degree. Attack against Tailing ship is always Standard Quality. |
| Turret — Uncommon | Uncommon | Turret | 360-degree. Attack against Tailing ship is always High Quality. |
| Ordinance — Uncommon | Uncommon | Ordinance | 1d10 damage (min 2). Single-use per match. Cannot be repaired. |
| Heavy Cannon | Rare | Cannon | Attack quality treated as one step higher than rolled. Costs 1 Excess Power when fired. |
| Ordinance — Rare | Rare | Ordinance | 2d10 damage (min 4). May split dice across two targets. Single-use per match. |
| Twin-Linked Cannon | Very Rare | Cannon | Fires twice per round automatically. Both shots use standard Attack Quality Resolution. Both target the same ship. |
| Ion Cannon | Legendary | Cannon | On any hit, target ship's Excess Power reduced by 2 next round. |

## Shields and Armor

Shields regenerate each round. Armor does not. Both occupy Yellow connector slots.

| Name | Rarity | Type | Mitigation | Notes |
|---|---|---|---|---|
| Weak Shields | Shop (V1/V3/V5) | Shield | 1 | Regenerates. Available in Small, Medium, and Large variants. |
| Ablative Armor | Common | Armor | 1 | DS1 reduces mitigation by 1. |
| Reinforced Plating | Common | Armor | 1 | DS1 does NOT reduce mitigation. DS2 reduces by 1. |
| Armor | Uncommon | Armor | 2 | DS1 reduces mitigation by 1. |
| Shields | Uncommon | Shield | 2 | Regenerates. DS1 reduces mitigation by 1. |
| Chromium Armor | Rare | Armor | 3 | DS1 reduces mitigation by 1. |
| Shields — Rare | Rare | Shield | 3 | Regenerates. DS1 reduces mitigation by 1. |
| Chromium Armor and Shields | Very Rare | Hybrid | 5 | Shield portion (2) regenerates. Armor portion (3) does not. |
| Layered Defense System | Legendary | Shield | 4 | Regenerates. Reduces overflow damage by 1 per hit after standard mitigation. |

Mitigation is subtracted from incoming damage before the Mitigation Cap is applied. If Shields reduce damage to exactly 0, they become Weakened next round (mitigation -1 for that round, then restored).

## Engines

| Name | Rarity | Powers | Notes |
|---|---|---|---|
| Basic Engine | Shop (V1/V3/V5) | 1 Weapon, 1 Shield, 1 System | Available in Small, Medium, and Large variants. |
| Light Engine | Common | 2 Weapons, 1 System | No Shield capacity. |
| Standard Engine — Common | Common | 2 Weapons, 1 Shield, 1 System | |
| Standard Engine — Uncommon | Uncommon | 2 Weapons, 1 Shield, 1 System | Passive: +1 Excess Power each round. |
| Enhanced Engine | Uncommon | 2 Weapons, 1 Shield, 2 Systems | |
| Heavy Engine | Rare | 2 Weapons, 2 Shields, 1 System | |
| Military Engine — Very Rare | Very Rare | 6 items (any combination) | |
| Military Engine — Legendary | Legendary | 7 items (any combination) | |

## Systems

Systems activate via Efficiency Tests. Roll 1d100. Success if result is equal to or below the ship's Efficiency Aspect modified by the Comfort modifier. Systems with an Excess Power cost drain that power before the Maneuver Pool is calculated.

### Shop
**Targeting Relay (V1/V3/V5)** — Reduces OOP snap shot attack quality penalty by one step. Available in Small, Medium, and Large variants.

### Common
**Proximity Sensors** — Passive. When moved from OOP to Tailed, retain initiative advantage on the first reaction maneuver.
**Deflector Coils** — Efficiency Test. Success: Shields do not Weaken this round.
**Targeting Scope** — Passive. Low Quality Attacks against Tailed targets become Standard Quality.
**Fuel Injector** — Once per match. Treat this ship as one size smaller for Excess Power calculation.
**Comm Scrambler** — Efficiency Test. Success: prevent one enemy System from activating this round.

### Uncommon
**Sensor Array** — Passive. Each round, reveals whether each enemy ship's Excess Power is above or below 3.
**Shield Capacitor** — Once per match. Efficiency Test. Success: restore Shields from Weakened to full at start of Maneuver phase.
**Target Painter** — Efficiency Test. Success: all attack quality rolls against one designated enemy ship are one step higher this round.
**Inertial Compensator** — Passive. Response checks while Tailed are one quality step higher.
**Astromech Interface** — Once per round, re-roll one failed Efficiency Test. Must accept the second result.

### Rare
**Combat Predictor** — Efficiency Test. Success: this ship gains Advantage on all Response checks to gain Tailing position this round (roll twice, take the better result). Enemies attempting to escape from this ship suffer Disadvantage on their Response checks (roll twice, take the worse result).
**Reactive Shield Matrix** — When damage would Weaken Shields, Efficiency Test. Success: full hit absorbed, no Weakening.
**Electronic Countermeasures** — Efficiency Test. Success: negate one enemy System after it activates this round.
**Overdrive Injector** — Once per match. Efficiency Test. Success: +2 Excess Power this round. Ship takes 1 automatic Engine damage at end of round regardless of result.
**Slaved Targeting** — Efficiency Test. Success: one Cannon attack may re-roll its quality roll and take the higher result.
**Reinforced Deflectors** — Efficiency Test. Success: Shields do not Weaken this round. Cannot be used the following round.
**Collision Detector** — Efficiency Test. Success: if this ship loses its Tailing position this round because an enemy successfully escapes, it automatically reacquires Tailing at the end of that maneuver phase. The escape is negated.
**Advanced Targeting Computer** — Efficiency Test. Success: all Tailing attacks gain Shoot Twice this round.
**Trajectory Simulator** — Efficiency Test. Success: reveal the selected maneuver of one ship this ship is Tailing or being Tailed by.
**Sensor Jammer** — Efficiency Test. Success: block one enemy Trajectory Simulator this round.
**Maneuverability Thrusters** — Costs 1 Excess Power. Efficiency Test. Success: net +1 Excess Power this round.

### Very Rare
**Predictive Flight Computer** — Passive. Always active. Each round, look at one enemy ship's selected maneuver before yours is finalized.
**Adaptive Countermeasure Suite** — Passive. Cannot be directly targeted by enemy Systems.
**Emergency Power Reroute** — Once per match. When this ship would go Dead in the Water, survive one additional round before re-evaluation.
**Stealth Field Projector** — Costs 2 Excess Power. OOP snap shots against this ship automatically fail this round.
**Astromech** — Each round, choose one: grant automatic Efficiency Test success to one installed compatible system, or act as that system independently.

### Legendary
**Synchronized Squadron Computer** — Once per round, one friendly ship's successful attack roll may be applied to a different friendly ship's attack on the same target. All three friendly ships must be active.
**Mark VI Hyperdrive Motivator** — Between Loops, choose this ship's starting Positional State for the first round of the next match instead of beginning OOP.

---

# DRAFT PHASE

## Round 1: Full Draft

Each player drafts from their own private decks. All players draft simultaneously and independently.

### Step 1: Draft Ships (repeat 3 times)
Draw 3 ship cards from your personal Ship deck. Select 1. Place the other 2 in your Round Discard pile.

### Step 2: Draft Pilots (repeat 3 times)
Draw 3 pilot cards. Select 1. Return unchosen pilots to their rarity pools.

### Step 3: Draft Parts (repeat 18 times)
Draw 3 part cards from your personal Parts deck. Select 1. Place the other 2 in your Round Discard pile.

## Rounds 2 and 3: Upgrade Draft

Your existing squadron carries in. You may replace as much or as little as you choose.

### Step 1: Check Seeded Rewards
Check your roster against all seeded reward prerequisites. If you qualify, you receive an additional pick-one-of-three for that reward card before the main draft.

### Step 2: Upgrade Ships (optional, up to 3 times)
Draw 3 ships. Select 1. Discard the rest and the replaced ship to your Round Discard pile.

### Step 3: Upgrade Pilots (optional, up to 3 times)
Follow the same process as Round 1. Replaced pilots return to their rarity pools.

### Step 4: Upgrade Parts (optional, up to 18 times)
Draw 3 parts. Select 1. Discard the rest and the replaced part to your Round Discard pile. Always end with exactly 18 parts.

## Round Discard Rule

All discarded and replaced components go to your Round Discard pile at the end of each Round. At the start of the next Round, all Round Discard piles shuffle back into their respective personal decks.

---

# BUILD PHASE

All players build simultaneously and independently. There is no time pressure.

## Step 1: Configure Ship Loadouts

Distribute your 18 parts freely across your three ships. No minimum or maximum per ship. All Assembly Rules apply. Parts may be freely reassigned in Rounds 2 and 3.

**Minimum to proceed:** Each ship must have at least one Engine and at least one Weapon before the squadron is considered ready for combat.

## Step 2: Access the Shop (Optional)

- Shop items are Gray rarity, inferior versions of standard part categories.
- Shop items come in three sizes: V1 (Small), V3 (Medium), V5 (Large). Choose the variant that fits your ship.
- Trade any drafted part 1-for-1 for a Shop item.
- You always end the Build Phase with exactly 18 parts total.
- Shop items may be traded for other Shop items at no additional cost.

## Step 3: Set Behavioral Profiles and Target Priorities

After build is complete, assign each ship a Behavioral Profile and a Target Priority. These govern all automated combat decisions for that ship.

### Behavioral Profiles

**Aggressor:** Always uses the highest Excess Power maneuver available. Maximum aggression at all times.

**Opportunist:** Adapts to the situation. Maintains position when Tailing, escapes when Tailed, seeks the best target when OOP. Default balanced behavior.

**Escort:** Names one specific friendly ship as its ward. Intercepts enemies Tailing the ward. Checks own Tailed status first; escapes before engaging if currently Tailed. Reverts to Opportunist if ward is destroyed.

**Predator:** Names one specific enemy ship as its primary target. Ignores others unless no viable path exists. Escapes first if currently Tailed before re-engaging next round. Designation is set at combat setup (when opponent's ships are known), not during build. Reverts to Opportunist with Best Position targeting if primary is destroyed.

**Survivor:** Self-preservation first. Uses highest available escape when Tailed. Only attacks when Tailing with confidence. Avoids OOP engagements. Reverts to Opportunist if last active friendly ship.

**Random:** Profile and Target Priority are randomized at the start of combat, after squadron export. Any profile (except Escort, which requires a ward designation) may be assigned. The player does not know the result until the combat log is reviewed.

### Fallback Behaviors

| Profile | Trigger | Fallback |
|---|---|---|
| Escort | Ward destroyed | Opportunist |
| Predator | Designated target destroyed | Opportunist, Best Position |
| Survivor | Last active friendly ship | Opportunist |

### Target Priorities

**Highest Threat:** Target the enemy currently Tailing a friendly or dealing the most cumulative damage this match.

**Lowest Health:** Target the enemy with the highest total Damage State across all installed items.

**Best Position:** Target whichever enemy this ship has the best positional relationship with. Tailing targets first, then OOP.

**Designated Target:** Name one specific enemy ship. Set at combat setup when opponent's ships are known. Attack it until destroyed, then revert to Best Position.

## Step 4: Assign Pilots

After profiles are set, assign each of your three pilots to one of your three ships. Any pilot can fly any ship. Familiarity is calculated after assignment.

_Thematically: pilots are called to their ships only after the loadout is locked and the mission parameters are defined._

## Step 5: Calculate Starting Excess Power

| Source | Modifier |
|---|---|
| Small ship base | +2 |
| Medium ship base | +1 |
| Large ship base | +0 |
| Each unused powered engine slot | +1 |
| Certified pilot on this ship | +1 |
| Each DS2 item | -1 |
| Each color-mismatched non-highest-side connection | -1 |
| Active system Excess Power costs | -X per system |

## Step 6: Lock Loadouts

Confirm all assignments, configurations, profiles, and priorities. Combat begins.

---

# COMBAT PHASE

Combat is fully automated. Once loadouts are locked, the match resolves without player input. Results are presented as a round-by-round combat log. All ships begin each match Out of Position.

## Round Structure

1. Randomize Stat Values
2. Calculate Derived Aspects
3. Establish Turn Order
4. Display Positioning
5. Execute Repairs *(deferred — see Open Items)*
6. Calculate Excess Power and Pay System Costs
7. Select Maneuvers
8. Execute Maneuvers
9. Resolve Attacks
10. Mitigate Damage
11. Apply Damage
12. Check Win Condition

---

## Phase 1: Randomize Stat Values

Each pilot's Instinct, Reaction Time, and System Manipulation are randomized within their tier range each round. Familiarity does not randomize.

---

## Phase 2: Calculate Derived Aspects

Calculate Response, Attack, Comfort, Initiative, and Efficiency for each pilot. Apply the Comfort modifier to all subsequent checks this round.

---

## Phase 3: Establish Turn Order

Rank all active ships by Initiative, highest first.

**Tiebreakers (applied in sequence):**
1. Smaller size beats larger (Small > Medium > Large)
2. Most Very Rare parts installed
3. Most Rare parts installed
4. Random

---

## Phase 4: Display Positioning

**Positional States:**
- **Tailing:** This ship has that enemy in its sights.
- **Tailed:** That enemy has this ship in its sights.
- **Out of Position (OOP):** No direct positional relationship.

### Positional Chain Rules

- Chains of any length are legal (A tails B while C tails A).
- Circular loops are illegal (A tails B tails C tails A).
- A Tailed ship may not initiate a new Tailing relationship. Its only valid maneuvers are from the Tailed column.
- If a maneuver's success would create a circular loop, the positional change is negated and the ship moves to OOP instead.

---

## Phase 5: Execute Repairs

*Deferred. See Open Items.*

---

## Phase 6: Calculate Excess Power and Pay System Costs

| Source | Modifier |
|---|---|
| Small ship base | +2 |
| Medium ship base | +1 |
| Large ship base | +0 |
| Each unused powered engine slot | +1 |
| Certified pilot on this ship | +1 |
| Each DS2 item | -1 |
| Each color-mismatched non-highest-side connection | -1 |

After calculating base Excess Power, deduct costs for any active Excess Power systems. If a ship cannot pay a system's cost, that system does not activate this round.

The resulting value is the ship's Maneuver Pool budget for this round.

---

## Phase 7: Select Maneuvers (Automated)

Each ship selects its maneuver automatically based on Behavioral Profile, Positional State, available Excess Power, and Target Priority.

### Maneuver Tables

#### TAILED

| Excess Power | Maneuver | Effect |
|---|---|---|
| 0 | Snap Roll | Low Response check to escape to OOP |
| 1 | S-Thread | Standard Response check to escape to OOP |
| 2 | Slip Jibe | High Response check to escape to OOP |
| 3 | Pugachev's Cobra | Standard Response check to become Tailing. Low Quality Attack |
| 4 | Tallon Roll | High Response check to become Tailing. Standard Quality Attack |
| 5 | Koiogran Turn | Automatic reversal: become Tailing. Standard Quality Attack |

#### TAILING

| Excess Power | Maneuver | Effect |
|---|---|---|
| 0 | Stay on Target | Reduce target's Response check by 1 step. Standard Quality Attack |
| 1 | Displacement Roll | Reduce target's Response check by 2 steps. Low Quality Attack |
| 2 | Vibroknife | Reduce target's Response check by 1 step. High Quality Attack |
| 3 | Exploit Weakness | Reduce target's Response check by 2 steps. High Quality Attack |
| 4 | High Yo | Maintain Tailing. High Quality Attack. Shoot Twice |
| 5 | Dead to Rights | Maintain Tailing. High Quality Attack. Shoot Twice. Target's escape maneuver reduced by 1 Excess Power tier |

#### OUT OF POSITION

| Excess Power | Maneuver | Effect |
|---|---|---|
| 0 | Swooping Attack | Low Response check to gain Tailing on any non-Tailed enemy. Low Quality Attack |
| 1 | Gain the Advantage | Standard Response check to gain Tailing on any non-Tailed enemy. Low Quality Attack |
| 2 | Barrel Roll Attack | High Response check to gain Tailing on any non-Tailed enemy. Standard Quality Attack |
| 3 | Hit and Fade | Standard Quality Attack against any enemy. No positional change |
| 4 | Ambush | High Quality Attack against any enemy. No positional change |
| 5 | Blinding Star | High Quality Attack against any enemy. Cannot be Tailed this round |

### Response Check Quality Steps

| Quality | Threshold |
|---|---|
| Low | (Response × 0.75) + Comfort Modifier |
| Standard | (Response × 1.0) + Comfort Modifier |
| High | (Response × 1.25) + Comfort Modifier |

Roll 1d100. Success if result is equal to or below the threshold.

### Escape Diminishing Returns

Each time a ship successfully escapes to OOP on consecutive rounds, subsequent escape attempts suffer a cumulative penalty of -15 to the response roll threshold. The streak resets when the ship fails an escape check, or when it begins a round not in a Tailed state.

| Consecutive Escape Rounds | Threshold Penalty |
|---|---|
| 1st escape | None |
| 2nd consecutive escape | -15 |
| 3rd consecutive escape | -30 |
| 4th consecutive escape | -45 |
| (continues) | (-15 per additional round) |

---

## Phase 8: Execute Maneuvers

In Initiative order, each ship executes its selected maneuver. Positional changes resolve immediately after each ship acts.

---

## Phase 9: Resolve Attacks

**Who can attack:**
- Tailing ships attack the ship they are Tailing.
- Ships with Turret weapons may also attack the ship Tailing them.
- OOP ships may take a snap shot against any enemy at a one-step attack quality penalty.

### Attack Quality Resolution

Roll 1d100 against the ship's Attack Aspect modified by the Comfort modifier.

| Roll Result | Quality | Damage |
|---|---|---|
| Exceeds Attack Aspect by more than 20 | Low | 1d3 (minimum 2) |
| Within 20 above or any amount below Attack Aspect | Standard | 1d6 (minimum 3) |
| 30 or more below Attack Aspect | High | 1d10 (minimum 4) |

Damage minimums apply after all modifiers. A Low quality snap shot always deals at least 2 damage before mitigation.

**Shoot Twice:** Resolve two independent attack rolls. Both apply separately.

**DS1 weapon penalty:** Each DS1 on a weapon shifts the resulting attack quality one step down after resolution.

---

## Phase 10: Mitigate Damage

Mitigation reduces incoming damage. Apply Shields first, then Armor to remaining damage.

**Mitigation Cap:** The maximum mitigation applied per hit is determined by the variation of the weapon that fired the attack. See the Mitigation Cap table in the Ships section.

**Shields weakening:** If Shields reduce damage to exactly 0, they become Weakened next round (mitigation -1 for that round, then restored). If damage exceeds Shield mitigation, the excess carries through to Armor and then to items.

| Item | Mitigation | Regenerates |
|---|---|---|
| Weak Shields | 1 | Yes |
| Ablative Armor | 1 | No |
| Reinforced Plating | 1 | No (DS1 immune) |
| Armor | 2 | No |
| Shields (Uncommon) | 2 | Yes |
| Chromium Armor | 3 | No |
| Shields (Rare) | 3 | Yes |
| Chromium Armor and Shields | 5 | Partial (shield portion only) |
| Layered Defense System | 4 | Yes |

---

## Phase 11: Apply Damage

Randomly select an installed item and increase its Damage State by 1 per point of remaining damage. Each point targets a separately randomized item.

**Damage States:**

| State | Effect |
|---|---|
| DS0 | Undamaged. Full function. |
| DS1 | Item's primary value reduced by 1. |
| DS2 | Major degradation. -1 to Excess Power. |
| DS3 | Destroyed. Removed from ship. |

**Dead in the Water:** If all remaining installed items are DS2 or higher, the ship is Dead in the Water and is removed from the positional map. It may not attack or be attacked.

---

## Phase 12: Check Win Condition

**Match ends immediately when:**
- All three of one player's ships are Dead in the Water or destroyed.

**Round 12 limit:** If Round 12 completes without a winner, the player with more active ships wins. If equal, lower total Damage State across all ships wins. If still equal, Draw.

**Match Result:** Win: 3 points / Loss: 0 points / Draw: 1 point each

---

# OPEN ITEMS FOR FUTURE DESIGN PASSES

- **Repair Phase (Phase 5):** Deferred. Playtesting indicates repair would meaningfully affect endgame outcomes, particularly when a ship has DS2 engines reducing Excess Power. Will be designed when the repair rarity table is confirmed. Preliminary design exists in v0.6.
- **Dead in the Water condition:** Currently triggers when all items are DS2+. Under consideration: require at least one Engine to be DS2+ as a prerequisite, so a ship stripped of weapons but with functional engines is not automatically DITW.
- **Seeded reward full list:** Full prerequisite list deferred.
- **Black Market cards:** Unlock conditions and card effects to be designed. Per-edge color assignment on Black Market parts enables non-standard hybrid connections.
- **Animated combat presentation:** Round summary log designed to support this. Implementation deferred.
- **Additional pilots and ships:** Current roster covers 6 factions with 3 pilots and 3 ships each. Expansion planned.
- **Round limit validation:** 12 rounds confirmed viable through playtesting. Three games completed; two decisive results within 12 rounds, one draw at round limit.
- **Comfort modifier balance:** May need adjustment during further playtesting.
- **Connector variation per named item:** Which of the 5 variations each card copy represents is a physical card production decision deferred to the card layout pass.
- **Matchmaking preference:** Beyond same-Round pairing, matchmaking sophistication is a platform concern.

---

*Wing Leader Master Rules Document — v0.8*
*Designed in collaboration with Claude — June 2026*
