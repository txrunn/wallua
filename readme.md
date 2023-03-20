# Wallua

Wallua is a Lua script that generates color schemes for Linux desktops based on the colors in a wallpaper image. It uses the k-means algorithm to generate a set of colors from the image, and then sets the system colors using the XRDB tool.

## Usage

To use Wallua, simply run the script with the path to the wallpaper image as the argument. For example:

```wallua /path/to/wallpaper.jpg```

This will generate a system wide color scheme based on the image and will set it using ```XRDB```.

## Requirements

Wallua requires the following software to be installed on your system: 

- Lua programming language (version 5.1 or higher)
- ImageMagick library (specifically, the `magick` Lua library)

You can install these dependencies on Debian-based systems:
```sudo apt-get install lua5.1 libmagickwand-dev```

### License

Wallua is released under the [MIT License](LICENSE).

## Credits

Wallua was created by @txrunn. It uses the following libraries:

- ImageMagick (https://ImageMagick.org/)
