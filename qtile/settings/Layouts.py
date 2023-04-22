from libqtile import layout
from .path import path_qtile
import json
#from libqtile.config import Match

f = open(path_qtile+'/settings/theme/default.json')
data = json.load(f)
f.close()

all_conf = {
    'border_focus': '#024273',
    'border_normal': '#042036',
    #'border_focus_stack': '#ff0000',
    #'border_normal_stack': '#ff0000',
    'border_width': 0,
    'margin': 4,
    'margin_on_single': None,
}

def loadConf(confOf):
    conf = {}
    confs = {
        'bsp': ['border_focus','border_normal','border_width','margin','margin_on_single'],
        'columns': ['border_focus','border_normal','border_width','margin','margin_on_single'],
        'floating': ['border_focus','border_normal','border_width'],
        'max': ['border_focus','border_normal','border_width','margin'],
    }
    for e in confs[confOf]:
        conf[e] = all_conf[e]
    return conf

layout_float = layout.Floating(**loadConf('floating'))

layouts = [
    layout.Bsp(**loadConf('bsp')),
    layout.Columns(**loadConf('columns')),
    layout.Max(**loadConf('max')),
]
