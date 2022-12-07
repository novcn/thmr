## Load and organize system themes

```
thmr [ options ] <command>
  Load and organize system themes

  options:
  -h | --help             Show this help dialog
  -v | --verbose

  command:
  s | select <theme>   Select and load a theme. Passing no args will bring up a fzf selector.
  l | list             List available themes.
  r | reload           Reload the last selected theme.
  a | random           Reload the last selected theme.
  e | edit             Edit the theme.yml file using emacsclient -t

Author: Colin Gabrielson <colin.gabrielson@gmail.com>
```
