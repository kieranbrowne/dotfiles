#!/usr/bin/env python

from gimpfu import *
import pyautogui as gui


def my_script(image,drawable,text_value,int_value):
    # pdb.gimp_message( "Hello from python")
    gimp.set_foreground(50,0,150)
    pdb.gimp_context_set_brush('Oils 01')

    gui.typewrite('p') # open brush
    gui.moveTo(500,500)
    gui.dragTo(550,550,.1)
    return

register(
        "my_first_script",
        "Make Palettes",
        "This script makes palettes",
        "Kieran Browne",
        "-",
        "Nov 2015",
        "<Image>/MyScripts/Knife!",
        "*",
        [
            (PF_STRING, 'some_text', 'Some text input for our plugin', 'Write something'),
            (PF_INT, 'some_integer', 'Some number input for our plugin', 2010)
        ],
        [],
        my_script,
        )

main()
