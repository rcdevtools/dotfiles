<!--
SPDX-FileCopyrightText: 2023-2024 Jason Pena <jasonpena@awkless.com>
SPDX-License-Identifier: MIT
-->

# Contributing

So you want to add something to this messy dotfile collection, eh? Great! Just
remember that the following should be seen as guidelines _not_ steadfast rules.

## Expected Forms of Contribution

Even though repository exists for my personal use, it is open to the following
forms of contribution:

1. Bug reports.
1. Feature requests.
1. Improvements to dotfile configurations.
1. Improvements to documentation.
1. Improvements to CI/CD workflow(s).

There are bug report, feature request, and pull/merge request templates for you
to use for your submissions to the issue tracker. Please do not use the issue
tracker as an FAQ.

## Coding Style

Since this repository houses different kinds of dotfiles that use different
formats and possibly programming languages, there isn't any real coding style to
really enforce here. Thus, just use these simple guidelines:

1. Avoid Bashims in shell code. Stick to POSIX standard shell script as much
   as possible. Use shellcheck to verify your work.
1. Pay attention to the style used by the file you are editing, e.g., if the
   file uses two spaces for indentation and snake case for naming stuff, then
   just use two spaces and snake case.
1. Focus on writing simple code that explains itself. If you need comments to
   explain what you wrote, then maybe consider simplifying your code.

Overall, I am not going to be very picky about code style given the different
dotfile configurations that exist in this repository. Thus, just focus on
readability and consistency.

## Licensing

This project uses the MIT license for everything. Some portions may be placed
under a different license and copyright information, which will be explicitly
stated with SPDX tags. If you decide to add any new files make sure you add the
appropriate SPDX tag information so that your additions are REUSE v3.0
compliant. See the specification for REUSE v3.0 for more information:
<https://reuse.software/spec/>.
