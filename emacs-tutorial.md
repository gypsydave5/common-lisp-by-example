# Emacs Bootstrap

First, don't be afraid. Feel free to use the mouse and the menu at the top of
the screen. You don't have to learn all the keyboard shortcuts on the first day.

Second, Emacs is huge. Much bigger than anything you've ever used. Don't try and
swallow it whole.

Take a look at this [one-page-hand-drawn-guide by Sacha Chua][sacha] which is a
good starting point.

### Reading Emacs Commands

Most commands in Emacs are written out as _chords_ of key presses. For instance
`C-x` is the chord formed by holding Control and pressing 'x'.

Other chords could include `M-x`. `M` means 'Meta' and is usually bound to the
'Alt' key on a keyboard (although this may vary with versions of Emacs and your
operating system).

You can hold down more than one modifier key: `M-C-x` is 'Meta and Control and x'
all at once.

Finally, chords are often written as sequences: `C-x C-c` is 'Control and x'
followed by 'Control and c'. Most people would type this while holding down the
Control key all the time. You could also have sequences without holding down
modifier keys: `C-x s` is 'Control and x' and then 's'

### The `M-x` Magic

The `M-x` chord opens up a minibuffer (like a command line) at the bottom of the
screen. Often commands written as (for instance) `M-x package-refresh-contents`
to show that they're run in the minibuffer.

It has `tab` complete enabled (usually). Instead of trying to remember
a command's keystrokes, you can just hit `M-x` and start exploring using the
autocomplete to see if you can find the command you're after.

### Help

Emacs has extensive help built in, easily accessed by typing `C-h` and then
something else. Hit `C-h ?` to see what you can ask for help on.

### Even more HELP!

- There is a built in tutorial: `M-x help-with-tutorial` or `C-h t`.

[sacha]: http://sachachua.com/blog/2013/05/how-to-learn-emacs-a-hand-drawn-one-pager-for-beginners/
