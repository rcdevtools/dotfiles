<!--
SPDX-FileCopyrightText: 2023-2024 Jason Pena <jasonpena@awkless.com>
SPDX-License-Identifier: MIT
-->

# Awklesses' Dotfiles

This repository contains all my personal dotfile configurations for various
pieces of software that I use. It is _not_ recommended to blindly copy and paste
any code you see here __without__ first understanding what it does and how.
Remember, this repository exists for my personal use only. This means that
there are settings and configurations in here that I find useful that most
others would probably find nonsensical. Enjoy, but proceed with caution!

## Installation

You will need Git and a stable internet connection. It is optional but
recommended to have a internet fetch content tool like wget or curl as you only
need to download the `dm` command script into your `$HOME/.local/bin`. The `dm`
command is the primary interface for working with this dotfile collection
project.

Thus, the first thing we need will be the `dm` command! Make sure that
`$HOME/.local/bin` exists with the `mkdir` command.

Getting the `dm` command via Git:

```
# git clone https://github.com/rcdevtools/dotfiles.git
# cd dotfiles
# cp .local/bin/dm ~/.local/bin/dm
```

Getting the `dm` command via wget:

```
# cd ~/.local/bin
# wget https://raw.githubusercontent.com/rcdevtools/dotfiles/main/.local/bin/dm
```

Getting the `dm` command via curl:

```
# cd ~/.local/bin
# curl -O https://raw.githubusercontent.com/rcdevtools/dotfiles/main/.local/bin/dm
```

You can also just use your internet browser and get the `dm` command from the
project's GitHub page at <https://github.com/rcdevtools/dotflies>. Regardless,
of the method you use from the above, just make sure you have a copy of the `dm`
command in your `$HOME/.local/bin` directory.

Now, make sure that you update your `$PATH` to include the `$HOME/.local/bin`
directory. If your `$PATH` is not setup properly, then just run:

```
# export PATH="$PATH:$HOME/.local/bin"
```

Finally, run `dm bootstrap -s all` to install the entire dotfile project into
your `$HOME`.

Keep in mind, if you have existing dotfiles that collide with the dotfiles
provided by this project, then your existing dotfiles will be backed up into
`$XDG_CACHE_HOME/dotfiles_backup` or `$HOME/.cache/dotfiles_backup` if you do
not have `$XDG_CACHE_HOME` defined. After your local untracked dotfiles have
been backed up, then the dotfiles of this project will be applied to your
`$HOME`.

Another note to remember, this project assumes that you already have the
programs that each of its dotfiles configure installed on your machine. There
are no checks for existing software when you use the `dm` command. See the
__Usage__ section of this document for more information about using the `dm`
command.

Enjoy!

## Usage

As you may have noticed from the installation section of this document, this
entire dotfile management project uses a singular command to maintain all
dotfiles. This command is called `dm` (dotfile manager). The `dm` command is a
very fancy wrapper over the `git`(1) command that treats your `$HOME` as the
main working tree where all changes are kept track of by a bare repository in
`$XDG_CONFIG_HOME/dotfiles` or `$HOME/.config/dotfiles` if you do not have
`$XDG_CONFIG_HOME` defined.

Run `dm help` to get a simple help message that describes all the possible
commands and their options for `dm`. The main feature of `dm` is its bootstrap
command. The bootstrap command of `dm` allows you to add or remove dotfile
configurations without changing the history of your `$HOME`. This is done using
the sparse checkout feature and/or submodule feature of `git`(1). Thus, if you
do not want certain dotfiles to be present in your `$HOME` you can use the
bootstrap command!

Example, remove the dotfiles for vim:

```
# dm bootstrap -r vim
```

Example, add the dotfiles for vim:

```
# dm bootstrap -s vim
```

Besides the bootstrap command, you can use the regular commands provided by
`git`(1) since `dm` is just a wrapper over it. Thus, create or modify dotfiles
in your `$HOME` and add, commit, and push them using `dm`.

## Contributing

Even though repository exists for my personal use, it is open to the following
forms of contribution:

1. Bug reports.
1. Feature requests.
1. Improvements to dotfile configurations.
1. Improvements to documentation.
1. Improvements to CI/CD workflow(s).

View the `CONTRIBUTING.md` file for more information about proper contribution
to this code base. Please do not use the issue tracker as and FAQ.

## License

This repository as a whole is distributed under the MIT license. A copy of this
license is always provided in the `LICENSE.txt` or the `LICENSES/MIT.txt` file.
I also decided to abide by the REUSE v3.0 specification
<https://reuse.software/spec/> to make it clear what portions of the project
belong to what license and who owns the copyright of said portions. This project
takes inspiration from other peoples dotfile configurations, and I felt it would
the the right thing to ensure that they recieve credit for their efforts rather
than blindly taking their code.
