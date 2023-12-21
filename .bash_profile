#!/bin/bash
# SPDX-FileCopyrightText: 2023-2024 Jason Pena <jasonpena@awkless.com>
# SPDX-License-Identifier: MIT

# Load in default profile...
if [ -f "$HOME/.profile" ]; then
  # shellcheck source=/dev/null
  . "$HOME/.profile"
else
  echo "dm: .profile not found, environment maybe unstable" 2>&1
fi

# Load in .bashrc...
if [ -f "$HOME/.bashrc" ]; then
  # shellcheck source=/dev/null
  . "$HOME/.bashrc"
else
  echo "dm: .bashrc not found, environment maybe unstable" 2>&1
fi
