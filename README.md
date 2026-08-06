# Star Wars: Wing Leader

A browser-based Star Wars autobattler: **Draft → Build → Combat** across a 3-round campaign.

Play it here: **https://deckofmanythings-a11y.github.io/wing-leader/**

- Draft ships, pilots, and parts from rarity-weighted personal decks
- Build loadouts on a connector/pip-matching board with power constraints
- Assign pilots (Familiarity matters), behavioral profiles, and target priorities
- Watch fully automated combat resolve round by round
- Win Black Market rewards between rounds

The entire game is a single self-contained HTML file ([index.html](index.html)) — vanilla JS, no frameworks, no build step.

## Design docs

Full rules and source data live in [docs/](docs/):

- [Master Rules v0.8](docs/Wing_Leader_Master_Rules_v08.md)
- [Player Rules v0.8](docs/Wing_Leader_Player_Rules_v08.md)
- [AI Rules v0.6](docs/Wing_Leader_AI_Rules_v06.md)
- Ship / pilot / part data (`.psv` pipe-separated files)

*Fan project. Star Wars and all related properties are trademarks of Lucasfilm Ltd. Not affiliated with or endorsed by Lucasfilm or Disney.*
