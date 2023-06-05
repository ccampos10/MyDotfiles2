from libqtile import hook

from settings.Keys import mod, keys
from settings.Groups import groups
from settings.Screens import screens
from settings.Layouts import layouts, layout_float
from settings.path import path_qtile, path_img
#from settings.output import output

from os import path
import subprocess

@hook.subscribe.startup_complete
def autostart():
    subprocess.call([path.join(path_qtile, 'autostart.sh'),path_img])

@hook.subscribe.enter_chord
def changeChord(name):
    subprocess.call([path.join(path_qtile, 'changeChord.sh'),name])

@hook.subscribe.leave_chord
def endChord():
    subprocess.call([path.join(path_qtile, 'changeChord.sh'),'Normal'])

dgroups_key_binder = None
dgroups_app_rules = []
follow_mouse_focus = True
bring_front_click = 'floating_only'
cursor_warp = True
auto_fullscreen = True
floating_layout = layout_float
focus_on_window_activation = 'smart'
wmname = 'LG3D'
