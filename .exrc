" SDPX-FileCopyrightText: 2023 Jason Pena <jasonpena@awkless.com>
" SPDX-LicenseIdentifier: MIT
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" General Settings
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
set showmode
set showmatch
set ignorecase
set number
set autoindent
set magic
set wrapscan
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Key Mappings
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-
" Use ,[.] instead of #[.] when calling macros tied to function keys.  This
" configuration uses function keys [A-Za-z] as these are commonly undefined on
" most terminals.  If any of the following macros do not work, then you instead
" need to hit the corresponding function key tied to the macro instead of ,[.]
" or #[.].
map , #
" ------------------------------------------------------------------------------
" Alternate method of entering command mode, besides ESC or ^[.
map! jj 
" ------------------------------------------------------------------------------
" Quickly save file.
map #w :w
" ------------------------------------------------------------------------------
" Save current file, and move to next file in arglist.
map #n :w
" ------------------------------------------------------------------------------
" Go to top of file.
map g 1G
" ------------------------------------------------------------------------------
" Move through args.
map #al :w
map #ah :w
" ------------------------------------------------------------------------------
" Use TAB as a safe method to toggle features in the editor.
map 	 #Z
" TAB n  Toggle line numbering.
map @NU@ :set nu
map @NONU@ :set nonu
map #Zn @NONU@
" TAB l  Toggle list.
map @LI@ :set list
map @NOLI@ :set nolist
map #Zl @LI@
" Tab i  Toggle ignorecase.
map @IC@ :set ic
map @NOIC@ :set noic
map #Zi @NOIC@
" TAB h  Turn of search highlight.
map @NOHL@ :nohl
map #Zh @NOHL@
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" | Abbreviations                                                             |
" =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
" To lazy to type this...
ab spdxcr  SPDX-FileCopyrightText:
ab spdxli  SPDX-License-Identifier:
ab eawk    jasonpena@awkless.com
ab eclg    jpalex@nmsu.edu
ab ecs     jpena@cs.nmsu.edu
ab gpl2o   GPL-2.0-only
ab gpl2l   GPL-2.0-or-later
ab gpl3o   GPL-3.0-only
ab gpl3l   GPL-3.0-or-later
ab lgpl2o  LGPL-2.0-only
ab lgpl2l  LGPL-2.0-or-later
ab lgpl3o  LGPL-3.0-only
ab lgpl3l  LGPL-3.0-or-later
ab ccbs4   CC-BY-SA-4.0
ab cc01    CC0-1.0
ab jpawk   Jason Pena <jasonpena@awkless.com>
ab signoff Signed-off-by:
" Yes, I am bad at spelling...
ab Arithemtic  Arithmetic
ab Deos        Does
ab Esspecially Especially
ab Februrary   February
ab Feburary    February
ab Maintanance Maintenance
ab Psudo       Psuedo
ab Similiar    Similar
ab Wendsday    Wednesday
ab Wensday     Wednesday
ab arithemtic  arithmetic
ab deos        does
ab esspecially especially
ab feburary    February
ab maintanance maintenance
ab psudo       psuedo
ab similiar    similar
ab wendsday    wednesday