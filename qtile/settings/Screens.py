from libqtile.config import Screen
from libqtile import widget, bar

screens = [Screen()]

#screens = [
#    Screen(
#        bottom=bar.Bar(
#            [
#                widget.CurrentLayout(),
#                widget.GroupBox(),
#                widget.Prompt(),
#                widget.WindowName(),
#                widget.Chord(
#                    chords_colors={
#                        "launch": ("#ff0000", "#ffffff")
#                    },
#                    name_transform=lambda name: name.upper(),
#                ),
#                widget.TextBox("default config", name="default"),
#                widget.QuickExit(),
#            ],
#            24,
#        ),
#    ),
#]
