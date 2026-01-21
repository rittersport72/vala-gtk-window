project('valaapp', 'vala', 'c')

gtkdeps = [
    dependency('glib-2.0'),
    dependency('gobject-2.0'),
    dependency('gtk4'),
]

sources = files('source/main.vala')

executable('gtk-window', sources, dependencies: gtkdeps)

