from libqtile.config import Key, KeyChord
from libqtile.lazy import lazy
from .output import output

mod = 'mod4'
C = 'control'
S = 'shift'
A = 'mod1'

@lazy.function
def toNextGroup(qtile, movVista=False):
    try:
        actGroup = qtile.screens[0].group.cmd_info()['name']
        qtile.groups[int(actGroup)-1].current_window.togroup(str( int(actGroup)%9 +1 ))
        #implementar esto
    except Exception as err:
        output(err)

@lazy.function
def toPrevGroup(qtile, movVista=False):
    try:
        actGroup = qtile.screens[0].group.cmd_info()['name']
        qtile.groups[int(actGroup)-1].current_window.togroup(str( (int(actGroup)-2)%9 +1 ))
    except Exception as err:
        output(err)

keys = [
    # ---------- Manejador de ventanas ----------
    # -------------- Modo normal ----------------

    #Moverse entre ventanas
    Key([mod], 'h', lazy.layout.left()),
    Key([mod], 'l', lazy.layout.right()),
    Key([mod], 'j', lazy.layout.down()),
    Key([mod], 'k', lazy.layout.up()),

    #Mover ventana
    #Key([mod, S], 'h', lazy.layout.shuffle_left()),
    #Key([mod, S], 'l', lazy.layout.shuffle_right()),
    #Key([mod, S], 'j', lazy.layout.shuffle_down()),
    #Key([mod, S], 'k', lazy.layout.shuffle_up()),

    #Moverse entre grupos
    Key([mod], 'Right', lazy.screen.next_group()),
    Key([mod], 'Left', lazy.screen.prev_group()),
    Key([mod], 'p', lazy.screen.toggle_group()),
    Key([A], 'Tab', lazy.screen.toggle_group()),
    #Key([mod, A], 'l', lazy.screen.next_group()),
    #Key([mod, A], 'h', lazy.screen.prev_group()),

    #Cambiar tamano de la ventana
    #Key([mod, C], 'h', lazy.layout.grow_left()),
    #Key([mod, C], 'l', lazy.layout.grow_right()),
    #Key([mod, C], 'j', lazy.layout.grow_down()),
    #Key([mod, C], 'k', lazy.layout.grow_up()),
    #Key([mod], 'n', lazy.layout.normalize()), #normalizar tamano de las ventanas

    #Key([mod, S], 'Return', lazy.layout.toggle_split()), #Cambiar entre stackear las ventanas de una columna
    Key([mod], 'Return', lazy.layout.toggle_split()), #Cambiar entre stackear las ventanas de una columna


    #Atajos para aplicacciones
    #Key([mod], 'Return', lazy.spawn('alacritty')),
    #Key([mod], 'b', lazy.spawn('firefox')),
    #Key([mod], 'e', lazy.spawn('alacritty -e ranger')),
    #Key([mod], 'm', lazy.spawn('rofi -show drun')),
    #Key([mod, S], 'm', lazy.spawn('rofi -show')),

    #Atajos para Qtile
    Key([mod], 'w', lazy.window.kill()),
    Key([mod, C], 'r', lazy.reload_config()),
    Key([mod, S], 'r', lazy.restart()),
    Key([mod, C], 'q', lazy.shutdown()),
    Key([mod], 'r', lazy.spawncmd()),
    Key([mod], 'Tab', lazy.next_layout()),

    # ---------------- Test -----------------
    #Key([mod, C], 'c', test()),

    # ------------- Modo Spawn --------------
    KeyChord([mod], 'o',[
        Key([], 'Return', lazy.spawn('alacritty')),
        Key([], 'b', lazy.spawn('firefox')),
        Key([], 'e', lazy.spawn('alacritty -e ranger')),
        Key([], 'm', lazy.spawn('rofi -show drun')),
        Key([S], 'm', lazy.spawn('rofi -show')),
    ],mode=False, name='Spawn'),

    # ----------- Modo ventanas -------------
    #KeyChord([mod], 'space',[
    #    #Mover ventana
    #    Key([], 'h', lazy.layout.shuffle_left()),
    #    Key([], 'l', lazy.layout.shuffle_right()),
    #    Key([], 'j', lazy.layout.shuffle_down()),
    #    Key([], 'k', lazy.layout.shuffle_up()),

    #    #Cambiar tamano de la ventana
    #    Key([C], 'h', lazy.layout.grow_left()),
    #    Key([C], 'l', lazy.layout.grow_right()),
    #    Key([C], 'j', lazy.layout.grow_down()),
    #    Key([C], 'k', lazy.layout.grow_up()),
    #    Key([], 'n', lazy.layout.normalize()), #normalizar tamano de las ventanas

    #],mode=True, name='ventanas'),

    ## ----------- Modo grupos ---------------
    #KeyChord([mod], 's',[
    #    #Moverse entre grupos
    #    Key([], 'Right', lazy.screen.next_group()),
    #    Key([], 'Left', lazy.screen.prev_group()),
    #    Key([S], 'l', toNextGroup()),
    #    Key([S], 'h', toPrevGroup()),
    #    Key([], 'l', lazy.screen.next_group()),
    #    Key([], 'h', lazy.screen.prev_group()),
    #],mode=True, name='a')
    KeyChord([mod], 'space',[
        #Moverse entre ventanas
        Key([], 'h', lazy.layout.left()),
        Key([], 'l', lazy.layout.right()),
        Key([], 'j', lazy.layout.down()),
        Key([], 'k', lazy.layout.up()),

        #Moverse entre grupos
        Key([], 'Right', lazy.screen.next_group()),
        Key([], 'Left', lazy.screen.prev_group()),
        Key([S,A], 'l', toNextGroup()), #mover la ventana de focus al siguiente grupo
        Key([S,A], 'h', toPrevGroup()), #mover la ventana de focus al anterior grupo
        Key([C,A], 'l', toNextGroup(True)), #mover la ventana de focus y la vista al situiente grupo
        Key([C,A], 'h', toPrevGroup(True)), #mover la ventana de focus y la vista al annterior grupo
        Key([A], 'l', lazy.screen.next_group()),
        Key([A], 'h', lazy.screen.prev_group()),

        #Mover ventana
        Key([S], 'h', lazy.layout.shuffle_left()),
        Key([S], 'l', lazy.layout.shuffle_right()),
        Key([S], 'j', lazy.layout.shuffle_down()),
        Key([S], 'k', lazy.layout.shuffle_up()),

        #Cambiar tamano de la ventana
        Key([C], 'h', lazy.layout.grow_left()),
        Key([C], 'l', lazy.layout.grow_right()),
        Key([C], 'j', lazy.layout.grow_down()),
        Key([C], 'k', lazy.layout.grow_up()),
        Key([], 'n', lazy.layout.normalize()), #normalizar tamano de las ventanas

    ],mode=True, name='Ventanas'),
]
