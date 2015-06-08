# javap-vim

## Overview

This small plugin calls the [`javap`](http://docs.oracle.com/javase/8/docs/technotes/tools/windows/javap.html)
tool on `.class` files opened in Vim, which allows you to read the decompiled bytecode of a JVM class file
instead of a useless binary representation of it. It works for files on the disk as well as inside zip/jar archives.

## Prerequisites

You should have [Java](http://www.java.com) of any version installed, and `javap` must be accessible via your `PATH`.

## Installation

### [Pathogen](https://github.com/tpope/vim-pathogen)

    $ git clone https://github.com/udalov/javap-vim ~/.vim/bundle/

### [Vundle](https://github.com/gmarik/Vundle.vim)

Add `Plugin 'udalov/javap-vim'` to your `~/.vimrc` and run `PluginInstall`.

### Manual

1. `mkdir -p ~/.vim/plugin`
2. `cp plugin/javap.vim ~/.vim/plugin/javap.vim`
3. Restart Vim

##### Enjoy!
