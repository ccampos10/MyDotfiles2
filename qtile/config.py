from libqtile import hook

from settings.Keys import mod, keys
from settings.Groups import groups
from settings.Screens import screens
from settings.Layouts import layouts
from settings.path import path_qtile

from os import path
import subprocess

@hook.subscribe.startup_complete
def autostart():
    subprocess.call([path.join(path_qtile, 'autostart.sh')])


dgroups_key_binder = None
dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
auto_fullscreen = True
focus_on_window_activation = 'smart'
wmname = 'LG3D'
