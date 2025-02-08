# Battleship Game

## Overview

This is a **Ruby-based Battleship game** that follows **Test-Driven Development (TDD)** using RSpec. 
The game consists of a **Board**, **Cell**, and **Ship** classes, implementing core gameplay mechanics such as placing ships, validating placements, and firing upon cells.

## Features

- **Board class**: Creates and manages a grid of cells.
- **Cell class**: Represents individual game spaces, tracks ship placement, and handles attacks.
- **Ship class**: Defines ships with health tracking and sinking mechanics.
- **Validations**: Ensures proper ship placement (horizontal/vertical, correct size, no diagonal placements).
- **Rendering system**: Displays board status with hits, misses, and ships.
- **RSpec testing**: Verifies functionality with unit tests.

## Installation & Usage

1. Clone the repository:
   ```sh
   git clone https://github.com/TDManning/Battleship.git
   cd Battleship
   ```
2. Install dependencies:
   ```sh
   bundle install
   ```
3. Run the game:
   ```sh
   ruby runner.rb
   ```

## Running Tests

To run the RSpec tests:

```sh
rspec
```

This will execute all tests in the `spec` directory to ensure the game logic functions correctly.

## File Structure

```
Battleship/
│-- lib/
│   │-- board.rb  # Board logic
│   │-- cell.rb   # Cell mechanics
│   │-- ship.rb   # Ship attributes
│-- spec/
│   │-- board_spec.rb  # Board tests
│   │-- cell_spec.rb   # Cell tests
│   │-- ship_spec.rb   # Ship tests
│-- runner.rb  # Game entry point
│-- README.md  # Project documentation
```

## Technologies Used

- **Ruby** (Game logic)
- **RSpec** (Testing framework)

## Contributing

Feel free to fork the repository, submit issues, or open pull requests to contribute to the project.

## Contributors

- **Renee Messersmith** - [GitHub](https://github.com/reneemes)
- **Terra Manning** - [GitHub](https://github.com/TDManning)

