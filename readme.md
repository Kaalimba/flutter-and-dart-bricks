# Flutter and Dart Bricks

A collection of Mason bricks for bootstrapping a Flutter/dart project.

## Bricks

- `simple_bloc_project`: Scaffolds a Flutter app with flavors (development, staging, production), localization, routing, core utilities, common widgets, and a clean structure.
- `simple_bloc_feature`: Scaffolds a feature module with Cubit, Repository, Page, and Widgets.

Repository: https://github.com/Kaalimba/flutter-and-dart-bricks

## Prerequisites

- Flutter SDK and Dart SDK installed on macOS (via FVM recommended)
If you are using FVM you should run the following commands:
    ```bash
    fvm use stable
    ```
- Mason CLI:
  ```bash
  dart pub global activate mason_cli
  mason --version
  ```
- Ensure ~/.pub-cache/bin is on your PATH.

## Usage
Take a look on https://docs.brickhub.dev/mason-make to learn how to use the `mason init`, `mason get` and `mason make` commands.
These bricks are meant to be used in combination with very_good_core brick:
```bash
mason add very_good_core
mason make very_good_core
```

Then you can add the other bricks from this repo, for example:
```bash
mason add simple_bloc_project
mason make simple_bloc_project
```
```bash
mason add simple_bloc_feature 
mason make simple_bloc_feature
```
