from libqtile import hook
import socket
import threading

HOST = 'localhost'
PORT = 1212

soc = socket.socket()
soc.bind((HOST,PORT))
soc.listen(5)

def escucha():
    global con
    con, addr = soc.accept()
        
    @hook.subscribe.enter_chord
    def changeChord(name):
        con.send(bytes(name, 'utf-8'))

socEscucha = threading.Thread(target=escucha)
socEscucha.start()

#@hook que ciera qtile
def endConexion():
    con.close()
