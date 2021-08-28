/* See LICENSE file for copyright and license details. */

/* appearance */
static unsigned int gappih = 35; /* horiz inner gap between windows */
static unsigned int gappiv = 35; /* vert inner gap between windows */
static unsigned int gappoh =
    35; /* horiz outer gap between windows and screen edge */
static unsigned int gappov =
    35; /* vert outer gap between windows and screen edge */
static int smartgaps =
    0; /* 1 means no outer gap when there is only one window */
static const unsigned int borderpx = 2; /* border pixel of windows */
static const unsigned int snap = 0;     /* snap pixel */
static const int showbar = 0;           /* 0 means no bar */
static const int topbar = 1;            /* 0 means bottom bar */
static const char *fonts[] = {"Mx437 IBM MDA:pixelsize=16:antialias=false"};
static const char *colors[][3] = {
    /*               fg         bg         border   */
    [SchemeNorm] = {"#abb2bf", "#1e222a", "#5c6370"},
    [SchemeSel] = {"#abb2bf", "#1e222a", "#98c379"},
};

/* tagging */
static const char *tags[] = {"1", "2", "3", "4", "5", "6", "7", "8", "9"};

static const Rule rules[] = {
    /* xprop(1):
     *	WM_CLASS(STRING) = instance, class
     *	WM_NAME(STRING) = title
     */
    /* class      instance    title       tags mask     isfloating   monitor */
    {"Gimp", NULL, NULL, 0, 1, -1},
    {"Firefox", NULL, NULL, 1 << 8, 0, -1},
};

/* layout(s) */
static const float mfact = 0.55; /* factor of master area size [0.05..0.95] */
static const int nmaster = 1;    /* number of clients in master area */
static const int resizehints =
    0; /* 1 means respect size hints in tiled resizals */

static const Layout layouts[] = {
    /* symbol     arrange function */
    {"[]=", tile}, /* first entry is default */
    {"><>", NULL}, /* no layout function means floating behavior */
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY, TAG)                                                      \
  {MODKEY | ShiftMask, KEY, view, {.ui = 1 << TAG}},                           \
      {MODKEY, KEY, tag, {.ui = 1 << TAG}},

/* commands */
static char dmenumon[2] =
    "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *dmenucmd[] = {"dmenu_run", "-m", dmenumon, NULL};
static const char *termcmd[] = {"st", "fish", NULL};

static Key keys[] = {
    /* modifier                     key        function        argument */
    TAGKEYS(XK_1, 0) TAGKEYS(XK_2, 1) TAGKEYS(XK_3, 2) TAGKEYS(XK_4, 3)
        TAGKEYS(XK_5, 4) TAGKEYS(XK_6, 5) TAGKEYS(XK_7, 6) TAGKEYS(XK_8, 7)
            TAGKEYS(XK_9, 8){MODKEY | ShiftMask, XK_j, focusstack, {.i = +1}},
    {MODKEY, XK_Return, spawn, {.v = termcmd}},
    {MODKEY, XK_q, killclient, {0}},
    {MODKEY, XK_d, spawn, {.v = dmenucmd}},
    {MODKEY, XK_b, togglebar, {0}},
    {MODKEY, XK_w, incnmaster, {.i = +1}},
    {MODKEY, XK_e, incnmaster, {.i = -1}},
    {MODKEY, XK_r, resetmaster, {0}},
    {MODKEY, XK_t, setlayout, {.v = &layouts[0]}},
    {MODKEY, XK_space, setlayout, {0}},
    {MODKEY | ShiftMask, XK_space, togglefloating, {0}},
    {MODKEY | ShiftMask, XK_k, focusstack, {.i = -1}}, 
    {MODKEY|ControlMask, XK_j, setmfact, {.f = +0.01}},
    {MODKEY|ControlMask, XK_k, setmfact, {.f = -0.01}},
    {MODKEY, XK_j, pushdown, {0}},
    {MODKEY, XK_k, pushup, {0}},
    {MODKEY, XK_f, togglefullscr, {0}},
    {MODKEY | ShiftMask, XK_q, quit, {0}},
    {MODKEY, XK_minus, scratchpad_show, {0}},
    {MODKEY | ShiftMask, XK_minus, scratchpad_hide, {0}},
    {MODKEY, XK_equal, scratchpad_remove, {0}},
    {MODKEY, XK_h, incrgaps, {.i = +1}},
    {MODKEY, XK_l, incrgaps, {.i = -1}},
    {MODKEY, XK_g, togglegaps, {0}},
    {MODKEY | ShiftMask, XK_g, defaultgaps, {0}},
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle,
 * ClkClientWin, or ClkRootWin */
static Button buttons[] = {
    /* click                event mask      button          function argument
     */
    {ClkLtSymbol, 0, Button1, setlayout, {0}},
    {ClkLtSymbol, 0, Button3, setlayout, {.v = &layouts[2]}},
    {ClkWinTitle, 0, Button2, zoom, {0}},
    {ClkStatusText, 0, Button2, spawn, {.v = termcmd}},
    {ClkClientWin, MODKEY, Button1, movemouse, {0}},
    {ClkClientWin, MODKEY, Button2, togglefloating, {0}},
    {ClkClientWin, MODKEY, Button3, resizemouse, {0}},
    {ClkTagBar, 0, Button1, view, {0}},
    {ClkTagBar, 0, Button3, toggleview, {0}},
    {ClkTagBar, MODKEY, Button1, tag, {0}},
    {ClkTagBar, MODKEY, Button3, toggletag, {0}},
};
