# Memórias da Viagem | Travel Memories

[![Play on itch.io](https://img.shields.io/badge/Play%20on-itch.io-FA5C5C?style=for-the-badge&logo=itch.io&logoColor=white)](https://lucasxmelo.itch.io/memorias-da-viagem)

A narrative memory game that combines mystery, storytelling, and competitive gameplay against an AI opponent.

Developed with **Phaser and TypeScript** for desktop and mobile web browsers.

## About the Game

Players experience an illustrated story and compete against a computer-controlled opponent by answering questions about narrative details.

Randomized story variations create different experiences across playthroughs, encouraging attention, memory, and replayability.

## Key Features

- 30 illustrated narrative cards
- 6 story chapters
- 90 narrative variations
- Five questions per match
- Tie-breaking system
- Adaptive AI opponent
- Automated text answer evaluation
- Score tracking and answer review
- Local progress persistence
- Responsive desktop and mobile interface

## Game Design

The project explores the combination of narrative engagement and competitive memory-based mechanics.

**Core design pillars:**

- Narrative immersion
- Memory and attention
- Replayability through procedural variation
- Accessible gameplay
- Competitive challenge
- Minimalist visual storytelling

## Technologies

| Technology | Purpose |
|---|---|
| Phaser | 2D game development |
| TypeScript | Game logic and systems |
| HTML5 | Browser-based interface |
| CSS | Responsive UI |
| Vite | Development and production builds |
| Node.js | Development environment |
| JSON | Narrative content management |
| GitHub | Version control |

## Project Architecture

- `src/main.ts` — Game scene, rendering, animations, audio and interface coordination.
- `src/rules.ts` — Core game rules, question selection, AI behavior and answer evaluation.
- `src/dados.json` — Narrative content and questions.
- `src/style.css` — Responsive user interface.
- `public/assets/` — Illustrations and sound effects.
- `tests/` — Automated game logic tests.

## Development Process

Originally developed in Godot using GDScript, the game was migrated to Phaser and TypeScript as part of a multi-engine game development portfolio.

The project was developed through an AI-assisted workflow, focusing on:

- Game design and mechanics
- Narrative design
- Rapid prototyping
- Iterative development
- UI/UX design
- Art direction
- Playtesting
- Cross-platform adaptation
- Game logic validation

## Running Locally

Requirements: Node.js 22 or newer.

1. Clone or download this repository.
2. Open the project folder in a code editor.
3. Run `npm install`.
4. Run `npm run dev`.
5. Open the local address displayed in the terminal.

Run `npm run build` to generate the production build.

Run `npm test` to execute the automated game logic tests.

## Project Status

- Version: 1.0.0
- Genre: Narrative / Memory / Quiz
- Platform: Web — Desktop and Mobile
- Game language: Brazilian Portuguese
- Status: Released

---

Independent game development project created as part of a professional Game Design portfolio.
