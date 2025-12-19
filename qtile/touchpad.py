from libqtile.backend.wayland import InputConfig

wl_input_rules = {
    # Best: paste your exact touchpad identifier here from `get_inputs`
    # "1267:12377:ELAN... Touchpad": InputConfig(tap=True, natural_scroll=True),
    

    # Or apply to all touchpads:
    "type:touchpad": InputConfig(
        tap=True,                # tap-to-click
        natural_scroll=True,     # “natural” scrolling direction
        dwt=True,                # disable while typing (optional)
        tap_button_map="lrm",    # optional: 1-finger L, 2-finger R, 3-finger M
    ),
}
