# Terminal Profile preferences
# http://askubuntu.com/questions/558280/changing-colour-of-text-and-background-of-terminal
#
# gconftool-2 --help-all
#
# Print all subdirectories and entries (with key/value pairs) under a directory, recursively:
# gconftool-2 "/apps/gnome-terminal/profiles" -R
 # /apps/gnome-terminal/profiles/Default:
  # cursor_shape = block
  # scrollback_lines = 100000
  # use_theme_colors = false
  # scrollback_unlimited = false
  # allow_bold = true
  # backspace_binding = ascii-del
  # scroll_background = true
  # encoding = current
  # update_records = true
  # use_custom_default_size = false
  # background_darkness = 0.96191000000000004
  # login_shell = false
  # background_image =
  # icon =
  # foreground_color = #970997099709
  # delete_binding = escape-sequence
  # scrollbar_position = right
  # use_system_font = false
  # use_custom_command = false
  # scroll_on_output = false
  # background_color = #30300A0A2424
  # word_chars = -A-Za-z0-9,./?%&#:_=+@~
  # visible_name = Default
  # title = Terminal
  # default_show_menubar = true
  # default_size_rows = 24
  # font = Ubuntu Mono 14
  # default_size_columns = 80
  # scroll_on_keystroke = true
  # silent_bell = false
  # exit_action = close
  # custom_command =
  # background_type = solid
  # bold_color = #000000000000
  # cursor_blink_mode = system
  # alternate_screen_scroll = true
  # bold_color_same_as_fg = true
  # title_mode = replace

# General
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/use_system_font" --type=bool "false"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/font" --type=string "Ubuntu Mono 14"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/allow_bold" --type=bool "true"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/cursor_shape" --type=string "block"
# Colors
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/foreground_color" --type=string "#970997099709"
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/background_color" --type=string "#30300A0A2424"
# Scrolling
gconftool-2 --set "/apps/gnome-terminal/profiles/Default/scrollback_lines" --type=int 100000
