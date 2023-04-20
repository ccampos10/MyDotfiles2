from os import path
import subprocess

def output(men):
    men = str(men)
    subprocess.call(['/home/ccampos/.config/qtile/settings/out.sh',men])

