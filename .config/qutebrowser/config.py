import dark.draw

c.content.user_stylesheets = ['~/.config/qutebrowser/css/github.css']

# Load existing settings made via :set
config.load_autoconfig(False)

dark.draw.blood(c, {
    'spacing': {
        'vertical': 7,
        'horizontal': 8
    }
})

# Fonts

#  c.fonts.completion.entry = "350 7.5pt Cascadia Mono PL"
#  c.fonts.completion.category = "350 7.5pt Cascadia Mono PL"
#  c.fonts.debug_console = "350 7.5pt Cascadia Mono PL"
#  c.fonts.downloads = "350 7.5pt Cascadia Mono PL"
#  c.fonts.hints = "350 7.5pt Cascadia Mono PL"
#  c.fonts.keyhint = "350 7.5pt Cascadia Mono PL"
#  c.fonts.messages.error = "350 7.5pt Cascadia Mono PL"
#  c.fonts.messages.info = "350 7.5pt Cascadia Mono PL"
#  c.fonts.messages.warning = "350 7.5pt Cascadia Mono PL"
#  c.fonts.prompts = "350 7.5pt Cascadia Mono PL"
#  c.fonts.statusbar = "350 7.5pt Cascadia Mono PL"
#  c.fonts.tabs.selected = "350 7.5pt Cascadia Mono PL"
#  c.fonts.tabs.unselected = "350 7.5pt Cascadia Mono PL"
#  c.fonts.web.family.fixed = "Cascadia Mono PL"
#  c.fonts.web.family.sans_serif = "Noto Sans"
#  c.fonts.web.family.serif = "Noto Sans"

c.fonts.completion.entry = "350 16px Mx437 IBM MDA"
c.fonts.completion.category = "350 16px Mx437 IBM MDA"
c.fonts.debug_console = "350 16px Mx437 IBM MDA"
c.fonts.downloads = "350 16px Mx437 IBM MDA"
c.fonts.hints = "350 16px Mx437 IBM MDA"
c.fonts.keyhint = "350 16px Mx437 IBM MDA"
c.fonts.messages.error = "350 16px Mx437 IBM MDA"
c.fonts.messages.info = "350 16px Mx437 IBM MDA"
c.fonts.messages.warning = "350 16px Mx437 IBM MDA"
c.fonts.prompts = "350 16px Mx437 IBM MDA"
c.fonts.statusbar = "350 16px Mx437 IBM MDA"
c.fonts.tabs.selected = "350 16px Mx437 IBM MDA"
c.fonts.tabs.unselected = "350 16px Mx437 IBM MDA"
c.fonts.web.family.fixed = "Mx437 IBM MDA"
c.fonts.web.family.sans_serif = "Noto Sans"
c.fonts.web.family.serif = "Noto Sans"
