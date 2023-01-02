from libqtile.config import Key
from libqtile.lazy import lazy

mod = 'mod4'

keys = [Key(key[0],key[1],*key[2:]) for key in [
    # ---------- Manejador de ventanas ----------

    #Moverse entre ventanas
    ([mod], 'h', lazy.layout.left()),
    ([mod], 'l', lazy.layout.right()),
    ([mod], 'j', lazy.layout.down()),
    ([mod], 'k', lazy.layout.up()),
    ([mod], 'space', lazy.layout.next()),

    #Mover ventana
    ([mod, 'shift'], 'h', lazy.layout.shuffle_left()),
    ([mod, 'shift'], 'l', lazy.layout.shuffle_right()),
    ([mod, 'shift'], 'j', lazy.layout.shuffle_down()),
    ([mod, 'shift'], 'k', lazy.layout.shuffle_up()),

    #Moverse entre grupos
    ([mod], 'Right', lazy.screen.next_group()),
    ([mod], 'Left', lazy.screen.prev_group()),
    ([mod], 'p', lazy.screen.toggle_group()),

    #Cambiar tamano de la ventana
    ([mod, 'control'], 'h', lazy.layout.grow_left()),
    ([mod, 'control'], 'l', lazy.layout.grow_right()),
    ([mod, 'control'], 'j', lazy.layout.grow_down()),
    ([mod, 'control'], 'k', lazy.layout.grow_up()),
    ([mod], 'n', lazy.layout.normalize()), #normalizar tamano de las ventanas

    ([mod, 'shift'], 'Return', lazy.layout.toggle_split()), #Cambiar entre stackear las ventanas de una columna

    #Atajos para aplicacciones
    ([mod], 'Return', lazy.spawn('alacritty')),
    ([mod], 'b', lazy.spawn('firefox')),
    ([mod], 'e', lazy.spawn('alacritty -e ranger')),
    ([mod], 'm', lazy.spawn('rofi -show drun')),
    ([mod, 'shift'], 'm', lazy.spawn('rofi -show')),

    #Atajos para Qtile
    ([mod], 'w', lazy.window.kill()),
    ([mod, 'control'], 'r', lazy.reload_config()),
    ([mod, 'shift'], 'r', lazy.restart()),
    ([mod, 'control'], 'q', lazy.shutdown()),
    ([mod], 'r', lazy.spawncmd()),
    ([mod], 'Tab', lazy.next_layout()),
]]
