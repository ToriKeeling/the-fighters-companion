# <The Fighters Companion>

The Fighter's Companion's main function is to display an interactive checklist of specific weapon moves that the user can check if they are used in the choreography for their Skills Proficiency Test (SPT) or Skills Proficiency Renewal (SPR) with the Society of American Fight Directors. The app helps to further eliminate confusion and adds more accessibility to actor combatants. I was inspired to create this from my own experiences taking tests and renewals, desiring an easier experience.

A User can:

- sign up for an account
- log in
- see a list of all 8 certifiable weapons
- see more info about the weapon
- select a weapon
- see that weapons moves checklist
- check the boxes to the right of the move indicating that move is being used

Technologies include Ruby on Rails backend, React.js frontend

## Installation

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

## Roadmap

Ideas I plan on implementing in the future:

- the user can save their checklists to review later
- the user can view short videos of the specific moves
- Choreography Notation: User can create and title a Fight, add as many columns needed per fighter then can notate moves in each column
