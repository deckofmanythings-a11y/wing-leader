# WING LEADER
## AI Rules — v0.6

This document defines all decision logic for AI opponents in Wing Leader. For all mechanical rules refer to the Wing Leader Master Rules document. This document covers only the behavioral layer: how the AI makes decisions during Draft, Build, and Combat.

---

# AI OPPONENT OVERVIEW

Each game contains AI opponents. Each AI manages a full squadron of 3 ships, 3 pilots, and 18 parts using the same rules as the human player, including private personal decks. There is no shared draft pool.

AI behavior is governed by:
1. Draft priority logic (ships, pilots, parts)
2. Build archetype (rolled once per AI per game, persists across all Loops)
3. Combat profile and targeting assignments (determined by archetype during Build)

---

# DRAFT PHASE

## Ship Selection

When offered three ships, select using this priority order:

1. Highest rarity (Very Rare > Rare > Uncommon > Common)
2. Largest size if rarity is tied (Large > Medium > Small)
3. Random if rarity and size are both tied

Apply independently for each of the three ship draft picks.

## Pilot Selection

Calculate the total Familiarity score for each offered pilot across all currently drafted ships using the Familiarity Table in the Master Rules. Select the pilot with the highest total.

**Tiebreaker:** Random if totals are identical.

**Edge case — no ships drafted yet:** Select by pilot rarity (Very Rare > Rare > Uncommon > Common). Switch to Familiarity logic once at least one ship is drafted.

## Parts Selection

Parts drafting proceeds through four phases in order. Always resolve the earliest incomplete phase before advancing. Ships are ranked by the same priority as ship drafting (highest rarity first, then largest size).

### Phase 1: Baseline Coverage

Ensure the highest priority ship has at minimum:
- One Weapon
- One Engine
- One Shield or Armor item (if the ship has a Yellow slot)
- One System (if the ship has a Purple slot)

Until baseline coverage is met for the highest priority ship, all picks prioritize filling these gaps. Select the highest rarity item that fills the current gap category.

### Phase 2: Quality Improvement

Once baseline coverage is met for the highest priority ship, select the highest rarity item from whatever categories are offered, prioritizing that ship's connector slots and power capacity.

### Phase 3: Spread to Remaining Ships

Once the highest priority ship has one of each compatible item category, begin Phase 1 then Phase 2 for the second priority ship, then the third.

### Phase 4: Duplication

Once all three ships have baseline coverage, add additional items following ship priority order.

### Power Awareness

Track each ship's engine capacity throughout drafting. Do not draft powered items for a ship with no remaining powered slots unless an engine upgrade is also drafted in the same or a future pick. Queue incompatible items as unassigned and resolve during Build via Shop trades if necessary.

### Connector Variation Selection

When multiple connector variations of the same item are available, always select the variation with the highest facing-side connector count that is compatible with the ship's edge connector count. This maximizes connection options for downstream parts.

## Upgrade Draft Behavior (Loops 2 and 3)

**Ships:** Replace only if the offered ship is higher rarity. If rarity is equal, replace only if the offered ship is larger. Never downgrade.

**Pilots:** Replace only if the offered pilot has a higher total Familiarity score across the current squadron than the pilot currently in that slot.

**Parts:** Replace only if the offered part is higher rarity than the part currently filling that functional role on the target ship. Power-inclined AI upgrades the highest priority ship first. Balance-inclined AI upgrades whichever ship has the lowest average part rarity first.

**Seeded Rewards:** Always accept a seeded reward if it fits within the ship's power capacity. If it does not fit, trade the lowest rarity part on that ship to the Shop to make room.

---

# BUILD PHASE

## Step 1: Determine Archetype

Roll once per AI opponent at the start of Loop 1 Build Phase. Fixed for the entire game. Not revealed to the human player.

- **50%: Power-inclined**
- **50%: Balance-inclined**

## Step 2: Assign Pilots to Ships

Rank all three drafted ships by priority (highest rarity first, then largest size).

For each ship slot in priority order, assign the pilot with the highest individual Familiarity score for that specific ship from among the remaining unassigned pilots.

**Tiebreaker:** If two pilots have identical Familiarity to a ship, assign the higher rarity pilot to the higher priority ship.

## Step 3: Distribute Parts

### Power-Inclined

1. Rank all 18 parts by rarity, highest first. Within the same rarity, rank by compatibility with the highest priority ship.
2. Fill the highest priority ship to its maximum engine capacity with the highest rarity compatible parts first. If high-rarity parts cannot be powered, check whether a higher-rarity engine exists in the remaining pool and add it first.
3. Repeat for the second priority ship with remaining parts.
4. Assign all remaining parts to the third ship. Fill gaps with Shop trades. The third ship may end up entirely Shop-equipped.
5. Add Linkage tiles as needed.

### Balance-Inclined

1. Sort all 18 parts into three roughly equal groups by total rarity value. No group should average more than one rarity tier above any other.
2. Assign the highest rarity group to the highest priority ship, middle to second, lowest to third.
3. Verify baseline coverage within each group. Trade the lowest rarity item in any group to the Shop if a baseline category is missing.
4. Fill remaining connector slots with the group's parts, highest rarity first.
5. Balance check: if any ship has more than two additional powered items than another, move the lowest rarity excess item to the poorer ship if compatible. Repeat until the gap is two or fewer.
6. Add Linkage tiles as needed.

## Step 4: Set Behavioral Profiles and Target Priorities

### Power-Inclined AI

| Ship Priority | Profile | Target Priority |
|---|---|---|
| Highest (elite ship) | Aggressor | Highest Threat |
| Second | Predator — targets enemy's highest priority ship | Designated Target |
| Third (sacrificial) | Survivor | Lowest Health |

To identify the enemy's highest priority ship for the Predator's Designated Target: rank the opponent's ships by rarity then size. Target the top-ranked enemy ship.

### Balance-Inclined AI

| Ship Priority | Profile | Target Priority |
|---|---|---|
| Highest | Opportunist | Highest Threat |
| Second | Escort — wards the highest priority ship | Best Position |
| Third | Opportunist | Lowest Health |

---

# COMBAT PHASE

During combat the AI follows the automated maneuver selection logic defined in the Master Rules, Combat Phase 7. The AI applies its assigned Behavioral Profile and Target Priority without deviation unless a fallback condition is triggered.

## Fallback Conditions

| Profile | Trigger | Fallback |
|---|---|---|
| Escort | Ward ship is destroyed | Opportunist |
| Predator | Designated target is destroyed | Opportunist, Best Position |
| Survivor | Last active friendly ship | Opportunist |

## Targeting Tiebreaker

When a ship's Target Priority produces a tie across multiple valid targets, select the target the current ship has the highest Attack Aspect against. If still tied, select randomly.

## Profile Constraints

- An Escort ship checks its own Tailed status before intercepting a threat to its ward. If currently Tailed, execute an escape maneuver this round and engage the threat next round.
- A Predator ship that is currently Tailed selects the minimum Excess Power escape maneuver and re-engages next round.
- A Tailed ship of any profile may not initiate a new Tailing relationship. Maneuver selection is restricted to the Tailed column.
- If the highest-priority maneuver for a profile would create a circular positional loop, select the next highest available maneuver for the current positional state instead.

## Repair Priority

1. Repair the item with the highest current Damage State (closest to DS3).
2. Tiebreak: Engines first, then Shields, then Weapons, then Systems.
3. When choosing between Very Rare repair options, prefer full repair of one critical item over partial repair of three unless all three are simultaneously at DS2.

---

# NOTES AND OPEN ITEMS

- **AI archetype visibility:** Not revealed during gameplay. May be optionally shown in post-match summary.
- **Upgrade draft conservatism:** Replace-only-on-rarity-improvement may produce stagnant squads in Loops 2 and 3. Consider allowing same-rarity replacement if size improves. Deferred to playtesting.
- **Sacrificial third ship behavior:** Power-inclined third ship using Survivor and Lowest Health may disengage too early. Consider a one-round Aggressor override when a friendly ship is destroyed. Deferred to playtesting.
- **Matchmaking:** AI opponents are matched by same-Loop logic. No further matchmaking preference is defined for the prototype.
- **Card catalog:** New weapon types (Heavy Cannon, Twin-Linked Cannon, Ion Cannon), armor types (Reinforced Plating, Layered Defense System), engine variants (Standard Engine Uncommon with passive +1 Excess Power), and rarity-shifted systems (Electronic Countermeasures, Overdrive Injector, Reinforced Deflectors now Very Rare) are defined in Wing Leader Card Catalog v0.3. AI draft priority logic applies identically to all new items by rarity and category.
- **New weapon special cases for AI combat:** Ion Cannon Excess Power drain on target should be tracked by the combat engine and factored into the AI's maneuver selection the following round. Twin-Linked Cannon's automatic double fire does not count as Shoot Twice from a system and cannot be further doubled by Advanced Targeting Computer.

---

*Wing Leader AI Rules — v0.6*
*June 2026*
