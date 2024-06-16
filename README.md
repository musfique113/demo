# Mason Template Setup for this Project

## Step 1: Installing Mason CLI

### Prerequisites

To install [Mason CLI][mason_cli_link], ensure you have the [Dart SDK][dart_installation_link] installed on your machine.

### Installation via Pub.dev

We recommend installing `mason_cli` from [pub.dev][pub_dev_link] using the following command:

```bash
# Activate Mason CLI from pub.dev
dart pub global activate mason_cli
```

### Verification

After successful installation, you can verify your setup by running the `mason` command in your terminal. A successful installation will yield an output similar to the following:

```bash
🧱  mason • lay the foundation!
Usage: mason <command> [arguments]
Global options:
-h, --help       Print this usage information.
    --version    Print the current version.
Available commands: ...
```

## Step 2: Using Mason CLI

### Retrieve Mason Feature

To retrieve the Mason feature, run the following command:

```bash
mason get
```

### Create a Mason Feature

To create a new feature with Mason, use the command:

```bash
mason make feature
```

When prompted, enter the name of the feature you want to add. For example, to add a "product" feature, input:

```
Enter the feature name: 
product
```

### Confirmation

A successful addition of a new feature will generate output similar to this:

```bash
? What is your name? (Dash) product
✓ Generated 9 files. (0.1s)
  created lib\features\product\data\models\data_model.dart
  created lib\features\product\data\models\test_data_model.dart
  created lib\features\product\data\repositories\product_repository.dart
  created lib\features\product\domain\entities\data.dart
  created lib\features\product\domain\entities\test_data.dart
  created lib\features\product\presentation\state_holders\if_data_in_list.dart
  created lib\features\product\presentation\state_holders\product_controller.dart
  created lib\features\product\presentation\ui\screens\product_screen.dart
  created lib\features\product\presentation\ui\widgets\product_widgets.dart
```

### 🛑 How to remove brick directory's warning in Android Studio and VS Code

#### ℹ️ Android Studio

You can right-click on the directory that you need to hide and select:

```
Mark Directory as -> Excluded
```

If you want to include a directory back, find the path of your excluded directory and:

```
Right-click -> Mark Directory as -> Cancel Exclusion
```
![how-to-remove-error-warning-in-android-studio][demo_video]

#### ℹ️ VS-Code
Add this code:
```json
"dart.analysisExcludedFolders": [
    "bricks"
]
```
in `settings.json` in VS Code to ignore the `bricks` folder.

[dart_installation_link]: https://dart.dev/get-dart
[mason_cli_link]: https://github.com/felangel/mason/tree/master/packages/mason_cli
[pub_dev_link]: https://pub.dev
[demo_video]: https://github.com/musfique113/demo/assets/53111065/1e5276ad-5d21-4ee1-b50b-d5fea348f208