# Herbstluftwm scripts

This is a collection of scripts I've made, to simplify my life using
herbstluftwm (https://herbstluftwm.org).

## Scripts thus far

- free-tag.sh -- find the first free tag based on the output of ```herbstclient attr tags.by-name.```. Not very robust, and assumes tags are numeric
- select-window.sh -- uses dmenu prompt to select a window. Ideally this would be very cwm-like, but it isn't very user-friendly, yet.

## Example usage

Jump to a window, searched by name:

    herbstclient jumpto `select-window.sh`

Jump to next free tag:

    herbstclient use_index `free-tag.sh`

Unfortunately, you can't use these to easily move a selected (non-focused) window to, say,
the next free tag, as move\_index doesn't take a WINID. That requires something like:

    herbstclient chain .,. jumpto `select-window.sh` .,. move_index `free-tag.sh` .,. use_previous

(note, it may be desireable to add some lock commands in there too)

Another useful example

    herbstclient load `free-tag.sh` "`herbstclient dump`"

This moves the current layout (and associated windows) to the next free tag.

## Links

- http://thedarnedestthing.com/herbstluftwm
  - This (with 3 companion posts) is my favourite demonstration of the power of scripting herbst.
