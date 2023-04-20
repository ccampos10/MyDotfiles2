from libqtile.config import Group, Key
from libqtile.lazy import lazy
from .Keys import mod, keys, S

groups = [Group(i) for i in '123456789']

for i in groups:
    keys.extend(
        [
            Key([mod], i.name, lazy.group[i.name].toscreen()),
            Key([mod, S], i.name, lazy.window.togroup(i.name)),
        ]
    )
