from libqtile import layout
from libqtile.config import Match

layout_conf = {
    #'border_focus': '#024273',
    #'border_normal': '#042036',
    #'border_focus_stack': '#ff0000',
    'border_width': 0,
    'border_radius': 10,
    'margin': 4,
}

layouts = [
    layout.Columns(**layout_conf),
    layout.Max(),
]
