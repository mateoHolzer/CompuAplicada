# pager
# Autogenerated from man page /usr/share/man/man1/pager.1.gz
complete -c pager -s '?' -l help --description 'This option displays a summary of the commands accepted by  less (the same as…'
complete -c pager -s a -l search-skip-screen --description 'By default, forward searches start at the top of the displayed screen and bac…'
complete -c pager -s A -l SEARCH-SKIP-SCREEN --description 'Causes all forward searches (not just non-repeated searches) to start just af…'
complete -c pager -o bn -l buffers --description 'Specifies the amount of buffer space  less will use for each file, in units o…'
complete -c pager -s B -l auto-buffers --description 'By default, when data is read from a pipe, buffers are allocated automaticall…'
complete -c pager -s c -l clear-screen --description 'Causes full screen repaints to be painted from the top line down.'
complete -c pager -s C -l CLEAR-SCREEN --description 'Same as -c, for compatibility with older versions of  less.'
complete -c pager -s d -l dumb --description 'The -d option suppresses the error message normally displayed if the terminal…'
complete -c pager -o Dxcolor -l color --description '[MS-DOS only] Sets the color of the text displayed.'
complete -c pager -s e -l quit-at-eof --description 'Causes  less to automatically exit the second time it reaches end-of-file.'
complete -c pager -s E -l QUIT-AT-EOF --description 'Causes  less to automatically exit the first time it reaches end-of-file.'
complete -c pager -s f -l force --description 'Forces non-regular files to be opened.'
complete -c pager -s F -l quit-if-one-screen --description 'Causes  less to automatically exit if the entire file can be displayed on the…'
complete -c pager -s g -l hilite-search --description 'Normally,  less will highlight ALL strings which match the last search comman…'
complete -c pager -s G -l HILITE-SEARCH --description 'The -G option suppresses all highlighting of strings found by search commands.'
complete -c pager -o hn -l max-back-scroll --description 'Specifies a maximum number of lines to scroll backward.'
complete -c pager -s i -l ignore-case --description 'Causes searches to ignore case; that is, uppercase and lowercase are consider…'
complete -c pager -s I -l IGNORE-CASE --description 'Like -i, but searches ignore case even if the pattern contains uppercase lett…'
complete -c pager -o jn -l jump-target --description 'Specifies a line on the screen where the "target" line is to be positioned.'
complete -c pager -s J -l status-column --description 'Displays a status column at the left edge of the screen.'
complete -c pager -o kfilename -l lesskey-file --description 'Causes  less to open and interpret the named file as a  lesskey (1) file.'
complete -c pager -s K -l quit-on-intr --description 'Causes  less to exit immediately (with status 2) when an interrupt character …'
complete -c pager -s L -l no-lessopen --description 'Ignore the LESSOPEN environment variable (see the INPUT PREPROCESSOR section …'
complete -c pager -s m -l long-prompt --description 'Causes  less to prompt verbosely (like more), with the percent into the file.'
complete -c pager -s M -l LONG-PROMPT --description 'Causes  less to prompt even more verbosely than  more.'
complete -c pager -s n -l line-numbers --description 'Suppresses line numbers.'
complete -c pager -s N -l LINE-NUMBERS --description 'Causes a line number to be displayed at the beginning of each line in the dis…'
complete -c pager -o ofilename -l log-file --description 'Causes  less to copy its input to the named file as it is being viewed.'
complete -c pager -o Ofilename -l LOG-FILE --description 'The -O option is like -o, but it will overwrite an existing file without aski…'
complete -c pager -o ppattern -l pattern --description 'The -p option on the command line is equivalent to specifying +/pattern; that…'
complete -c pager -o Pprompt -l prompt --description 'Provides a way to tailor the three prompt styles to your own preference.'
complete -c pager -s q -l quiet -l silent --description 'Causes moderately "quiet" operation: the terminal bell is not rung if an atte…'
complete -c pager -s Q -l QUIET -l SILENT --description 'Causes totally "quiet" operation: the terminal bell is never rung.'
complete -c pager -s r -l raw-control-chars --description 'Causes "raw" control characters to be displayed.'
complete -c pager -s R -l RAW-CONTROL-CHARS --description 'Like -r, but only ANSI "color" escape sequences are output in "raw" form.'
complete -c pager -s s -l squeeze-blank-lines --description 'Causes consecutive blank lines to be squeezed into a single blank line.'
complete -c pager -s S -l chop-long-lines --description 'Causes lines longer than the screen width to be chopped (truncated) rather th…'
complete -c pager -o ttag -l tag --description 'The -t option, followed immediately by a TAG, will edit the file containing t…'
complete -c pager -o Ttagsfile -l tag-file --description 'Specifies a tags file to be used instead of "tags".'
complete -c pager -s u -l underline-special --description 'Causes backspaces and carriage returns to be treated as printable characters;…'
complete -c pager -s U -l UNDERLINE-SPECIAL --description 'Causes backspaces, tabs and carriage returns to be treated as control charact…'
complete -c pager -s V -l version --description 'Displays the version number of  less.'
complete -c pager -s w -l hilite-unread --description 'Temporarily highlights the first "new" line after a forward movement of a ful…'
complete -c pager -s W -l HILITE-UNREAD --description 'Like -w, but temporarily highlights the first new line after any forward move…'
complete -c pager -o xn -l tabs --description 'Sets tab stops.'
complete -c pager -s X -l no-init --description 'Disables sending the termcap initialization and deinitialization strings to t…'
complete -c pager -o yn -l max-forw-scroll --description 'Specifies a maximum number of lines to scroll forward.'
complete -c pager -l window --description 'Changes the default scrolling window size to n lines.'
complete -c pager -s ~ -l tilde --description 'Normally lines after end of file are displayed as a single tilde (~).'
complete -c pager -s '#' -l shift --description 'Specifies the default number of positions to scroll horizontally in the RIGHT…'
complete -c pager -l follow-name --description 'Normally, if the input file is renamed while an F command is executing,  less…'
complete -c pager -l no-keypad --description 'Disables sending the keypad initialization and deinitialization strings to th…'
complete -c pager -l use-backslash --description 'This option changes the interpretations of options which follow this one.'
complete -c pager -s + --description 'Followed by one of the command line option letters this will reset the option…'
complete -c pager -l + --description 'Like the -+ command, but takes a long option name rather than a single option…'
complete -c pager -l qui -l qui --description 'Some long option names are in uppercase, such as --QUIT-AT-EOF, as distinct f…'
complete -c pager -l quotes --description 'Changes the filename quoting character.'
complete -c pager -s k --description 'use of lesskey files.'
complete -c pager -s t --description 'use of tags files   metacharacters in filenames, such as *   filename complet…'
