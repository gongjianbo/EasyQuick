TEMPLATE = subdirs

SUBDIRS = \
    Controls \
    Styles \
    Imports

Controls.depends = Styles
Imports.depends = Styles Controls
