/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
/* -fn option overrides fonts[0]; default X11 font or font set */
// static const char *fonts[] = {
	// "Cascadia Mono PL:pixelsize=13:antialias=true:autohint=true"
// };

static const char *fonts[] = {
      "Mx437 IBM MDA:pixelsize=16:antialias=false"
};

static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#abb2bf", "#1e222a" },
	[SchemeSel] = { "#1e222a", "#98c379" },
	[SchemeSelHighlight] =  {"#e06c75", "#98c379" },
	[SchemeNormHighlight] = { "#d19a66", "#1e222a" },
	[SchemeOut] = { "#abb2bf", "#1e222a" },
};
/* -l option; if nonzero, dmenu uses vertical list with given number of lines */
static unsigned int lines      = 20;

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[] = " ";

static int border_width = 2;

static int centered = 1;
static int min_width = 400;
static int max_width = 401;
static unsigned int lineheight = 18;
static unsigned int min_lineheight = 18;
