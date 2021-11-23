# Cat App

---

## Where do I start?

### Step 1: Install Flutter

Enter the Flutter SDK download [link](https://flutter.dev/docs/get-started/install) and select one of the options according to which operating system you are going to install it on.

### Step 2: Get the packages

After cloning the project, you must execute the following commands within its directory, either in the command console corresponding to your operating system:

    flutter pub get

This command will download all the dependencies that are added to the ***pubspec.yaml*** file (which you will not have installed when you clone the project).

### Step 3: Run project on a device

Run project in a virtual android device follow the following [guide](https://developer.android.com/studio/run/managing-avds), in case your operating system is MacOS you should follow this guide and when the device is turned on press the f5 key to start debugging on the device.

---

## What to do when I already have the project on my PC after a few days?

If you are going to modify the project in the days after cloning it (also as a good practice) you must follow this part of the guide.

### Step 1: Check for updates

First of all, you should periodically check if there are any updates (With your code editor closed) for the Flutter SDK by executing the following command:

    flutter upgrade

### Step 2: Clean up the existing build

Run this command to clear the cache and build the application.

    flutter clean
    
### Step 3: Update packages

Run this command to update your downloaded packages corresponding to ***pubspec.yaml*** package.

    flutter pub upgrade
    
After this you can run the Application normally keeping your packages updated.

---

## Download links and useful information

| Features              | Links                   |
| -----------------     |:----------------------- |
| Installation guide    | [:link:][IG]            |
| Virtual Device guide  | [:link:][ADV]

[IG]:https://flutter.dev/docs/get-started/install
[ADV]:https://developer.android.com/studio/run/managing-avds
