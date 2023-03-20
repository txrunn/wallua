local magick = require("magick")

-- Get wallpaper file path from the command line arguments
local wallpaper_path = arg[1]

-- Load the wallpaper into magick
local wallpaper = magick.load_image(wallpaper_path)

-- Generate colors using k-means algorithm
local num_colors = 16
local colors = wallpaper:kmeans(num_colors)

-- Define the color scheme using generated colors
local color_scheme = {
  ["background"] = colors[1]:to_color(),
  ["foreground"] = colors[num_colors].to_color(),
  ["color0"] = colors[2]:to_color(),
  ["color1"] = colors[3]:to_color(),
  ["color2"] = colors[4]:to_color(),
  ["color3"] = colors[5]:to_color(),
  ["color4"] = colors[6]:to_color(),
  ["color5"] = colors[7]:to_color(),
  ["color6"] = colors[8]:to_color(),
  ["color7"] = colors[9]:to_color(),
  ["color8"] = colors[10]:to_color(),
  ["color9"] = colors[11]:to_color(),
  ["color10"] = colors[12]:to_color(),
  ["color11"] = colors[13]:to_color(),
  ["color12"] = colors[14]:to_color(),
  ["color13"] = colors[15]:to_color(),
  ["color14"] = colors[16]:to_color(),
}

-- Build the xrdb command to set the system colors
local command = "xrdb -merge"

for key, value in pairs(color_scheme) do
  command = command .. " -nocpp " .. "*." .. key .. ": " .. value
end

-- Run the command to set the system colors
os.execute(command)
