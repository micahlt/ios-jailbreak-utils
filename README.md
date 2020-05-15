# iOS Jailbreak Utilities
This repository contains helpful tools for jailbreaking your iOS device 📱
```
PLEASE NOTE: I am not responsible for any trouble you get into by misusing this information!  It is for educational purposes only.
```

## Checkra1n
Checkra1n is a bootloader vulnerablility that has already been exploited on iOS 12 and up devices.  You can download it [here](https://checkra.in) for Linux and Mac or follow the instructions below.  If you're looking to set up an SSH link to view photos, I've also built a bash script for that, [`checkra1n-photos.sh`](#), that you can also find in this repo.

### Using checkra1n-photos on Linux
1) Go to your home directory (`home/username`)

2) Clone this repo (`git clone https://github.com/micahlt/ios-jailbreak-utils`)

3) Go into the directory (`cd ios-jailbreak-utils`)

4) Make `checkra1n-photos` executable (`sudo chmod +x checkra1n-photos.sh`)

5) Move `checkra1n-photos` to your home directory (`mv checkra1n-photos.sh ../chphoto.sh`)

6) Run `chphoto.sh` (`./chphoto.sh`) and follow the prompts

### Installing checkra1n on Linux
Fire up a terminal and type the following commands: 
```bash
$ echo "deb https://assets.checkra.in/debian /" | sudo tee -a /etc/apt/sources.list
$ sudo apt-key adv --fetch-keys https://assets.checkra.in/debian/archive.key
$ sudo apt update
$ sudo apt-get install checkra1n
```

## The iOS filetree
For your convenience, I've gone ahead and made a `tree` reading of the root of a checkra1n-jailbroken iPad Pro 12.9in that you can find [here](#) (it's pretty big!).  Hopefully this will help you not have to look through hundreds of files to edit your device.

## Editing .PLIST files
`.plist` files are the core of a jailbroken iDevice.  They define settings and properties in either binary or XML.  Don't try to edit your device's binary `.plist` files with a text editor, as that's very dangerous and could brick your device.  Instead, if you're on Linux, install `plistutil`: 
```bash
$ sudo apt-get install libplist-utils
```
This program enables you to convert binary `.plist` files to XML `.plist` files and vice versa.
```bash
$ plistutil -i [file to convert] -o [filename to output]
```
I wouldn't even reccommend messing with the XML plists unless you know what you're doing and know how XML syntax works.  If you want an even easier way to edit `.plist` files, check out [js-PListor](http://tustin2121.github.io/jsPlistor/), an online editor for XML `.plist` files.  Remember, after editing an XML `.plist`, you'll need to use `plistutil` to convert it back to binary.
