# ECE 555 Team Repo

## Structure
- `ece555_team_lib/` : Shared Cadence library (schematic, symbol, layout)
- `hspice/` : HSPICE netlists and testbenches (.sp only)

## Setup (one time)
1. Clone with SSH:
   ```
   git clone git@github.com:hnhughes/ece555team.git
   ```
2. Add this line to the end of your `cds.lib` (in the folder where you launch Virtuoso):
   ```
   DEFINE ece555_team_lib /userspace/<your_username>/ece555team/ece555_team_lib
   ```
3. Restart Virtuoso. `ece555_team_lib` will show up in Library Manager.

## Adding a cell
1. Library Manager: right click your cell > Copy
2. To Library: `ece555_team_lib`
3. Check "Copy Hierarchical" and "Update Instances: Of New Copies Only"
4. If a "Copy Problems" window about `data.dm` appears, click OK (Don't Copy)
5. Push:
   ```
   git add ece555_team_lib
   git commit -m "Add <cell name>"
   git push
   ```

## Rules
- Always `git pull` before starting work
- Close the cellview in Virtuoso before pulling or pushing
- Each cell has one owner; do not edit someone else's cell without asking
- Do not commit simulation outputs (.tr0, .mt0, etc.) or `.cdslck` files
- Never put tokens or passwords in the repo
